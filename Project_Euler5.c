#include<stdio.h>
#include<math.h>

int main(void){
	int d[21] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
	int i, id, j;
	int num = 1;
	int count = 0;
	for (i = 2; i <= 20; i++){
		if (ch_prime(i) == 1)
			d[i] = 1;
	}
	for (i = 2; i <= 20; i++){
		id = i;
		for (j = 2; j <= 20; j++){
			if (d[j] != 0){
				while(id%j == 0&&i!=1){
					count++;
					id /= j;
					if (d[j] < count) d[j] = count;
				}
				count = 0;
			}
		}
	}
	for (i = 0; i <= 20; i++){
		while (d[i] != 0){
			num *= i;
			d[i]--;
		}
	}
	printf("num: %d", num);

}

int ch_prime(int num){
	int i = 2;
	for (; i <=	 sqrt(num); i++){
		if (num%i == 0)return 0;
	}
	return 1;
}