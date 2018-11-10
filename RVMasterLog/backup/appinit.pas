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
//
// Ver. : 1.0.0
//
// Date : 10 Nov 2018
//
//========================================================================================

interface

uses
  Classes, Controls, Dialogs, SysUtils,
  //
  AppSettings, HUConstants, HUMessageBoxes;

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
  vstrNewUserDir : string;

begin

  InitFailure := False;

  // Get Application Directory
  frmSettings.pApplicationDirectory := GetCurrentDir;

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

{     // If the User Directory has not been set then this is an Initial installation
      if frmSettings.pUserDirectory  = '' then
      begin

        showmessage('Creating Dirs');

        if not frmSettings.CreateUserDirectories then
        begin
          showmessage('Not Created');
          InitFailure := True;
        end;// if frmSettings.pUserDirectory  = ''

      frmSettings.ReadSettingsINIFile; }

    end
    else
    begin
      InitFailure := True;
    end;// if HUErrorMsgYN(emNoFile, em1) = mrYes

  end;// if frmSettings.INIFileExists







 { if InitFailure then
  begin
    Result := False;
    Exit;
  end; }







      {begin
        showmessage('Creating Dirs');
      if not frmSettings.CreateUserDirectories then
      begin
        showmessage('Not Created');
        InitFailure := True;
      end
      else
        showmessage('Not created');
    end;// if frmSettings.pUserDirectory  = ''

    if InitFailure then
    begin
      Result := False;
      Exit;
    end; }


  if InitFailure then
    Result := False;

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

