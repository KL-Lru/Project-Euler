#include<stdio.h>
#include<math.h>
#define N 100

int main(void){
	int squ = N * (N + 1) * (2 * N + 1) / 6;
	int sum = pow(N * (N + 1) / 2,2);
	printf("hence : %d",sum - squ);
	return 0;
}
