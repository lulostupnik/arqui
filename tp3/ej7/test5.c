void foo(){
    char message_init_changed_later[] = "menzaje";
    message_init_changed_later[3] = 's';
}

void main(){
    foo();
}
