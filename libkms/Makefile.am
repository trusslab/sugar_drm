include Makefile.sources

AM_CFLAGS = \
	$(WARN_CFLAGS) \
	-I$(top_srcdir)/include/drm2 \
	-I$(top_srcdir)

libkms2_la_LTLIBRARIES = libkms2.la
libkms2_ladir = $(libdir)
libkms2_la_LDFLAGS = -version-number 1:0:0 -no-undefined
libkms2_la_LIBADD = ../libdrm2.la

#if HAVE_LIBUDEV
#endif

libkms2_la_SOURCES = $(LIBKMS_FILES)

if HAVE_VMWGFX
libkms2_la_SOURCES += $(LIBKMS_VMWGFX_FILES)
endif

if HAVE_INTEL
libkms2_la_SOURCES += $(LIBKMS_INTEL_FILES)
endif

if HAVE_NOUVEAU
libkms2_la_SOURCES += $(LIBKMS_NOUVEAU_FILES)
endif

if HAVE_RADEON
libkms2_la_SOURCES += $(LIBKMS_RADEON_FILES)
endif

if HAVE_EXYNOS
libkms2_la_SOURCES += $(LIBKMS_EXYNOS_FILES)
AM_CFLAGS += -I$(top_srcdir)/exynos
endif

libkms2includedir = ${includedir}/libkms2
libkms2include_HEADERS = $(LIBKMS_H_FILES)

pkgconfigdir = @pkgconfigdir@
pkgconfig_DATA = libkms2.pc

TESTS = kms-symbol-check
EXTRA_DIST = $(TESTS)
