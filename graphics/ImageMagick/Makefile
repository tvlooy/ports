# $OpenBSD: Makefile,v 1.200 2020/02/03 20:40:38 sthen Exp $

BROKEN-arm=	libm functions (cabs etc) not detected, fallback code is broken

COMMENT=		image processing tools

VER=			6.9.10
DASHVER=		86
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		ImageMagick-${VER}.${DASHVER}
PORTROACH=		site:https://imagemagick.org/download/ limit:6.*
EXTRACT_SUFX=		.tar.xz
REVISION=		0

SHARED_LIBS +=	MagickCore-6.Q16     7.0      # 6.0
SHARED_LIBS +=	MagickWand-6.Q16     4.2      # 6.0
SHARED_LIBS +=	Magick++-6.Q16       5.2      # 8.0

CATEGORIES=		graphics

HOMEPAGE=		https://imagemagick.org/

MASTER_SITES=		https://imagemagick.org/download/releases/ \
			https://ftp.acc.umu.se/mirror/imagemagick.org/ftp/ \
			ftp://sunsite.icm.edu.pl/packages/ImageMagick/

# https://imagemagick.org/script/license.php
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xdmcp Xext Xt bz2
WANTLIB += c djvulibre expat fftw3 fontconfig freetype iconv jasper
WANTLIB += jbig jpeg lcms2 lzma m openjp2 perl png raw_r tiff webp
WANTLIB += webpdemux webpmux xcb xml2 z zstd

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz \
			archivers/zstd \
			converters/libiconv \
			graphics/djvulibre \
			graphics/jbigkit \
			graphics/lcms2 \
			graphics/libraw>=0.19.5p0 \
			graphics/libwebp \
			graphics/openjp2 \
			graphics/png \
			graphics/tiff \
			math/fftw3 \
			textproc/libxml
BUILD_DEPENDS =		print/ghostscript/gnu

ALL_TARGET=		all perl-build

CONFIGURE_STYLE=	autoconf
LIBTOOL_FLAGS=		--tag=disable-static
AUTOCONF_VERSION=	2.69
USE_GMAKE=		Yes
CONFIGURE_ARGS+=	--without-gcc-arch \
			--with-gs-font-dir=${LOCALBASE}/share/fonts/ghostscript \
			--with-perl \
			--with-perl-options='MAKE=${MAKE_PROGRAM}' \
			--with-quantum-depth=16 \
			--without-dps \
			--without-flif \
			--without-fpx \
			--without-gvc \
			--without-lqr \
			--without-openexr \
			--without-pango \
			--without-raqm \
			--without-rsvg \
			--without-wmf \
			--disable-openmp

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

FAKE_FLAGS=		CONFIGURE_PATH=${PREFIX}/share/examples/ImageMagick

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} $$(find . -name '*.pc.in')

.include <bsd.port.mk>
