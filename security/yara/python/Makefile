# $OpenBSD: Makefile,v 1.8 2019/05/16 09:37:00 rpointel Exp $

COMMENT = Python extension that gives access to YARA

GH_PROJECT = 	yara-python

MODPY_EGG_VERSION =	${VERSION}
PKGNAME = py-yara-${VERSION}

WANTLIB += pthread ${MODPY_WANTLIB} yara

MODULES = lang/python
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

MODPY_DISTUTILS_BUILDARGS = --dynamic-linking
MAKE_FLAG +=	CPPFLAGS="-I${LOCALBASE}/include/yara/"

pre-configure:
	        ${SUBST_CMD} ${WRKSRC}/setup.py

BUILD_DEPENDS = security/yara/main>=${VERSION}
RUN_DEPENDS = 	security/yara/main>=${VERSION}

TEST_DEPENDS =	security/yara/python${MODPY_FLAVOR}=${VERSION}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
