namespace toll;

entity TollAccounts{
    key account_id : String(16);
        amount : Int16;
}


entity TollEntries{
    key entry_id : String(16);
        account_id : String(16);
        entry_location : String(40);
        exit_location : String(40);
        entry_time : Timestamp;
        exit_time : Timestamp;
}