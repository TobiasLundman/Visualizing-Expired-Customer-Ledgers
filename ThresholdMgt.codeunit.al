codeunit 50105 ThresholdMgt
{
    //Access = Internal;
    // InherentEntitlements = X;
    // InherentPermissions = X;
    // Permissions = tabledata "ThresholdSetup" = r, w, x, d;

    // trigger OnRun()
    // begin

    // end;

    // var
    //     myInt: Integer;

    //procedure RunThreshHoldSetup(var ThresholdSetup: Notification)
    // var
    //     myInt: Integer;
    // begin
    //     Page.Run(Page::"ThresholdSetup");
    // end;

    // var
    //     MyNotification: Notification;
    // begin
    //     MyNotification.Id('2f511c20-b456-4894-8472-4eed76826c65');
    //     MyNotification.Message('Here comes your notification text.');
    //     MyNotification.Send();
    //     //Page.Run(Page::"ThresholdSetup");
    // end;

    // procedure RunThresholdSetup()
    // begin
    //     Page.Run(Page::"Threshold Setup Page");
    // end;

    // procedure RunThreshHoldSetup(var ThresholdSetup: Notification)
    // // var
    // //     myInt: Integer;
    // begin
    //     //Page.Run(page::"Assisted Company Setup Wizard");
    //     Page.Run(page::"Threshold Setup Page");
    // end;

    // [EventSubscriber(ObjectType::Page, Page::"Customer Ledger Entries", 'OnOpenPageEvent',
    //              '', false, false)]
    // local procedure CheckInfoOnCustLedger(var Rec: Record "Cust. Ledger Entry")
    // var
    //     ThresholdInformation: Record "ThreshldSetup";
    //     ThresholdNotification: Notification;
    // begin
    //     if ThresholdInformation.Get() then
    //         if (ThresholdInformation."Threshold 1 Value" < 0) and
    //            (ThresholdInformation."Threshold 2 Value" < 0) then
    //             exit;

    //     ThresholdNotification.Id := CreateGuid();
    //     ThresholdNotification.Message := 'Threshold Information is missing.';
    //     ThresholdNotification.AddAction('Open Threshold Information',
    //                                   Codeunit::"ThresholdMgt",
    //                                   'RunThreshHoldSetup');
    //     ThresholdNotification.Send();
    // end;
    procedure RunThresholdSetup(var ThresholdSetupNotification: Notification)
    var
        ThresholdSetup: Page "Threshold Setup Page";
    begin
        ThresholdSetup.Run();
    end;
}