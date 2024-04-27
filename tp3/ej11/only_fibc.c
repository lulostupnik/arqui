
int fibonacci(int n){
    if(n<0){
        return -1;
    }
    if(n==0 || n==1){
        return 1;
    }
    return fibonacci(n-2)+fibonacci(n-1);
}

int main(){
    fibonacci(3);
}