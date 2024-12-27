codeunit 50139 "CSD EventSubsriptions"
// CHAPTER 7 - Lab 4-4
{
    [EventSubscriber(ObjectType::Codeunit,
     212, 'OnBeforeResLedgEntryInsert', '', true, true)]
    local procedure PostResJnlLineOnBeforeResLedgEntryInsert
    (var ResLedgerEntry: Record "Res. Ledger Entry";
         ResJournalLine: Record "Res. Journal Line");
    begin
        ResLedgerEntry."CSD Seminar No." := ResJournalLine."CSD Seminar No.";
        ResLedgerEntry."CSD Registartion No." := ResJournalLine."CSD Seminar Registration No.";
    end;
}