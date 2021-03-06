# $OpenBSD: Makefile,v 1.7 2020/03/21 05:30:58 semarie Exp $

BROKEN-i386 =	error[E0428]: the name `U1024` is defined multiple times
BROKEN-sparc64=	ring build-script error: called `Option::unwrap()` on a `None` value

COMMENT =	semi-automatic OSINT framework and package manager

GH_ACCOUNT =	kpcyrd
GH_PROJECT =	sn0int
GH_TAGNAME =	v0.18.0

CATEGORIES =	security

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge()
LIB_DEPENDS =		databases/sqlite3 security/libsodium ${MODLUA_LIB_DEPENDS}
WANTLIB +=		c c++abi m pthread sqlite3 sodium ${MODLUA_WANTLIB}

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODLUA_VERSION =	5.2
MODLUA_SA =		Yes

MODULES =		devel/cargo \
			lang/lua
BUILD_DEPENDS =		lang/rust>=1.34 \
			textproc/py-sphinx
RUN_DEPENDS =		net/libmaxminddb,-asn \
			net/libmaxminddb,-city

MODCARGO_CRATES +=	adler32	1.0.4	# Zlib
MODCARGO_CRATES +=	aho-corasick	0.7.9	# Unlicense/MIT
MODCARGO_CRATES +=	ansi_term	0.11.0	# MIT
MODCARGO_CRATES +=	arrayref	0.3.6	# BSD-2-Clause
MODCARGO_CRATES +=	arrayvec	0.4.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	arrayvec	0.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	atty	0.2.14	# MIT
MODCARGO_CRATES +=	autocfg	0.1.7	# Apache-2.0/MIT
MODCARGO_CRATES +=	autocfg	1.0.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	backtrace	0.3.41	# MIT/Apache-2.0
MODCARGO_CRATES +=	backtrace-sys	0.1.33	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.9.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.11.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	bincode	1.2.1	# MIT
MODCARGO_CRATES +=	bindgen	0.50.1	# BSD-3-Clause
MODCARGO_CRATES +=	bitflags	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	blake2	0.8.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	blake2b_simd	0.5.10	# MIT
MODCARGO_CRATES +=	block-buffer	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	block-buffer	0.7.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	block-padding	0.1.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	boxxy	0.11.0	# LGPL-3.0
MODCARGO_CRATES +=	bs58	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	bufstream	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	bumpalo	3.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	byte-tools	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	byte-tools	0.3.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	bytemuck	1.2.0	# Zlib
MODCARGO_CRATES +=	byteorder	1.3.4	# Unlicense OR MIT
MODCARGO_CRATES +=	bytes	0.4.12	# MIT
MODCARGO_CRATES +=	bytes	0.5.4	# MIT
MODCARGO_CRATES +=	bytesize	1.0.0	# Apache-2.0
MODCARGO_CRATES +=	c2-chacha	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	caps	0.3.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	cc	1.0.50	# MIT/Apache-2.0
MODCARGO_CRATES +=	cexpr	0.3.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	cfg-if	0.1.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrono	0.4.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrootable-https	0.14.0	# LGPL-3.0
MODCARGO_CRATES +=	clang-sys	0.28.1	# Apache-2.0
MODCARGO_CRATES +=	clap	2.33.0	# MIT
MODCARGO_CRATES +=	cloudabi	0.0.3	# BSD-2-Clause
MODCARGO_CRATES +=	color_quant	1.0.1	# MIT
MODCARGO_CRATES +=	colored	1.9.3	# MPL-2.0
MODCARGO_CRATES +=	constant_time_eq	0.1.5	# CC0-1.0
MODCARGO_CRATES +=	cookie	0.11.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	cookie	0.12.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	cookie_store	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	core-foundation	0.7.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	core-foundation-sys	0.7.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	crc32fast	1.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	crossbeam-channel	0.4.2	# MIT/Apache-2.0 AND BSD-2-Clause
MODCARGO_CRATES +=	crossbeam-deque	0.7.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-epoch	0.8.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-queue	0.2.1	# MIT/Apache-2.0 AND BSD-2-Clause
MODCARGO_CRATES +=	crossbeam-utils	0.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	crypto-mac	0.7.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	cssparser	0.27.2	# MPL-2.0
MODCARGO_CRATES +=	cssparser-macros	0.6.0	# MPL-2.0
MODCARGO_CRATES +=	ct-logs	0.6.0	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	ctrlc	3.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	curl	0.4.26	# MIT
MODCARGO_CRATES +=	curl-sys	0.4.28+curl-7.69.0	# MIT
MODCARGO_CRATES +=	data-encoding	2.2.0	# MIT
MODCARGO_CRATES +=	data-encoding-macro	0.1.8	# MIT
MODCARGO_CRATES +=	data-encoding-macro-internal	0.1.8	# MIT
MODCARGO_CRATES +=	deflate	0.7.20	# MIT/Apache-2.0
MODCARGO_CRATES +=	der-parser	3.0.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	derive_more	0.99.3	# MIT
MODCARGO_CRATES +=	devise	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	devise_codegen	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	devise_core	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	diesel	1.4.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	diesel_derives	1.4.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	diesel_full_text_search	1.0.1	# MIT
MODCARGO_CRATES +=	diesel_migrations	1.4.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	digest	0.7.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	digest	0.8.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dirs	2.0.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dirs-sys	0.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dotenv	0.15.0	# MIT
MODCARGO_CRATES +=	dtoa	0.4.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dtoa-short	0.3.2	# MPL-2.0
MODCARGO_CRATES +=	either	1.5.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs	0.8.22	# MIT/Apache-2.0
MODCARGO_CRATES +=	endian-type	0.1.2	# MIT
MODCARGO_CRATES +=	enum-as-inner	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	env_logger	0.6.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	env_logger	0.7.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	errno	0.2.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	errno-dragonfly	0.1.1	# MIT
MODCARGO_CRATES +=	error-chain	0.12.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	failure	0.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure_derive	0.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	fake-simd	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	filetime	0.2.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	flate2	1.0.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.6	# Apache-2.0 / MIT
MODCARGO_CRATES +=	foreign-types	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	foreign-types-shared	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	fsevent	0.4.0	# MIT
MODCARGO_CRATES +=	fsevent-sys	2.0.1	# MIT
MODCARGO_CRATES +=	fuchsia-cprng	0.1.1	# LICENSE
MODCARGO_CRATES +=	fuchsia-zircon	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	fuchsia-zircon-sys	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	futf	0.1.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	futures	0.1.29	# MIT/Apache-2.0
MODCARGO_CRATES +=	futures-cpupool	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	fxhash	0.2.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	gcc	0.3.55	# MIT/Apache-2.0
MODCARGO_CRATES +=	generic-array	0.9.0	# MIT
MODCARGO_CRATES +=	generic-array	0.12.3	# MIT
MODCARGO_CRATES +=	geo	0.12.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	geo-types	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	getrandom	0.1.14	# MIT OR Apache-2.0
MODCARGO_CRATES +=	gif	0.10.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	glob	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	h2	0.1.26	# MIT
MODCARGO_CRATES +=	handlebars	1.1.0	# MIT
MODCARGO_CRATES +=	heck	0.3.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hermit-abi	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	hex	0.3.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hex	0.4.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hlua-badtouch	0.4.2	# MIT
MODCARGO_CRATES +=	hmac	0.7.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hostname	0.3.1	# MIT
MODCARGO_CRATES +=	html5ever	0.25.1	# MIT / Apache-2.0
MODCARGO_CRATES +=	http	0.1.21	# MIT/Apache-2.0
MODCARGO_CRATES +=	http	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	http-body	0.1.0	# MIT
MODCARGO_CRATES +=	httparse	1.3.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	humantime	1.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	hyper	0.10.16	# MIT
MODCARGO_CRATES +=	hyper	0.12.35	# MIT
MODCARGO_CRATES +=	hyper-rustls	0.17.1	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	hyper-tls	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	image	0.23.0	# MIT
MODCARGO_CRATES +=	indexmap	1.3.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	inflate	0.4.5	# MIT
MODCARGO_CRATES +=	inotify	0.7.0	# ISC
MODCARGO_CRATES +=	inotify-sys	0.1.3	# ISC
MODCARGO_CRATES +=	input_buffer	0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	iovec	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	ipconfig	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	ipnetwork	0.16.0	# Apache-2.0
MODCARGO_CRATES +=	itoa	0.4.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	jpeg-decoder	0.1.18	# MIT / Apache-2.0
MODCARGO_CRATES +=	js-sys	0.3.36	# MIT/Apache-2.0
MODCARGO_CRATES +=	kamadak-exif	0.5.1	# BSD-2-Clause
MODCARGO_CRATES +=	keccak	0.1.0	# CC0-1.0
MODCARGO_CRATES +=	kernel32-sys	0.2.2	# MIT
MODCARGO_CRATES +=	kuchiki	0.8.0	# MIT
MODCARGO_CRATES +=	language-tags	0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazycell	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	lexical-core	0.6.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.67	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libflate	0.1.27	# MIT
MODCARGO_CRATES +=	libloading	0.5.2	# ISC
MODCARGO_CRATES +=	libsodium-sys	0.2.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libsqlite3-sys	0.16.0	# MIT
MODCARGO_CRATES +=	libz-sys	1.0.25	# MIT/Apache-2.0
MODCARGO_CRATES +=	line-wrap	0.1.1	# Apache-2.0
MODCARGO_CRATES +=	linked-hash-map	0.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	lock_api	0.3.3	# Apache-2.0/MIT
MODCARGO_CRATES +=	log	0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	log	0.4.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	lru-cache	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	lua52-sys	0.1.2	# MIT
MODCARGO_CRATES +=	lzw	0.10.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	mac	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	maplit	1.0.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	markup5ever	0.10.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	match_cfg	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	maxminddb	0.13.0	# ISC
MODCARGO_CRATES +=	maybe-uninit	2.0.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	md-5	0.8.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	memchr	2.3.3	# Unlicense/MIT
MODCARGO_CRATES +=	memoffset	0.5.3	# MIT
MODCARGO_CRATES +=	migrations_internals	1.4.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	migrations_macros	1.4.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	mime	0.2.6	# MIT
MODCARGO_CRATES +=	mime	0.3.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	mime_guess	2.0.3	# MIT
MODCARGO_CRATES +=	miniz_oxide	0.3.6	# MIT
MODCARGO_CRATES +=	mio	0.6.21	# MIT
MODCARGO_CRATES +=	mio-extras	2.0.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	mio-uds	0.6.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	miow	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	mqtt-protocol	0.8.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	mutate_once	0.1.1	# BSD-2-Clause
MODCARGO_CRATES +=	native-tls	0.2.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	net2	0.2.33	# MIT/Apache-2.0
MODCARGO_CRATES +=	new_debug_unreachable	1.0.4	# MIT
MODCARGO_CRATES +=	nibble_vec	0.0.4	# MIT
MODCARGO_CRATES +=	nix	0.14.1	# MIT
MODCARGO_CRATES +=	nix	0.15.0	# MIT
MODCARGO_CRATES +=	nix	0.17.0	# MIT
MODCARGO_CRATES +=	nodrop	0.1.14	# MIT/Apache-2.0
MODCARGO_CRATES +=	nom	4.2.3	# MIT
MODCARGO_CRATES +=	nom	5.1.1	# MIT
MODCARGO_CRATES +=	notify	4.0.15	# CC0-1.0
MODCARGO_CRATES +=	nude	0.3.0	# LGPL-3.0
MODCARGO_CRATES +=	num-bigint	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-integer	0.1.42	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-iter	0.1.40	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-rational	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.12.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	oauth2	2.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	onig	5.0.0	# MIT
MODCARGO_CRATES +=	onig_sys	69.2.0	# MIT
MODCARGO_CRATES +=	opaque-debug	0.2.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	opener	0.4.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	openssl	0.10.28	# Apache-2.0
MODCARGO_CRATES +=	openssl-probe	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-sys	0.9.54	# MIT
MODCARGO_CRATES +=	parking_lot	0.9.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot	0.10.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot_core	0.6.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot_core	0.7.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	pdqselect	0.1.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	pear	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	pear_codegen	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	peeking_take_while	0.1.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	pem	0.7.0	# MIT
MODCARGO_CRATES +=	percent-encoding	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	percent-encoding	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	pest	2.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	pest_derive	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	pest_generator	2.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	pest_meta	2.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	phf	0.8.0	# MIT
MODCARGO_CRATES +=	phf_codegen	0.8.0	# MIT
MODCARGO_CRATES +=	phf_generator	0.8.0	# MIT
MODCARGO_CRATES +=	phf_macros	0.8.0	# MIT
MODCARGO_CRATES +=	phf_shared	0.8.0	# MIT
MODCARGO_CRATES +=	pkg-config	0.3.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	pledge	0.3.1	# MIT
MODCARGO_CRATES +=	pledge	0.4.0	# MIT
MODCARGO_CRATES +=	plist	0.4.2	# MIT
MODCARGO_CRATES +=	png	0.15.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ppv-lite86	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	pq-sys	0.4.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	precomputed-hash	0.1.1	# MIT
MODCARGO_CRATES +=	proc-macro-error	0.4.11	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro-error-attr	0.4.11	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro-hack	0.5.11	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro2	0.4.30	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.9	# MIT OR Apache-2.0
MODCARGO_CRATES +=	publicsuffix	1.5.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	quick-error	1.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	quote	0.6.13	# MIT OR Apache-2.0
MODCARGO_CRATES +=	quote	1.0.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	r2d2	0.8.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	radix_trie	0.1.6	# MIT
MODCARGO_CRATES +=	rand	0.6.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.7.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.4.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.5.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_isaac	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_jitter	0.1.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_os	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_pcg	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_pcg	0.2.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_xorshift	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rayon	1.3.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	rayon-core	1.7.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	rdrand	0.4.0	# ISC
MODCARGO_CRATES +=	redox_syscall	0.1.56	# MIT
MODCARGO_CRATES +=	redox_users	0.3.4	# MIT
MODCARGO_CRATES +=	regex	1.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	reqwest	0.9.24	# MIT/Apache-2.0
MODCARGO_CRATES +=	resolv-conf	0.6.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	ring	0.16.11	# LICENSE
MODCARGO_CRATES +=	rle-decode-fast	1.0.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rocket	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rocket_codegen	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rocket_contrib	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rocket_failure	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rocket_failure_errors	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rocket_http	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rstar	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rust-argon2	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-demangle	0.1.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc_version	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rusticata-macros	2.0.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustls	0.16.0	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	rustyline	5.0.6	# MIT
MODCARGO_CRATES +=	rustyline	6.0.0	# MIT
MODCARGO_CRATES +=	ryu	1.0.2	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	safemem	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	same-file	1.0.6	# Unlicense/MIT
MODCARGO_CRATES +=	schannel	0.1.17	# MIT
MODCARGO_CRATES +=	scheduled-thread-pool	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	scoped-tls	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	scoped_threadpool	0.1.9	# MIT
MODCARGO_CRATES +=	scopeguard	1.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	sct	0.6.0	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	seccomp-sys	0.1.3	# LGPL-2.1
MODCARGO_CRATES +=	security-framework	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	security-framework-sys	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	selectors	0.22.0	# MPL-2.0
MODCARGO_CRATES +=	semver	0.9.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	separator	0.4.1	# MIT
MODCARGO_CRATES +=	serde	1.0.104	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.104	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.48	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_urlencoded	0.5.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde_urlencoded	0.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	servo_arc	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	sha-1	0.8.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	sha2	0.7.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	sha2	0.8.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	sha3	0.8.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	shellwords	1.0.0	# MIT
MODCARGO_CRATES +=	shlex	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	siphasher	0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	slab	0.4.2	# MIT
MODCARGO_CRATES +=	sloppy-rfc4880	0.1.5	# Apache-2.0
MODCARGO_CRATES +=	smallvec	0.6.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	smallvec	1.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	sn0int-common	0.10.0	# GPL-3.0
MODCARGO_CRATES +=	sn0int-registry	0.5.0	# GPL-3.0
MODCARGO_CRATES +=	sn0int-std	0.18.0	# GPL-3.0
MODCARGO_CRATES +=	socket2	0.3.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	sodiumoxide	0.2.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	spin	0.5.2	# MIT
MODCARGO_CRATES +=	stable_deref_trait	1.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	state	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	static_assertions	0.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	string	0.2.1	# MIT
MODCARGO_CRATES +=	string_cache	0.8.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	string_cache_codegen	0.5.1	# MIT / Apache-2.0
MODCARGO_CRATES +=	strsim	0.8.0	# MIT
MODCARGO_CRATES +=	structopt	0.3.11	# Apache-2.0/MIT
MODCARGO_CRATES +=	structopt-derive	0.4.4	# Apache-2.0/MIT
MODCARGO_CRATES +=	strum	0.15.0	# MIT
MODCARGO_CRATES +=	strum	0.17.1	# MIT
MODCARGO_CRATES +=	strum_macros	0.15.0	# MIT
MODCARGO_CRATES +=	strum_macros	0.17.1	# MIT
MODCARGO_CRATES +=	subtle	1.0.0	# BSD-3-Clause
MODCARGO_CRATES +=	syn	0.15.44	# MIT OR Apache-2.0
MODCARGO_CRATES +=	syn	1.0.16	# MIT OR Apache-2.0
MODCARGO_CRATES +=	syn-mid	0.5.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	synstructure	0.12.3	# MIT
MODCARGO_CRATES +=	syntect	3.3.0	# MIT
MODCARGO_CRATES +=	syscallz	0.12.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	take_mut	0.2.2	# MIT
MODCARGO_CRATES +=	tar	0.4.26	# MIT/Apache-2.0
MODCARGO_CRATES +=	tempfile	3.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	tendril	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	termcolor	1.1.0	# Unlicense OR MIT
MODCARGO_CRATES +=	textwrap	0.11.0	# MIT
MODCARGO_CRATES +=	thin-slice	0.1.1	# MPL-2.0
MODCARGO_CRATES +=	thread_local	1.0.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	threadpool	1.7.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	tiff	0.4.0	# MIT
MODCARGO_CRATES +=	time	0.1.42	# MIT/Apache-2.0
MODCARGO_CRATES +=	tokio	0.1.22	# MIT
MODCARGO_CRATES +=	tokio-buf	0.1.1	# MIT
MODCARGO_CRATES +=	tokio-codec	0.1.2	# MIT
MODCARGO_CRATES +=	tokio-core	0.1.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	tokio-current-thread	0.1.7	# MIT
MODCARGO_CRATES +=	tokio-executor	0.1.10	# MIT
MODCARGO_CRATES +=	tokio-fs	0.1.7	# MIT
MODCARGO_CRATES +=	tokio-io	0.1.13	# MIT
MODCARGO_CRATES +=	tokio-reactor	0.1.12	# MIT
MODCARGO_CRATES +=	tokio-rustls	0.10.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	tokio-sync	0.1.8	# MIT
MODCARGO_CRATES +=	tokio-tcp	0.1.4	# MIT
MODCARGO_CRATES +=	tokio-threadpool	0.1.18	# MIT
MODCARGO_CRATES +=	tokio-timer	0.2.13	# MIT
MODCARGO_CRATES +=	tokio-udp	0.1.6	# MIT
MODCARGO_CRATES +=	tokio-uds	0.2.6	# MIT
MODCARGO_CRATES +=	toml	0.4.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	toml	0.5.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	traitobject	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	trust-dns	0.17.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	trust-dns-proto	0.8.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	try-lock	0.2.2	# MIT
MODCARGO_CRATES +=	try_from	0.3.2	# MIT
MODCARGO_CRATES +=	tungstenite	0.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	typeable	0.1.2	# MIT
MODCARGO_CRATES +=	typenum	1.11.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	ucd-trie	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicase	1.4.2	# MIT
MODCARGO_CRATES +=	unicase	2.6.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi	0.3.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-segmentation	1.6.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	untrusted	0.7.0	# ISC
MODCARGO_CRATES +=	unveil	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	url	1.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	url	2.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	utf-8	0.7.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	utf8parse	0.1.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	uuid	0.7.4	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	vcpkg	0.2.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	vec_map	0.8.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.9.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	void	1.0.2	# MIT
MODCARGO_CRATES +=	walkdir	2.3.1	# Unlicense/MIT
MODCARGO_CRATES +=	want	0.2.0	# MIT
MODCARGO_CRATES +=	wasi	0.9.0+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	wasm-bindgen	0.2.59	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-backend	0.2.59	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-macro	0.2.59	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-macro-support	0.2.59	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-shared	0.2.59	# MIT/Apache-2.0
MODCARGO_CRATES +=	web-sys	0.3.36	# MIT/Apache-2.0
MODCARGO_CRATES +=	webpki	0.21.2	# LICENSE
MODCARGO_CRATES +=	webpki-roots	0.17.0	# MPL-2.0
MODCARGO_CRATES +=	webpki-roots	0.18.0	# MPL-2.0
MODCARGO_CRATES +=	webpki-roots	0.19.0	# MPL-2.0
MODCARGO_CRATES +=	which	2.0.1	# MIT
MODCARGO_CRATES +=	widestring	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi	0.2.8	# MIT
MODCARGO_CRATES +=	winapi	0.3.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-build	0.1.1	# MIT
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-util	0.1.3	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winreg	0.6.2	# MIT
MODCARGO_CRATES +=	ws2_32-sys	0.2.1	# MIT
MODCARGO_CRATES +=	x509-parser	0.6.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	xattr	0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	xml-rs	0.8.0	# MIT
MODCARGO_CRATES +=	yaml-rust	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	yansi	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	yansi	0.5.0	# MIT/Apache-2.0

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release

do-build:
	@${MODCARGO_BUILD_TARGET}
	${LOCALBASE}/bin/sphinx-build -Nb man ${WRKSRC}/docs ${WRKBUILD}
	${RELEASE_DIR}/sn0int completions bash > ${WRKBUILD}/sn0int.bash
	${RELEASE_DIR}/sn0int completions zsh > ${WRKBUILD}/_sn0int
	${RELEASE_DIR}/sn0int completions fish > ${WRKBUILD}/sn0int.fish

do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/sn0int ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKBUILD}/sn0int.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKBUILD}/sn0int.bash \
	    ${PREFIX}/share/bash-completion/completions/sn0int
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions
	${INSTALL_DATA} ${WRKBUILD}/sn0int.fish ${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/_sn0int ${PREFIX}/share/zsh/site-functions/

.include <bsd.port.mk>
