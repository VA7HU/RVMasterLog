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
// Date : 3 Feb 2019
//
// *ToDo:
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
const
  imNoINIFile = '    The file RVMasterLog.ini Does Not Exist.'
              + K_CR
              + ' Is this an Initial installation of RVMasterLog ?';

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
  //
  if frmSettings.INIFileExists then
  begin
     frmSettings.ReadSettingsINIFile;
  end
  else
  begin

    if HUInformationMsgYN('', imNoINIFile) = mrYes then
    begin

      // If the User Directory has not been set then this is an Initial installation
      if frmSettings.pUserDirectory  = frmSettings.pSystemUserDirectory then
      begin

        showmessage('Creating Dirs');

        if not frmSettings.CreateUserDirectories then
        begin
          showmessage('Not Created');
          InitFailure := True;
        end;// if not frmSettings.CreateUserDirectories

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

//        CopyFile (frmSettings.pApplicationDirectory +
//                      '\' + 'UserData' + '\' + frmHUGeoDB.pHUGeoDBName,
//                  frmHUGeoDB.pHUGeoDBPath);

        frmSettings.ReadSettingsINIFile;

      end;// if frmSettings.pUserDirectory  = frmSettings.pSystemUserDirectory

    end
    else
    begin
      showmessage('Must Close');
      InitFailure := True;
    end;// if HUErrorMsgYN(emNoFile, em1) = mrYes

  end;// if frmSettings.INIFileExists

  if InitFailure then
  begin
    showmessage('Halting');
    Halt;
  end;

  if dlgHUNagScreen.ShowModal = mrYes then
      dlgHURegistration.ShowModal
  else
  begin
    HUInformationMsgOK ('Info Type', 'You May Register Later');
  end;




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
