# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:48 sthen Exp $

COMMENT=	interface for getting PID info

DISTNAME=	Unix-PID-0.23
CATEGORIES=	sysutils
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-List-Cycle \
		math/p5-Math-Fibonacci-Phi
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
