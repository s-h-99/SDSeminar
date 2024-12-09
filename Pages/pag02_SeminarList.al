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
                    // RunObject=page "CSD Seminar Comment Sheet";
                    // RunPageLink = "Table Name" = const(Seminar),
                    //              "No." = field("No.");
                    Image = Comment;
                }
            }
        }

    }
}