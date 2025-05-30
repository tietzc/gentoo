# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell bindings to setlocale"
HOMEPAGE="https://gitlab.com/Kritzefitz/haskell-setlocale"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.6.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

CABAL_CHDEPS=(
	'base >=4.6 && <4.14' 'base >=4.6'
)
