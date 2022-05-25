
#include "shared.h"
#include <iostream>

#ifndef MSG_MACRO_TITLE
void Print_Shared(const std::string& message)
{
    std::cout << "msg:" << message.c_str() << std::endl;
}

#else
void Print_Shared(const std::string& message, const std::string& title)
{
    std::cout << title.c_str() << ":" << message.c_str() << std::endl;
}

#endif
