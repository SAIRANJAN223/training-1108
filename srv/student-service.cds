using {summa as i} from '../db/student-model';

service student_ser{
    entity Student as projection on i.Student;
    entity Teacher as projection on i.Teacher;
    entity Parents as projection on i.Parents;
}