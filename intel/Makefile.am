# Copyright © 2008 Intel Corporation
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice (including the next
# paragraph) shall be included in all copies or substantial portions of the
# Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.
#
# Authors:
#    Eric Anholt <eric@anholt.net>

include Makefile.sources

AM_CFLAGS = \
	$(WARN_CFLAGS) \
	-I$(top_srcdir) \
	$(PTHREADSTUBS_CFLAGS) \
	$(PCIACCESS_CFLAGS) \
	$(VALGRIND_CFLAGS) \
	-I$(top_srcdir)/include/drm2

libdrm2_intel_la_LTLIBRARIES = libdrm2_intel.la
libdrm2_intel_ladir = $(libdir)
libdrm2_intel_la_LDFLAGS = -version-number 1:0:0 -no-undefined
libdrm2_intel_la_LIBADD = ../libdrm2.la \
	@PTHREADSTUBS_LIBS@ \
	@PCIACCESS_LIBS@ \
	@CLOCK_LIB@


libdrm2_intel_la_SOURCES = $(LIBDRM_INTEL_FILES)

libdrm2_intelincludedir = ${includedir}/libdrm2
libdrm2_intelinclude_HEADERS = $(LIBDRM_INTEL_H_FILES)

# This may be interesting even outside of "make check", due to the -dump option.
noinst_PROGRAMS = test_decode

BATCHES = \
	tests/gen4-3d.batch \
	tests/gm45-3d.batch \
	tests/gen5-3d.batch \
	tests/gen6-3d.batch \
	tests/gen7-2d-copy.batch \
	tests/gen7-3d.batch

TESTS = \
	$(BATCHES:.batch=.batch.sh) \
	intel-symbol-check

EXTRA_DIST = \
	$(BATCHES) \
	$(BATCHES:.batch=.batch.sh) \
	$(BATCHES:.batch=.batch-ref.txt) \
	$(BATCHES:.batch=.batch-ref.txt) \
	tests/test-batch.sh \
	$(TESTS)

test_decode_LDADD = libdrm2_intel.la ../libdrm2.la -lsugar_driver


pkgconfig_DATA = libdrm2_intel.pc
