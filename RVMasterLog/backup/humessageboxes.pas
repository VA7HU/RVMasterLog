unit HUMessageBoxes;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : AppInit.pas
//
// Description :
//
// Called By : Main : TfrmMain.FormShow
//
// Calls :  NagScreen : TfrmNagScreen.FormShow
//          Register : frmRegister.ShowModal
//
// Ver. : 1.00
//
// Date : 30 Jul 2018
//
//========================================================================================

interface

uses
  Classes, Controls, Dialogs, Forms, LCLType, SysUtils,
  HUConstants;

function HUErrorMsgYN (ErrorType, ErrorMsg : String) : Integer;

implementation

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

                    {ERROR MESSAGES}

function HUErrorMsgYN (ErrorType, ErrorMsg : String) : Integer;
begin
  Result := MessageDlg('ERROR' + ErrorType, ErrorMsg, mtError,
  [mbYes, mbNo],0);
end;


//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================

end.// unit HUMessageBoxes
