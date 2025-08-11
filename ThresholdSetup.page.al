page 50104 "Threshold Setup Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ThreshldSetup;
    DeleteAllowed = false;
    InsertAllowed = false;
    Caption = 'Threshold Setup';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Threshold 1 Value"; Rec."Threshold 1 Value")
                {
                    ApplicationArea = All;
                    Caption = 'Threshold 1 Value';
                }
                field("Threshold 1 Style"; Rec."Threshold 1 Style")
                {
                    ApplicationArea = All;
                    Caption = 'Threshold 1 Style';
                    //TableRelation = "StyleType";
                }

                field("Threshold 2 Value"; Rec."Threshold 2 Value")
                {
                    ApplicationArea = All;
                    Caption = 'Threshold 2 Value';
                }
                field("Threshold 2 Style"; Rec."Threshold 2 Style")
                {
                    ApplicationArea = All;
                    Caption = 'Threshold 2 Style';
                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;

    trigger OnOpenPage()
    begin
        // Initialization code here
        // Rec.Reset();
        // if not Rec.Get() then begin
        //     Rec.Init();
        //     Rec.Insert();
        // end;
        if not Rec.Get() then Rec.Insert();
    end;
}