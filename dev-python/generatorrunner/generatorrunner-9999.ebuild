# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils git-2

DESCRIPTION="A tool that controls bindings generation"
HOMEPAGE="http://www.pyside.org/"
EGIT_REPO_URI="git://gitorious.org/pyside/${PN}"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""
IUSE="debug"

DEPEND="~dev-python/apiextractor-${PV}
	>=x11-libs/qt-core-4.5.0"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

DOCS=(AUTHORS)

src_prepare() {
	sed -e 's/-2.6//' -i CMakeLists.txt || die "sed failed"
}
