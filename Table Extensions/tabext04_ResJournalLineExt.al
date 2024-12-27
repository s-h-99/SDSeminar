tableextension 50104 "CSD ResJournalLineExt" extends "Res. Journal Line"
{
    fields
    {
        field(50100; "CSD Seminar No."; code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
        }
        field(50101; "CSD Seminar Registration No."; code[20])
        {
            Caption = 'Seminar Registartion No.';
            TableRelation = "CSD Posted Seminar Reg. Header";
        }
    }

}