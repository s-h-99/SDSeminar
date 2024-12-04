tableextension 50100 "CSD ResourceExt" extends Resource
//CSD1.00 - 2024-12-03 - Sara 
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                Rec.TestField("Unit Cost");
            end;
        }

        modify(Type)
        {
            OptionCaption = 'Instructor, Room';
        }

        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }

        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';

        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

}