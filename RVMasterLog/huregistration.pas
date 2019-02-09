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
// Calls :  HUConstants
//										HUValidations : ValidNameCharacter
//																										ValidEmailCharacter
//
// Ver. : 1.0.0
//
// Date : 9 Feb 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  StdCtrls, ExtCtrls,
  // Application units
  // HULib units
  HUConstants, HUValidations;

type

  { TdlgHURegistration }

  TdlgHURegistration = class(TForm)
    bbtRegister: TBitBtn;
    bbtCancel: TBitBtn;
    edtFirstName: TEdit;
    edtRegistrationKey: TEdit;
    edtEmailAddress: TEdit;
    edtCallsign: TEdit;
    edtLastName: TEdit;
    lblFirstName: TLabel;
    lblLastName: TLabel;
    lblID: TLabel;
    lblCallsign: TLabel;
    lblEmailAddress: TLabel;
    memInstructions: TMemo;
				procedure edtCallsignKeyPress(Sender: TObject; var Key: char);
    procedure edtEmailAddressKeyPress(Sender: TObject; var Key: char);
    procedure edtFirstNameKeyPress(Sender: TObject; var Key: char);
				procedure edtLastNameKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fFirstName : string;
    fLastName : string;
    fEmailAddress : string;
    fCallsign : string;
    fRegKey : string;
    function GetFirstName : string;
    procedure SetFirstName(FirstName : string);
    function GetLastName : string;
    procedure SetLastName(LastName : string);
    function GetEmailAddress : string;
    procedure SetEmailAddress(EmailAddress : string);
    function GetCallsign : string;
    procedure SetCallsign(Callsign : string);
    function GetRegKey : string;
    procedure SetRegKey(RegKey : string);

  public
    property pFirstName : string read GetFirstName write SetFirstName;
    property pLastName : string read GetLastName write SetLastName;
    property pEmailAddress : string read GetEmailAddress write SetEmailAddress;
    property pRegKey : string read GetRegKey write SetRegKey;
    property pCallsign : string read GetCallsign write SetCallsign;

  end;// TdlgHURegistration

var
  dlgHURegistration: TdlgHURegistration;

implementation

{$R *.lfm}

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================
const

  cstrMemInstructions = K_CR +
                 'You are using an un-registered copy of this software.' +
                 K_CR + K_CR +
                 'Registering your copy will ensure you get notified of any ' +
                 'Bug Fixes, Changes or Enhancements to keep it current.' +
                 K_CR + K_CR +
                 'Your registration data will never be sold or shared.';

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
function TdlgHURegistration.GetFirstName: string;
begin
   Result := fFirstName;
end;// function TdlgHURegistration.GetFirstName

//----------------------------------------------------------------------------------------
procedure TdlgHURegistration.SetFirstName(FirstName: string);
begin
    fFirstName := FirstName;
end;// procedure TdlgHURegistration.SetFirstName

//========================================================================================
function TdlgHURegistration.GetLastName: string;
begin
   Result := fLastName;
end;// function TdlgHURegistration.GetLastName

//----------------------------------------------------------------------------------------
procedure TdlgHURegistration.SetLastName(LastName: string);
begin
    fLastName := LastName;
end;// procedure TdlgHURegistration.SetLastName

//========================================================================================
function TdlgHURegistration.GetEmailAddress: string;
begin
   Result := fEmailAddress;
end;// function TdlgHURegistration.GetEmailAddress

//----------------------------------------------------------------------------------------
procedure TdlgHURegistration.SetEmailAddress(EmailAddress: string);
begin
    fEmailAddress := EmailAddress;
end;// procedure TdlgHURegistration.SetEmailAddress

//========================================================================================
function TdlgHURegistration.GetCallsign: string;
begin
   Result := fCallsign;
end;// function TdlgHURegistration.GetCallsign

//----------------------------------------------------------------------------------------
procedure TdlgHURegistration.SetCallsign(Callsign: string);
begin
    fCallsign := Callsign;
end;// procedure TdlgHURegistration.SetCallsigns

//========================================================================================
function TdlgHURegistration.GetRegKey: string;
begin
   Result := fRegKey;
end;// function TdlgHURegistration.GetRegKeyn

//----------------------------------------------------------------------------------------
procedure TdlgHURegistration.SetRegKey(RegKey: string);
begin
    fRegKey := RegKey;
end;// procedure TdlgHURegistration.SetRegKey

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//========================================================================================
//          COMMAND BUTTON ROUTINES
//========================================================================================

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================
procedure TdlgHURegistration.edtFirstNameKeyPress(Sender: TObject; var Key: char
			);
begin
  Key := ValidNameCharacter(Key);
end;// procedure TdlgHURegistration.edtFirstNameKeyPress

//========================================================================================
procedure TdlgHURegistration.edtLastNameKeyPress(Sender: TObject; var Key: char
			);
begin
  Key := ValidNameCharacter(Key);
end;// procedure TdlgHURegistration.edtLastNameKeyPress

//========================================================================================
procedure TdlgHURegistration.edtEmailAddressKeyPress(Sender: TObject;
			var Key: char);
begin
  Key := ValidEmailCharacter(Key);
end;// procedure TdlgHURegistration.edtEmailAddressKeyPress

//========================================================================================
procedure TdlgHURegistration.edtCallsignKeyPress(Sender: TObject; var Key: char
			);
begin
  Key := ValidCallsignCharacter(Key);
end;// procedure TdlgHURegistration.edtCallsignKeyPress

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TdlgHURegistration.FormCreate(Sender: TObject);
begin
  memInstructions.Text := cstrMemInstructions;
end;// procedure TdlgHURegistration.FormCreate

//----------------------------------------------------------------------------------------
procedure TdlgHURegistration.FormShow(Sender: TObject);
begin

  edtFirstName.Text := '';
  edtLastName.Text := '';
  edtEmailaddress.Text := '';
  edtCallsign.Text := '';
  edtRegistrationKey.Text := '';

  edtFirstName.SetFocus;

end;// procedure TdlgHURegistration.FormShow

//========================================================================================
end.// unit HURegistration

