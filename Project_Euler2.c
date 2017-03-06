#include<stdio.h>
#define Max 4000000

int main(void){
    int fib = 1;
    int temp = fib;
    int sum = 0;
	while (fib <= Max){
        if(fib % 2 == 0)
            sum += fib;
        fib += temp;
        temp = fib - temp;
	}
	printf("sum: %d", sum);
	return 0;
}

