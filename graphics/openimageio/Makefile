# $OpenBSD: Makefile,v 1.39 2020/03/20 16:44:24 naddy Exp $

BROKEN-i386 =		clang segfault compiling imagebufalgo_pixelmath.cpp

COMMENT =		library for reading and writing images

GH_ACCOUNT = 		OpenImageIO
GH_PROJECT = 		oiio
V =			1.8.6
GH_TAGNAME =		Release-$V
DISTNAME =		openimageio-${V}
REVISION =		6

SHARED_LIBS +=		OpenImageIO		5.0 # 1.0
SHARED_LIBS +=  	OpenImageIO_Util	2.0 # 1.5

CATEGORIES =		graphics devel

HOMEPAGE =		http://www.openimageio.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += GL GLEW GLU Half-2_4 Iex-2_4 IlmImf-2_4 IlmThread-2_4
WANTLIB += Imath-2_4 OpenColorIO Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets
WANTLIB += avcodec avformat avutil boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_python-mt
WANTLIB += boost_system-mt boost_thread-mt bz2 c freetype gif
WANTLIB += jpeg m openjpeg png raw_r swscale tiff webp z

MODULES =		devel/cmake \
			lang/python \
			x11/qt5 \

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		textproc/txt2man

LIB_DEPENDS =		devel/boost \
			graphics/openjpeg \
			graphics/tiff \
			graphics/libwebp \
			graphics/glew \
			graphics/openexr \
			graphics/giflib \
			graphics/opencolorio \
			graphics/ffmpeg \
			graphics/libraw

CONFIGURE_ARGS +=	-DUSE_OPENCV=OFF \
			-DCMAKE_INSTALL_MANDIR="man/man1" \
			-DSTOP_ON_WARNING=OFF

CXXFLAGS +=		-pthread
.if ${MACHINE_ARCH} == "i386"
CXXFLAGS +=		-march=i686
.endif
WRKDIST =		${WRKDIR}/oiio-Release-$V

# Fix undefined reference to __atomic_*
.if ${MACHINE_ARCH:Mpowerpc} || ${MACHINE_ARCH:Mhppa}
CONFIGURE_ENV += 	LDFLAGS="${LDFLAGS} -latomic"
WANTLIB +=              atomic
.endif

post-install:
	find ${PREFIX} -name '*.orig' -delete

.include <bsd.port.mk>
