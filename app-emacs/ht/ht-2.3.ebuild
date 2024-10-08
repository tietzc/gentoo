# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

DESCRIPTION="The missing hash table library for Emacs"
HOMEPAGE="https://github.com/Wilfred/ht.el"

if [[ "${PV}" == *9999* ]] ; then
	inherit git-r3

	EGIT_REPO_URI="https://github.com/Wilfred/ht.el.git"
else
	SRC_URI="https://github.com/Wilfred/ht.el/archive/${PV}.tar.gz
		-> ${P}.tar.gz"
	S="${WORKDIR}/ht.el-${PV}"

	KEYWORDS="amd64 ~arm64"
fi

LICENSE="GPL-3+"
SLOT="0"

RDEPEND="
	>=app-emacs/dash-2.12.0
"
BDEPEND="
	${RDEPEND}
	test? (
		app-emacs/f
	)
"

DOCS=( CHANGELOG.md README.md )
SITEFILE="50${PN}-gentoo.el"

elisp-enable-tests ert-runner .
