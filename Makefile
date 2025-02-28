
#LFLAG = C:\Windows\WinSxS\wow64_microsoft-windows-kernel32_31bf3856ad364e35_10.0.26100.3037_none_3a0213b63a909242
#LFLAG = "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\um\x64"
#lFLAG = kernel32

LFLAG = -L "C:\cygwin64\usr\x86_64-w64-mingw32\sys-root\mingw\bin"  #-llibstdc++-6 
INCLUDEQT = -I "C:\cygwin64\usr\include\qt5\QtWidgets" -I "C:\cygwin64\usr\include\qt5" -I "C:\cygwin64\usr\include\qt5\QtGui"
INCLUDE = -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\um" -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\shared" -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0" -I "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.43.34808\include" 
OUT = main.exe
OUTTEST = test.exe
OTHERFLAGS = -static

G++ = x86_64-w64-mingw32-g++.exe
# -L${LFLAG} -l${lFLAG}

default:
	${G++} -Wl,--trace main.cpp -o ${OUT} -v ${LFLAG} ${OTHERFLAGS}

test:
	${G++} -Wl,--trace test.cpp -o ${OUTTESTtrs} -v ${LFLAG} ${OTHERFLAGS}

clRun:
	cl.exe ${INCLUDE} main.cpp -o ${OUT} 

run:
	.\main.exe

clean:
	rm main.exe

#"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.43.34808\include"