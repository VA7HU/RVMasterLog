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
// Date : 1 Aug 2018
//
//========================================================================================

interface

uses
  Classes, Controls, Dialogs, SysUtils,
  //
  AppSettings, HUConstants, HUMessageBoxes;

function Initialize : Boolean;

implementation

uses
  Main;

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

  // Get correct SQLite .dll
   if GetEnvironmentVariable('ProgramFiles')=GetEnvironmentVariable('ProgramFiles(x86)') then
    showmessage('Win32 program running on Win64')
  else
    showmessage('Win32 program running on Win32');

 { frmMain.SQLite3Connection1.DatabaseName
        := frmSettings.pApplicationDirectory + '\Application.db3';
  frmMain.SQLite3Connection1.Connected:= True;

  showmessage(frmMain.SQLite3Connection1.DatabaseName);}







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

