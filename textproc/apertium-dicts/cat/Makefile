# $OpenBSD: Makefile,v 1.8 2019/03/25 06:01:01 bentley Exp $

L =	cat
LANG =	Catalan
V =	2.7.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
