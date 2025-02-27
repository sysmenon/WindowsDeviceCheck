#include <Windows.h>
#include <iostream> 



int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PSTR lpCmdLine, int nCmdShow) {
    _SYSTEM_INFO systemInfo;

    GetNativeSystemInfo(&systemInfo);

    
    std::cout << systemInfo.wProcessorLevel << std::endl;
    std::cout << systemInfo.dwNumberOfProcessors << std::endl;
    char x;
    std::cin >> x;
    return 0;
}
