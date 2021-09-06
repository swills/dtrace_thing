#include <stdio.h>
#include "probes.h"
void func(int a, int b)
{
  MYAPP_FUNC_CALL(a,b);
  printf("a=%i, b=%i\n",a,b);
}
int main()
{
  func(1,2);
  func(2,3);
  return 0;
}
