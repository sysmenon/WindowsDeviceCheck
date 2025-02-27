
#LFLAG = C:\Windows\WinSxS\wow64_microsoft-windows-kernel32_31bf3856ad364e35_10.0.26100.3037_none_3a0213b63a909242
LFLAG = "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\um\x64"
lFLAG = kernel32

# -L${LFLAG} -l${lFLAG}

default:
	g++ -Wl,--trace main.cpp -o main.exe 

run:
	.\main.exe

clean:
	rm main.exe