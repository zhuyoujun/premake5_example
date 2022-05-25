#pragma once

#include <string>

#ifndef MSG_MACRO_TITLE
void Print_Shared(const std::string& message);
#else
void Print_Shared(const std::string& message, const std::string& title);
#endif
