# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{3_3,3_4} )

inherit distutils-r1

MY_PN="nbviewer"

DESCRIPTION="Nbconvert as a webservice (rendering ipynb to static HTML)"
HOMEPAGE="http://jupyter.org"

if [ ${PV} == "9999" ] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/jupyter/${MY_PN}.git git://github.com/jupyter/${MY_PN}.git"
else
	SRC_URI=""
	KEYWORDS="~amd64"
fi

LICENSE="BSD-4"
SLOT="0"

RDEPEND="
	>=dev-python/ipython-3.0.0[notebook,${PYTHON_USEDEP}]
	>=www-servers/tornado-3.1.1[${PYTHON_USEDEP}]
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/pylibmc[${PYTHON_USEDEP}]
	dev-python/newrelic[${PYTHON_USEDEP}]
	dev-python/markdown[${PYTHON_USEDEP}]
	dev-python/elasticsearch-py[${PYTHON_USEDEP}]
	"
DEPEND="${RDEPEND}"
