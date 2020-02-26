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
// Date : 26 Feb 2020
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

  // If the SettingsDB does not exists we assume a New Installation and attempt
  // to create a default one. If unable, we terminate.

  if not FileExists(frmSettings.pcAppDatabaseName) then
  begin

showmessage('No Database Found');

showmessage('Delete Old Directory Structure');

    if DirectoryExists(frmSettings.pcAppUserDirectory) then
      DeleteDirectory(frmSettings.pcAppUserDirectory, False);

showmessage('Creating New Directory  Structure');

    CreateDir( frmSettings.pcAppUserDirectory );
    CreateDir( frmSettings.pcAppDataDirectory );
    CreateDir( frmSettings.pcAppSettingsDirectory );
    CreateDir( frmSettings.pcAppLogbooksDirectory );
    CreateDir( frmSettings.pcAppBackupsDirectory );

    if not frmSettings.CreateApplicationDataBase then
    begin
      showmessage('Failure');
      TerminateApp;
    end;// if not frmSettings.CreateApplicationDataBase

  end;// if not FileExists(frmSettings.pcAppDatabaseName)

  if frmSettings.LoadApplicationDatabase then
  begin
    showmessage('ApplicationDB loaded');
  end
  else
  begin
    showmessage('ApplicationDB load Failure');
    TerminateApp;
  end;// if not frmSettings.LoadApplicationDatabase

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

