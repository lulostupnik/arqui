#include <stdio.h>
#include <string.h>

int main(){
	int pass = 0;
	char buff[15];
	printf("Enter a pass\n");
	gets(buff);

	if(strcmp(buff, "lulo123") != 0){
		printf("Wrong pass\n");
	}else{
		printf("Correct pass\n");
	}
	return 0;
	
}
