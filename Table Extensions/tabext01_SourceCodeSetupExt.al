tableextension 50101 "CSD SourceCodeSetupExt" extends "Source Code Setup"
// Chapter 7 - Lab 1-7
// -Added new fields:
// -seminar
{
    fields
    {
        field(50100; "CSD Seminar"; Code[10])
        {
            Caption = 'Seminar';
            TableRelation = "Source Code";
        }
    }

}