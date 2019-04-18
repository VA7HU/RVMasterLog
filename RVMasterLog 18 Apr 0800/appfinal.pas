unit AppFinal;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit :
//
// Description :
//
// Called By : Main : TfrmMain.FormClose
//
// Calls :  AppSettings : frmSettings.WriteSettingsINIFile
//
// Ver. : 1.0.0
//
// Date : 2 Nov 2018
//
// *ToDo:
//
//========================================================================================

interface

uses
  Classes, Dialogs, SysUtils,
  //
  AppSettings;

procedure Finalize;

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
procedure Finalize;
begin

  showmessage('Finalize');
  frmSettings.WriteSettingsINIFile;

end;// procedure Finalize

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

end.// unit AppFinal

