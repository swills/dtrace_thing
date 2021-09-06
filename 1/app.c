#include <stdio.h>
#include <sys/sdt.h>
void func(int a, int b)
{
  DTRACE_PROBE2(myapp,func_call,a,b);
  printf("a=%i, b=%i\n",a,b);
}
int main()
{
  func(1,2);
  func(2,3);
  return 0;
}
