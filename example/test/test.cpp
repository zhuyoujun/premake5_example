#include <stdio.h>
#include "static.h"
#include "shared.h"

void Print()
{
#ifndef MSG_MACRO_TITLE
    Print_Shared("Test! Print_Shared");
#else
    Print_Shared("Test! Print_Shared","title");
#endif
}

int main(void)
{
    Print();
    Print_Static("Test! Print_Static");
    return 0;
}
