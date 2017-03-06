#include<stdio.h>
#define Max 1000
#define Min 100 

int check_palin(int n);

int main(void){
	int a = Min, b = Min;
	int i = 1;
	int palin = 0;
	while (a < Max){
		while (b < Max){
			if (check_palin(a * b) == 1 && a * b > palin) palin = a * b;
			b++;
		}
		b = Min;
		a++;
	}
	printf("palin :%d", palin);
	return 0;
}

int check_palin(int n){
	int a[6];
	int count = n - 100000 < 0 ? 5 : 6;
	int i;
	for (i = 0; i < count; i++){
		a[i] = n % 10;
		n /= 10;
	}
	switch (count){
	case 5: 
		if (a[0] == a[4] && a[1] == a[3])return 1;
		else return 0;
		break;
	case 6:
		if (a[0] == a[5] && a[1] == a[4] && a[2] == a[3])return 1;
		else return 0;
		break;
	}
	return 0;
}