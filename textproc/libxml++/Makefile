# $OpenBSD: Makefile,v 1.40 2020/01/16 20:25:43 jasper Exp $

PORTROACH=		limit:^2

COMMENT=		C++ wrapper for the libxml XML parser library

GNOME_VERSION=		2.40.1
GNOME_PROJECT=		libxml++
REVISION=		2

SHARED_LIBS +=  xml++-2.6            2.0      # 2.7

CATEGORIES=		textproc

HOMEPAGE=		http://libxmlplusplus.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 iconv intl
WANTLIB += lzma m pcre pthread sigc-2.0 xml2 z
WANTLIB += ${COMPILER_LIBCXX}

MODULES=		x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/glib2mm \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
