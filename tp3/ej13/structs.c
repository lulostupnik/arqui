#include <stdio.h>
typedef struct{
    int x;
    int y;
    int * pointer;
}t_struct ;


// static void print_struct(t_struct m_struct){
//     printf("X = %d\nY = %d\n*pointer=%d\n\n", m_struct.x, m_struct.y, *m_struct.pointer);
// }

t_struct my_func1(t_struct myStruct){
    myStruct.x++;
    myStruct.y++;
    *myStruct.pointer = 2;
    return myStruct;
}

void my_func2(t_struct * myStruct){
    myStruct->x++;
    myStruct->y++;
    *myStruct->pointer = 2;
}

int main(){
    int a=10;
    a++;
    t_struct my_struct = {1,2,&a};
    t_struct ans;
    // puts("My struct");
    // print_struct(my_struct);
    // puts("--------------------\nAns:");
    ans = my_func1(my_struct);
    ans.x = 5;
   // print_struct(ans);
    //puts("----------\nMyStruct after my_func2:");
    my_func2(&my_struct);
    //print_struct(my_struct);

}

