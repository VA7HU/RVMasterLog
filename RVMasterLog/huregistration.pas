unit HURegistration;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : HURegistration.pas
//
// Description :
//
// Called By :
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 2 Feb 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  StdCtrls, ExtCtrls;

type

  { TdlgHURegistration }

  TdlgHURegistration = class(TForm)
    bbtRegister: TBitBtn;
    bbtCancel: TBitBtn;
    CbxCountry: TComboBox;
    edtPostalcODE: TEdit;
    edtProvState: TEdit;
    edtCity: TEdit;
    edtAddress2: TEdit;
    edtAddress1: TEdit;
    edtEmail: TEdit;
    edtCallsign: TEdit;
    edtUserID: TEdit;
    edtLastName: TEdit;
    edtFirstNamer: TEdit;
    Label1: TLabel;
    lblCountry: TLabel;
    lblPostalCode: TLabel;
    lblCity: TLabel;
    lblAddress2: TLabel;
    lblAddress1: TLabel;
    lblFirstName: TLabel;
    lblLastName: TLabel;
    lblUserID: TLabel;
    lblCallsign: TLabel;
    lblEmail: TLabel;
    memInstructions: TMemo;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;// TdlgHURegistration

var
  dlgHURegistration: TdlgHURegistration;

implementation

{$R *.lfm}

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================

//========================================================================================
//          PUBLIC VARIABLES
//========================================================================================

//========================================================================================
//          PRIVATE ROUTINES
//========================================================================================

//========================================================================================
//          PUBLIC ROUTINES
//========================================================================================

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//========================================================================================
//          COMMAND BUTTON ROUTINES
//========================================================================================

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TdlgHURegistration.FormCreate(Sender: TObject);
begin

end;// procedure TdlgHURegistration.FormCreate

//----------------------------------------------------------------------------------------
procedure TdlgHURegistration.FormShow(Sender: TObject);
begin

end;// procedure TdlgHURegistration.FormShow

//========================================================================================
end.// unit HURegistration

