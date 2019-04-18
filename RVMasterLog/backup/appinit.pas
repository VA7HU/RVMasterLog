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
//
// Ver. : 1.0.0
//
// Date : 18 Apr 2019
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
function Initialize : Boolean;

var
  InitFailure : Boolean;

begin

  InitFailure := False;

  frmSettings.pApplicationDirectory := GetCurrentDir;
  frmSettings.pSystemUserDirectory := GetUserDir;

  // If the .ini file exists we read it.
  //
  //If it does not there are only two possibilities:
  //
  //   1. This is an initial installation and it has not been created yet; or,
  //
  //   2. It has somehow disappeared.
  //
  // We display an Information message and give the user the option of either creating a
  // default .ini file or closing the application and loading a backup .ini file or
  // re-installing the appplication.

  if not frmSettings.INIFileExists then
  begin

    if HUInformationMsgYN('imNoINIFile', imNoINIFile) = mrYes then
    begin

      // This is an Initial Installation
      if frmSettings.pUserDirectory  = frmSettings.pSystemUserDirectory then
      begin

        HUInformationMsgOK('imCreateUserDirs', imCreateUserDirs);

        if not frmSettings.CreateUserDirectories then
        begin
          HUErrorMsgOK ('erCreateUserDirsFailed', erCreateUserDirsFailed);
          InitFailure := True;
          Halt;
        end;

        // Load the databases
          CopyFile (frmSettings.pApplicationDirectory +
                    '\' + 'UserData' + '\' + 'ApplicationDB.sl3',
                    frmSettings.pUserDirectory + '\' + 'ApplicationDB.sl3');

          CopyFile (frmSettings.pApplicationDirectory +
                    '\' + 'UserData' + '\' + 'LogbooksDB.sl3',
                    frmSettings.pUserDirectory + '\' + 'LogbooksDB.sl3');

          CopyFile (frmSettings.pApplicationDirectory +
                    '\' + 'UserData' + '\' + 'ManufacturersDB.sl3',
                    frmSettings.pUserDirectory + '\' + 'ManufacturersDB.sl3');

   //     CopyFile (frmSettings.pApplicationDirectory +
   //               '\' + 'UserData' + '\' + frmHUGeoDB.pHUGeoDBName,
   //               frmHUGeoDB.pHUGeoDBPath);

          frmSettings.ReadSettingsINIFile;

      end;// if frmSettings.pUserDirectory  = frmSettings.pSystemUserDirectory

    end;// if HUInformationMsgYN('', imNoINIFile) = mrYes

  end;// if not frmSettings.INIFileExists

  if InitFailure then
    Exit;

  dlgHUNagScreen.pDlgTitle := frmSettings.pApplicationName + '.exe';

  if dlgHUNagScreen.ShowModal = mrYes then
  begin
      dlgHURegistration.GetREgistrationKey;
      showmessage('RegID = ' + dlgHURegistration.pRegKey);
  end
  else
    showmessage('Register Later');
  // if dlgHUNagScreen.ShowModal = mrYes

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

