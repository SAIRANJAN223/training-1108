using {demo as my} from '../db/data-model';



service school{
    entity Students as projection on my.Students;
}