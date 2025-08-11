tableextension 50105 NumberOfDaysExpired extends "Cust. Ledger Entry"
{
    fields
    {
        field(50105; "Number of Days Expired"; Integer)
        {
            Caption = 'Number of Days Expired';
        }

    }
    // procedure GetNumberOfDaysExpired()
    // var
    //     TodaysDate: Date;
    //     CustLed: Record "Cust. Ledger Entry";
    // begin
    //     TodaysDate := Today();
    //     if CustLed.FindSet() then
    //         repeat
    //             if CustLed."Due Date" < TodaysDate then begin
    //                 CustLed."Number of Days Expired" := Abs(TodaysDate - CustLed."Due Date");
    //                 CustLed.Modify();
    //             end;
    //         until CustLed.Next() = 0;
    // end;
    procedure GetNumberOfDaysExpired(): Integer
    var
        NumberOfDays: Integer;
    begin
        if Today() <= "Due Date" then
            exit(0);
        NumberOfDays := "Due Date" - Today();
        exit(Abs(NumberOfDays));
    end;

}
