# $OpenBSD: Makefile,v 1.1.1.1 2019/03/09 18:05:30 sebastia Exp $

COMMENT =	convert pcap dumps to hashcat or John the Ripper input

GH_ACCOUNT =	ZerBea
GH_PROJECT =	hcxtools
GH_TAGNAME =	5.1.3
DISTNAME =	hcxtools-${GH_TAGNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread crypto curl z
LIB_DEPENDS +=	net/curl

USE_GMAKE =	Yes
ALL_TARGET =

MAKE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include
MAKE_ENV+=	LDFLAGS=-L${LOCALBASE}/lib
MAKE_FLAGS =	PREFIX='${LOCALBASE}'

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin

.include <bsd.port.mk>