codeunit 50134 "CSD Seminar Reg.-Show Ledger"
// Chapter 7- Lab 2-10

{
    TableNo = "CSD Seminar Register";
    trigger OnRun()
    begin
        SeminarLedgerEntry.SetRange("Entry No.", Rec."From Entry No.", Rec."To Entry No.");
        page.Run(Page::"CSD Seminar Ledger Entries", SeminarLedgerEntry);

    end;

    var
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
}