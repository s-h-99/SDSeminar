pageextension 50102 "CSD SOurceCodeSetupExt" extends "Source Code Setup"
{
    layout
    {
        addafter("Cost Accounting")
        {
            group("CSD SeminarGroup")
            {
                Caption = 'Seminar';

                field(Seminar; Rec."CSD Seminar")
                {
                }
            }
        }
    }

}