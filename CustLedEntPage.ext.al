pageextension 50133 NumberOfDaysExpired extends "Customer Ledger Entries"
{
    layout
    {

        addfirst(Control1)
        {
            field("Number of Days Expired"; Rec."Number of Days Expired")
            {
                Caption = 'Number of Days Expired';
                ApplicationArea = All;
                ToolTip = 'The number of days this entry is expired, based upon the due date.';
                Editable = false;
                StyleExpr = DaysExpiredStyle;
            }

        }

    }

    views
    {
        addfirst
        {
            view("Open Entries")
            {
                Caption = 'Open Entries';
                OrderBy = Ascending("Due Date");
                Filters = where(Open = const(true));
                SharedLayout = False;

                layout
                {
                    movefirst(Control1; "Number of Days Expired")
                    moveafter("Number of Days Expired"; "Due Date")
                }
            }
        }
    }
    var
        NumberOfDaysExpired: Integer;
        DaysExpiredStyle: Text;
        ThresholdSetup: Record "ThreshldSetup";

    trigger OnOpenPage()
    begin
        if not ThresholdSetup.Get() then begin
            ShowThresholdSetupNotification();
            CurrPage.Update();
        end;
    end;

    trigger OnAfterGetRecord()
    begin
        NumberOfDaysExpired := Rec."Number of Days Expired";
        case NumberOfDaysExpired of
            ThresholdSetup."Threshold 1 Value" .. ThresholdSetup."Threshold 2 Value":
                DaysExpiredStyle := format(ThresholdSetup."Threshold 1 Style");
            ThresholdSetup."Threshold 2 Value" .. 9999:
                DaysExpiredStyle := format(ThresholdSetup."Threshold 2 Style");
            else
                DaysExpiredStyle := 'None';
        end;
        //DaysExpiredStyle := GetDaysExpiredStyle(NumberOfDaysExpired);
    end;

    procedure ShowThresholdSetupNotification()
    var
        ThresholdSetupNotification: Notification;
    begin
        ThresholdSetupNotification.Message('You need to run the Threshold Setup: ');
        ThresholdSetupNotification.AddAction('Click here to run the ThresholdSetup', Codeunit::"ThresholdMgt", 'RunThresholdSetup');
        ThresholdSetupNotification.Send();
    end;

    // views
    // {
    //     addfirst
    //     {
    //         view("Open Entries")
    //         {
    //             Caption = 'Open Entries';
    //             OrderBy = Ascending("Due Date");
    //             Filters = where(Open = const(true));
    //             SharedLayout = False;

    //             layout
    //             {
    //                 movefirst(Control1;NumberOfDaysExpired)
    //                 moveafter(NumberOfDaysExpired;"Due Date")
    //             }
    //         }
    //     }
    // }
}



// actions
// {
//     // Add changes to page actions here
// }

// var
//     myInt: Integer;
