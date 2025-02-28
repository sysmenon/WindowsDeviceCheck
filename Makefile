
#LFLAG = C:\Windows\WinSxS\wow64_microsoft-windows-kernel32_31bf3856ad364e35_10.0.26100.3037_none_3a0213b63a909242
LFLAG = "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\um\x64"
lFLAG = kernel32
INCLUDE = -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\um" -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\shared" -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0" -I "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.43.34808\include" 
OUT = main.exe

# -L${LFLAG} -l${lFLAG}

default:
	g++ -Wl,--trace main.cpp -o ${OUT} -v

clRun:
	cl.exe ${INCLUDE} main.cpp -o ${OUT} 

run:
	.\main.exe

clean:
	rm main.exe


	"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.43.34808\include"