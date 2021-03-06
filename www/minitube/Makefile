# $OpenBSD: Makefile,v 1.64 2020/03/30 04:01:01 rsadowski Exp $

COMMENT =	standalone YouTube.com video browser/player

V =		3.3
DISTNAME =	minitube-$V
EXTRACT_SUFX =	.tar.bz2
REVISION =	0

CATEGORIES =	www multimedia

HOMEPAGE =	https://flavio.tordini.org/minitube

# GPLv3
PERMIT_PACKAGE =		Yes

MASTER_SITES =	https://github.com/flaviotordini/minitube/releases/download/$V/

# minitube-3.1.tar.bz2 is actually gzipped.
# i would just use GH_* rather than EXTRACT_CASES, but the git tree uses
# submodules (build fails with missing media.h) so this is easier.
EXTRACT_CASES += minitube*.tar.bz2) ${GZIP_CMD} -d <${FULLDISTDIR}/$$archive | ${TAR} xf -;;

WANTLIB +=	GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Sql
WANTLIB +=	Qt5Widgets Qt5X11Extras c m mpv ${COMPILER_LIBCXX}

MODULES =	devel/qmake x11/qt5 multimedia/phonon

LIB_DEPENDS +=	multimedia/mpv \
		x11/qt5/qtx11extras

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	CXX="${CXX}" \
		LINK="${CXX}"

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/minitube.pro

.include <bsd.port.mk>
