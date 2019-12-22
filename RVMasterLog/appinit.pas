unit AppInit;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : AppInit.pas
//
// Description :
//
// Called By TfrmMain.FormShow:
//
// Calls :  frmSettings : GetSQLiteLibraryName
//                        iniFileExists
//                        ReadSettinsINIFile
//                        pApplicationDirectory
//          HUConstants
//          HUMessageBoxes
//          HUNagScreen : dlgHUNagScreen.ShowModal
//          HURegistration : RequestRegistrationKey
//          Main : TerminateApp
//
// Ver. : 1.0.0
//
// Date : 22 Dec 2019
//
//========================================================================================

interface

uses
  Classes, Controls, Dialogs, FileUtil, SysUtils,
  // Application Units
  AppSettings,
  // HULib Units
  HUConstants, HUMessageBoxes, HUNagScreen, HURegistration;

function Initialize : Boolean;

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

//========================================================================================
//          PUBLIC VARIABLES
//========================================================================================

implementation

uses
  Main;

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================

//==========
// Nessages
//==========

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================

//========================================================================================
//          PRIVATE ROUTINES
//========================================================================================

//========================================================================================
//          PUBLIC ROUTINES
//========================================================================================
function Initialize : Boolean;
begin

  // If the SettingsDB does not exists we treat it like a New Installation

  if not FileExists(frmSettings.pAppDatabaseName) then
    if not frmSettings.CreateApplicationDataBase then
    begin
      showmessage('Failure');
      TerminateApp;
  end;// if not frmSettings.CreateApplicationDataBase

  frmSettings.LoadApplicationDatabase;

  if dlgHUNagScreen.ShowModal = mrOK then
  begin
    // Check for Registration
    if dlgHURegistration.pRegKey = K_SP then
      dlgHURegistration.ShowModal;
  end;// if dlgHUNagScreen.ShowModal = mrOK

showmessage('Init Complete');

  Result := True;

end;// function Initialize

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
end.// unit AppInit

