# $OpenBSD: Makefile,v 1.28 2020/01/07 09:19:23 jasper Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
PKG_ARCH=		*
V=			3.3.0
DISTNAME=		ack-v$V
PKGNAME=		p5-ack-$V
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

HOMEPAGE =		https://beyondgrep.com/

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-File-Next>=1.16

TEST_DEPENDS +=		devel/p5-IO-Tty \
			shells/bash

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
