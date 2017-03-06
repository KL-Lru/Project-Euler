#include<stdio.h>

int main(void){
	long long int Number = 600851475143;
	int prime = 2;
	while (1){
		if (Number % prime == 0){
			Number /= prime;
			if (Number == 1) break;
		}
		prime++;
	}
	printf("Max prime: %d", prime);
	return 0;
}

