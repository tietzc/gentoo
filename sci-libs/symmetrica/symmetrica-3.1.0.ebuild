# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="C library for representation theory, combinatorics, and more"
HOMEPAGE="https://gitlab.com/sagemath/symmetrica"
SRC_URI="https://gitlab.com/-/project/16178617/uploads/b24da56820651687cafb611809a4b1b0/${P}.tar.xz"

LICENSE="ISC"
SLOT="0/3"
KEYWORDS="amd64 ~riscv"
IUSE="doc"

DOCS=( README.md )

src_configure() {
	econf $(use_enable doc)
}

src_install() {
	default
	find "${ED}" -name '*.la' -delete || die
}
