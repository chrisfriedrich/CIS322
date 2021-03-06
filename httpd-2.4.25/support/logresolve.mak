# Microsoft Developer Studio Generated NMAKE File, Based on logresolve.dsp
!IF "$(CFG)" == ""
CFG=logresolve - Win32 Debug
!MESSAGE No configuration specified. Defaulting to logresolve - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "logresolve - Win32 Release" && "$(CFG)" != "logresolve - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "logresolve.mak" CFG="logresolve - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "logresolve - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "logresolve - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "logresolve - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\logresolve.exe" "$(DS_POSTBUILD_DEP)"

!ELSE 

ALL : "aprutil - Win32 Release" "apr - Win32 Release" "$(OUTDIR)\logresolve.exe" "$(DS_POSTBUILD_DEP)"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"apr - Win32 ReleaseCLEAN" "aprutil - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\logresolve.obj"
	-@erase "$(INTDIR)\logresolve.res"
	-@erase "$(INTDIR)\logresolve_src.idb"
	-@erase "$(INTDIR)\logresolve_src.pdb"
	-@erase "$(OUTDIR)\logresolve.exe"
	-@erase "$(OUTDIR)\logresolve.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../srclib/apr/include" /I "../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "APR_DECLARE_STATIC" /D "APU_DECLARE_STATIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\logresolve_src" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\logresolve.res" /i "../include" /i "../srclib/apr/include" /d "NDEBUG" /d "APP_FILE" /d BIN_NAME="logresolve.exe" /d LONG_NAME="Apache logresolve command line pipe" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\logresolve.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib advapi32.lib wsock32.lib ws2_32.lib rpcrt4.lib shell32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\logresolve.pdb" /debug /out:"$(OUTDIR)\logresolve.exe" /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\logresolve.obj" \
	"$(INTDIR)\logresolve.res" \
	"..\srclib\apr\LibR\apr-1.lib" \
	"..\srclib\apr-util\LibR\aprutil-1.lib"

"$(OUTDIR)\logresolve.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\logresolve.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\logresolve.exe"
   if exist .\Release\logresolve.exe.manifest mt.exe -manifest .\Release\logresolve.exe.manifest -outputresource:.\Release\logresolve.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "logresolve - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\logresolve.exe" "$(DS_POSTBUILD_DEP)"

!ELSE 

ALL : "aprutil - Win32 Debug" "apr - Win32 Debug" "$(OUTDIR)\logresolve.exe" "$(DS_POSTBUILD_DEP)"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"apr - Win32 DebugCLEAN" "aprutil - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\logresolve.obj"
	-@erase "$(INTDIR)\logresolve.res"
	-@erase "$(INTDIR)\logresolve_src.idb"
	-@erase "$(INTDIR)\logresolve_src.pdb"
	-@erase "$(OUTDIR)\logresolve.exe"
	-@erase "$(OUTDIR)\logresolve.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../srclib/apr/include" /I "../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_CONSOLE" /D "APR_DECLARE_STATIC" /D "APU_DECLARE_STATIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\logresolve_src" /FD /EHsc /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\logresolve.res" /i "../include" /i "../srclib/apr/include" /d "_DEBUG" /d "APP_FILE" /d BIN_NAME="logresolve.exe" /d LONG_NAME="Apache logresolve command line pipe" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\logresolve.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib advapi32.lib wsock32.lib ws2_32.lib rpcrt4.lib shell32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\logresolve.pdb" /debug /out:"$(OUTDIR)\logresolve.exe" 
LINK32_OBJS= \
	"$(INTDIR)\logresolve.obj" \
	"$(INTDIR)\logresolve.res" \
	"..\srclib\apr\LibD\apr-1.lib" \
	"..\srclib\apr-util\LibD\aprutil-1.lib"

"$(OUTDIR)\logresolve.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\logresolve.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\logresolve.exe"
   if exist .\Debug\logresolve.exe.manifest mt.exe -manifest .\Debug\logresolve.exe.manifest -outputresource:.\Debug\logresolve.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("logresolve.dep")
!INCLUDE "logresolve.dep"
!ELSE 
!MESSAGE Warning: cannot find "logresolve.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "logresolve - Win32 Release" || "$(CFG)" == "logresolve - Win32 Debug"

!IF  "$(CFG)" == "logresolve - Win32 Release"

"apr - Win32 Release" : 
   cd ".\..\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\apr.mak" CFG="apr - Win32 Release" 
   cd "..\..\support"

"apr - Win32 ReleaseCLEAN" : 
   cd ".\..\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\apr.mak" CFG="apr - Win32 Release" RECURSE=1 CLEAN 
   cd "..\..\support"

!ELSEIF  "$(CFG)" == "logresolve - Win32 Debug"

"apr - Win32 Debug" : 
   cd ".\..\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\apr.mak" CFG="apr - Win32 Debug" 
   cd "..\..\support"

"apr - Win32 DebugCLEAN" : 
   cd ".\..\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\apr.mak" CFG="apr - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\..\support"

!ENDIF 

!IF  "$(CFG)" == "logresolve - Win32 Release"

"aprutil - Win32 Release" : 
   cd ".\..\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\aprutil.mak" CFG="aprutil - Win32 Release" 
   cd "..\..\support"

"aprutil - Win32 ReleaseCLEAN" : 
   cd ".\..\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\aprutil.mak" CFG="aprutil - Win32 Release" RECURSE=1 CLEAN 
   cd "..\..\support"

!ELSEIF  "$(CFG)" == "logresolve - Win32 Debug"

"aprutil - Win32 Debug" : 
   cd ".\..\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\aprutil.mak" CFG="aprutil - Win32 Debug" 
   cd "..\..\support"

"aprutil - Win32 DebugCLEAN" : 
   cd ".\..\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\aprutil.mak" CFG="aprutil - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\..\support"

!ENDIF 

SOURCE=..\build\win32\httpd.rc

!IF  "$(CFG)" == "logresolve - Win32 Release"


"$(INTDIR)\logresolve.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\logresolve.res" /i "../include" /i "../srclib/apr/include" /i "../build\win32" /d "NDEBUG" /d "APP_FILE" /d BIN_NAME="logresolve.exe" /d LONG_NAME="Apache logresolve command line pipe" $(SOURCE)


!ELSEIF  "$(CFG)" == "logresolve - Win32 Debug"


"$(INTDIR)\logresolve.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\logresolve.res" /i "../include" /i "../srclib/apr/include" /i "../build\win32" /d "_DEBUG" /d "APP_FILE" /d BIN_NAME="logresolve.exe" /d LONG_NAME="Apache logresolve command line pipe" $(SOURCE)


!ENDIF 

SOURCE=.\logresolve.c

"$(INTDIR)\logresolve.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

