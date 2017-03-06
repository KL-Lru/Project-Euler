#include<stdio.h>
#define Max 1000

int main(void){
	int sum = 0;
	int i = 1;
	for (; i < Max; i++){
		if (i % 3 == 0 || i % 5 == 0)
			sum += i;
	}
	printf("sum: %d", sum);
	return 0;
}

