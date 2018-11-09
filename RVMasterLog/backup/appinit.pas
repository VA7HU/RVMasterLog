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
// Date : 09 Nov 2018
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
  em1 = '    RVMasterLog Does Not Exist.'
      + K_CR
      + ' Do You Want to Create a New One ?';

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

    // Get Application Directory
    frmSettings.pApplicationDirectory := GetCurrentDir;

    // Create Application User Directories if Necessary
    if frmSettings.pUserDirectory  = '' then
     begin
      showmessage('Creating Dirs');
      frmSettings.CreateUserDirectories;
      //vstrNewUserDir := GetUserDir + 'AppData\Roaming\RVMasterLog';
      //showmessage('Creating User Directory');
      //CreateDir(vstrNewUserDir);
      //frmSettings.pUserDirectory := vstrNewUserDir;


     end
    else
      showmessage(frmSettings.pSettingsDirectory);

  // If the .ini file does not exist we display an Error message and prompt the user
  // for action.
  if frmSettings.INIFileExists then
  begin
    frmSettings.ReadSettingsINIFile;
  end
  else
  begin

   if HUErrorMsgYN(emNoFile, em1) = mrYes then
    begin
      frmSettings.ReadSettingsINIFile;
    end
    else
    begin
      InitFailure := True;
    end;// if HUErrorMsgYN(emNoFile, em1) = mrYes

  end;// if frmSettings.INIFileExists

//  if InitFailure then
//    Result := False;

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

