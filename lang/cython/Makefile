# $OpenBSD: Makefile,v 1.42 2020/01/09 11:16:50 pirofti Exp $

COMMENT =		optimising static compiler for Python and Cython

MODPY_EGG_VERSION =	0.29.14
DISTNAME =		Cython-${MODPY_EGG_VERSION}
PKGNAME =		py-cython-${MODPY_EGG_VERSION}
CATEGORIES =		lang

HOMEPAGE =		https://cython.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# Apache 2
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS =		devel/py-setuptools_git${MODPY_FLAVOR}
TEST_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

PORTHOME =		${WRKDIR}

TEST_TARGET =		test

MAKE_ENV +=		PYTHON=${MODPY_BIN}

do-test:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} TESTOPTS=-j${MAKE_JOBS} \
		${MAKE_PROGRAM} ${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

post-install:
.for i in cygdb cython cythonize
	mv ${PREFIX}/bin/$i{,${MODPY_BIN_SUFFIX}}
.endfor

.include <bsd.port.mk>
