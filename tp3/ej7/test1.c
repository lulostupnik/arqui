
char global_no_init[10];
char global_init[] = "mensaje global";

void foo(){
    int arr_no_ini[20];
    arr_no_ini[0] = 1;
    int arr_num_ini[20] = {1};
    char message_init[] = "mensaje";
    char message_init_changed_later[] = "menzaje";
    message_init_changed_later[3] = 's';
}