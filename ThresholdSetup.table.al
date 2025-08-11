table 50102 ThreshldSetup
{
    DataClassification = CustomerContent;
    Caption = 'Threshold Setup';
    //DrillDownPageID = "Threshold Setup Page";
    //LookupPageID = "Threshold Setup Page";

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary Key';
        }
        field(2; "Threshold 1 Value"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Threshold 1 Value';
        }
        field(3; "Threshold 2 Value"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Threshold 2 Value';
        }
        field(4; "Threshold 1 Style"; Enum "StyleType")
        {
            DataClassification = CustomerContent;
            Caption = 'Threshold 1 Style';
            //TableRelation = "StyleType";
        }
        field(5; "Threshold 2 Style"; Enum "StyleType")
        {
            DataClassification = CustomerContent;
            Caption = 'Threshold 2 Style';
            //TableRelation = "StyleType";
        }

    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}