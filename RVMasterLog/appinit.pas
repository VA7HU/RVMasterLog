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
// Date : 2 Jul 2019
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
var
  vstrTSqDefName : string;
  vstrTSqDllName : string;
  vstrTUserDir : string;
begin


  // Set the correct version of the SQLite files
  vstrTSqDefName := frmSettings.pSQLiteLibraryName + '.def';
  vstrTSqDllName := frmSettings.pSQLiteLibraryName + '.dll';

  if not FileExists(vstrTSqDefName) then
  begin

    {$ifdef CPU32}
    showmessage('32 Bit');
    CopyFile('sqlite3.def32', vstrTSqDefName);
    CopyFile('sqlite3.dll32', vstrTSqDllName);
    {$endif}

    {$ifdef CPU64}
    showmessage('64 Bit');
    CopyFile('sqlite3.def64', vstrTSqDefName);
    CopyFile('sqlite3.dll64', vstrTSqDllName);
    {$endif}

  end;// if not FileExists('sqlite3.def')

  // If the UserDirectories do not exist, there are only two possibilities:
  //
  //   1. This is an initial installation and they have not been created yet; or,
  //
  //   2. they have somehow disappeared.

  If not frmSettings.UserDataDirectoriesExist then
  begin
    HUErrorMsgOK ('erNoDataDirectoriesFound', erNoDataDirectoriesFound);
    Main.TerminateApp;
  end;// if not frmSettings.UserDataDIrectoriesExist

  frmSettings.ReadSettingsINIFile;

  dlgHUNagScreen.pDlgTitle := frmSettings.pAppName + '.exe';
  if dlgHUNagScreen.ShowModal = mrYes then
  begin
    dlgHURegistration.RequestRegistrationKey;
    dlgHURegistration.SHowModal;
  end;// dlgHUNagScreen.pDlgTitle := frmSettings.pAppName + '.exe'

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

