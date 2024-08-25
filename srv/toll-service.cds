using { toll as t } from '../db/toll-model';

service toll_service {
    entity TA as projection on t.TollAccounts;
    entity TE as projection on t.TollEntries;

}