# Copyright 2019 Robin Degen
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="A microbenchmark support library by Google"
HOMEPAGE="https://github.com/google/benchmark"
SRC_URI="https://dl.bintray.com/aeon-engine/aeon_dependencies/google-benchmark/src/google-benchmark-1.4.1.tar.gz"

LICENSE="Apache-2.0"
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
	local mycmakeargs=(
		"-DBENCHMARK_ENABLE_TESTING=OFF"
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}

