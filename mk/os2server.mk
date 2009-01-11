#
# OS/2 personality servers
# include file
#

!ifndef __server_mk__
!define __server_mk__

#
# ARCH variable defines
# host operating system,
# currently: OS2, Win32, Linux
#
# You must define such variable like this:
# wmake all ARCH=OS2
#

32_BITS = 1

SrvDir = $(%ROOT)os2$(SEP)Server$(SEP)

ADD_COPT = -i=$(SrvDir)Shared$(SEP)modmgr -i=. -i=.. &
           -i=$(SrvDir)include &
#           -std=c99   $(COPT_TARGET) -O1 -g2 -Wall

ADD_LINKOPT = libpath $(%ROOT)$(SEP)build$(SEP)lib lib os2server_shared.lib, os2server_$(ARCH).lib

!ifeq ARCH os2
ADD_COPT    = $(ADD_COPT) -i=$(SrvDir)os2 &
              -i=$(%WATCOM)$(SEP)h -i=$(%WATCOM)$(SEP)h$(SEP)os2
ADD_LINKOPT = libpath $(%WATCOM)$(SEP)lib386$(SEP)os2 &
              $(ADD_LINKOPT) lib libmmap.lib
ALIASES = mmap_=_mmap,munmap_=_munmap
OPTIONS = internalrelocs
!include $(%ROOT)/mk/appsos2.mk
!else
!ifeq ARCH linux
ADD_COPT    = $(ADD_COPT) -i=$(SrvDir)linux &
              -i=$(%WATCOM)$(SEP)lh &
              -i=$(%WATCOM)$(SEP)h$(SEP)os2
ADD_LINKOPT = libpath $(%WATCOM)$(SEP)lib386$(SEP)linux &
              $(ADD_LINKOPT)
ALIASES = _PrcExecuteModule=PrcExecuteModule_
!include $(%ROOT)/mk/appslnx.mk
!else
!ifeq ARCH win32
ADD_COPT    = $(ADD_COPT) -i=$(SrvDir)win32 &
              -i=$(%WATCOM)$(SEP)h -i=$(%WATCOM)$(SEP)h$(SEP)nt &
              -i=$(%WATCOM)$(SEP)h$(SEP)os2
ADD_LINKOPT = libpath $(%WATCOM)$(SEP)lib386$(SEP)nt &
              $(ADD_LINKOPT)
OPTIONS="OFFSET=524288"
ADD_LINKOPT=lib kernel32
# -mthreads
!include $(%ROOT)/mk/appsw32.mk
!endif
!endif
!endif

!endif