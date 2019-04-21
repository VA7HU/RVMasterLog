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
// Calls :  AppSettings : iniFileExists
//                        ReadSettinsINIFile
//                        pApplicationDirectory
//          HUConstants
//          HUMessageBoxes
//          HUNagScreen : dlgHUNagScreen.ShowModal
//          HURegistration : dlgHURegistration.ShowModal
//          Main : TerminateApp
//
// Ver. : 1.0.0
//
// Date : 20 Apr 2019
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
function Initialize : Boolean;
var
  vstrTUserDir : string;
begin

  // If the UserDirectory does not exist, there are only two possibilities:
  //
  //   1. This is an initial installation and it has not been created yet; or,
  //
  //   2. It has somehow disappeared.
  //
  // We display an Error message and give the user the option of either creating
  // the RVMasterLog user files or terminating appplication.

  If not frmSettings.UserDataDirectoriesExist then
  begin
    HUErrorMsgOK ('erNoDataDirectoriesFound', erNoDataDirectoriesFound);
    Main.TerminateApp;
  end;// if not frmSettings.UserDataDIrectoriesExist

  // Generate a default file or load a save one
  frmSettings.ReadSettingsINIFile;

  dlgHUNagScreen.pDlgTitle := frmSettings.pAppName + '.exe';
  dlgHUNagScreen.ShowModal;

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

