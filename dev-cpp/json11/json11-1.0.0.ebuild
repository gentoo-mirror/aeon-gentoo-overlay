# Copyright 2019 Robin Degen
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="A tiny JSON library for C++11"
HOMEPAGE="https://github.com/dropbox/json11"
SRC_URI="https://dl.bintray.com/aeon-engine/aeon_dependencies/json11/src/json11-1.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	"${FILESDIR}"/${P}-fix-multiarch-install.patch
)

src_configure() {
	CMAKE_BUILD_TYPE="Release"
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}

