#include <stdio.h>
#include "static.h"
#include "shared.h"

int main(void)
{
    Print_Shared("Test! Print_Shared");
    Print_Static("Test! Print_Static");
    return 0;
}
