// compile using gcc
#include <stdio.h>
#include <unistd.h>
#include <sys/syscall.h>

void main() {
	syscall(SYS_write, 1, "Hello world!\n", 13);
}
