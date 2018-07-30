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
// Ver. : 1.00
//
// Date : 30 Jul 2018
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
      + huCR
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

begin

  showmessage('Initialize');

  // Start the application setup
  frmSettings.pApplicationDirectory := GetCurrentDir;

  // If the .ini file does not exist we display an Error message and prompt the user
  // for action.
  if not frmSettings.INIFileExists then
  begin
    showmessage('Read It');
    frmSettings.ReadSettingsINIFile;
  end
  else
  begin

    if HUErrorMsgYN(emNoFile, em1) = mrYes then
    begin
      showmessage('Read It');
      frmSettings.ReadSettingsINIFile;
    end
    else
    begin
      showmessage('Close');
      InitFailure := True;
    end;// if HUErrorMsgYN(emNoFile, em1) = mrYes

  end;// if frmSettings.INIFileExists

  if InitFailure then
    Result := False;



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

