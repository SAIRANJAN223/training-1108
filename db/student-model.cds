namespace summa;

entity Student{
    key student_id : String(10);
        student_name : String(256);
        parent_id : String(10);
}

entity Teacher{
    key teacher_id : String(10);
        teacher_name : String(256);
}

entity Parents{
    key parent_id : String(10);
        parent_name : String(256);
}

