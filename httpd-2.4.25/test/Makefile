top_srcdir   = /home/osnapadmin/CIS322/httpd-2.4.25
top_builddir = /home/osnapadmin/CIS322/httpd-2.4.25
srcdir       = /home/osnapadmin/CIS322/httpd-2.4.25/test
builddir     = /home/osnapadmin/CIS322/httpd-2.4.25/test
VPATH        = /home/osnapadmin/CIS322/httpd-2.4.25/test

# no targets: we don't want to build anything by default. if you want the
# test programs, then "make test"
TARGETS =

bin_PROGRAMS =

PROGRAM_LDADD        = $(EXTRA_LDFLAGS) $(PROGRAM_DEPENDENCIES) $(EXTRA_LIBS)
PROGRAM_DEPENDENCIES =  \
	$(top_srcdir)/srclib/apr-util/libaprutil.la \
	$(top_srcdir)/srclib/apr/libapr.la

include $(top_builddir)/build/rules.mk

test: $(bin_PROGRAMS)

# example for building a test proggie
# dbu_OBJECTS = dbu.lo
# dbu: $(dbu_OBJECTS)
#	$(LINK) $(dbu_OBJECTS) $(PROGRAM_LDADD)
