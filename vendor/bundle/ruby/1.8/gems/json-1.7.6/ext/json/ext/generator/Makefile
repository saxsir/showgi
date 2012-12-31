
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /Users/saxsir/.rvm/rubies/ruby-1.8.7-p370/lib/ruby/1.8/i686-darwin11.4.2
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
exec_prefix = $(prefix)
prefix = $(DESTDIR)/Users/saxsir/.rvm/rubies/ruby-1.8.7-p370
sysconfdir = $(prefix)/etc
vendorlibdir = $(vendordir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
sitedir = $(libdir)/ruby/site_ruby
vendorarchdir = $(vendorlibdir)/$(sitearch)
bindir = $(exec_prefix)/bin
sbindir = $(exec_prefix)/sbin
vendordir = $(libdir)/ruby/vendor_ruby
libdir = $(exec_prefix)/lib
sitelibdir = $(sitedir)/$(ruby_version)
localedir = $(datarootdir)/locale
infodir = $(datarootdir)/info
sharedstatedir = $(prefix)/com
rubylibdir = $(libdir)/ruby/$(ruby_version)
includedir = $(prefix)/include
pdfdir = $(docdir)
datadir = $(datarootdir)
libexecdir = $(exec_prefix)/libexec
archdir = $(rubylibdir)/$(arch)
oldincludedir = $(DESTDIR)/usr/include
docdir = $(datarootdir)/doc/$(PACKAGE)
htmldir = $(docdir)
datarootdir = $(prefix)/share
localstatedir = $(prefix)/var
psdir = $(docdir)
mandir = $(datarootdir)/man
dvidir = $(docdir)

CC = /usr/bin/gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fno-common -g -O3  -fno-common -pipe -fno-common $(cflags) -Wall -O0 -ggdb 
INCFLAGS = -I. -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS = -DJSON_GENERATOR  -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. 
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -dynamic -bundle -undefined suppress -flat_namespace
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-darwin11.4.2
sitearch = i686-darwin11.4.2
ruby_version = 1.8
ruby = /Users/saxsir/.rvm/rubies/ruby-1.8.7-p370/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = /json/ext
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -ldl -lobjc  
SRCS = generator.c
OBJS = generator.o
TARGET = generator
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /Users/saxsir/lecture/script-lang/showgi/vendor/bundle/ruby/1.8/gems/json-1.7.6/lib$(target_prefix)
RUBYARCHDIR = /Users/saxsir/lecture/script-lang/showgi/vendor/bundle/ruby/1.8/gems/json-1.7.6/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).bundle $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
generator.o: generator.c generator.h $(srcdir)/../fbuffer/fbuffer.h
