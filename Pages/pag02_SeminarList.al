page 50102 "CSD Seminar List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar List';
    Editable = false;
    CardPageId = 50101;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                }
                field(Name; Rec.Name)
                { }
                field("Seminar Duration"; Rec."Seminar Duration")
                { }
                field("Seminar Price"; Rec."Seminar Price")
                { }
                field("Minimum Participants"; Rec."Minimum Participants")
                { }
                field("Maximum Participants"; Rec."Maximum Participants")
                { }

            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar),
                                 "No." = field("No.");
                    Image = Comment;
                }
                // >> Lab 8 1-3
                action("Ledger Entries")
                {
                    RunObject = page "CSD Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl + F7";
                    Image = WarrantyLedger;
                }
                action("&Registrations")
                {
                    RunObject = page "CSD Posted Seminar Reg. List";
                    RunPageLink = "Seminar No." = field("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                // << Lab 8 1-3
            }
        }
        // >> Lab 8 1-3
        area(Processing)
        {
            action("Seminar Registration")
            {
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = New;
            }
        }
        // << Lab 8 1-3

    }
}