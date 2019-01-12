unit Logbook;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : Logbook.pas
//
// Description :
//
// Called By :
//
// Calls : HUDirNameEntry : dlgHUDirNameEntry.ShowModal
//                          TdlgHUDirNameEntry.bbtOKClick
//
// Ver. : 1.0.0
//
// Date : 12 Jan 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, Buttons, ExtCtrls,
  // Application units
  AppSettings,
  // HULibrary units
  HUDirNameEntry;

type

  { TfrmLogbook }

  TfrmLogbook = class(TForm)
    bbtCancel: TBitBtn;
    bbtOK: TBitBtn;
    edtLogbookName: TEdit;
    memAction: TMemo;
    PageControl1: TPageControl;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CreateNewLogbook;
    procedure OpenLogbook;
    procedure DeleteLogbook;
    procedure SaveLogbook;
  private

  public

  end;

var
  frmLogbook: TfrmLogbook;

implementation

{$R *.lfm}

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
procedure TfrmLogbook.CreateNewLogbook;
var
  vstrNewDir: string;

begin

  dlgHUDirNameEntry.pBaseDirName := frmSettings.pLogbooksDirectory;
  dlgHUDirNameEntry.pDirName := '';
  dlgHUDirNameEntry.ShowModal;
  vstrNewDir := dlgHUDirNameEntry.pDirName;
  showmessage(vstrNewDir);

  if vstrNewDir = '' then
    Exit;



{  //edtLogbookName.Text := frmSettings.pLogbooksDirectory + '\' + dlgHUDirNameEntry.pDirName;
 // vstrNewDir := frmSettings.pUserDirectory + '\' + cstrLogbooksDirectoryName;
  vstrNewDir := dlgHUDirNameEntry.pDirName;

  showmessage(vstrNewDir);

  memAction.Text := 'Creating New Logbook';

//  CreateDir(vstrNewDir);

vstrNewDir := frmSettings.pUserDirectory + '\' + cstrLogbooksDirectoryName;
CreateDir(vstrNewDir);

  if not CreateUserDirectories(vstrNewDir)then
  begin
    showmessage('Logbook FAILED');
 //   Result := False;
    exit;
  end
  else
    showmessage('LogBook CREATED');

 // if Result = False then
    Exit; }

  frmLogbook.ShowModal ;

  //end;

end;// procedure TfrmLogbook.CreateNewLogbook

//----------------------------------------------------------------------------------------
procedure TfrmLogbook.OpenLogbook;
begin
  showmessage('Open Log book');
  memAction.Append('OPEN LOGBOOK');
  frmLogbook.ShowModal ;
end;// procedure TfrmLogbook.OpenLogbook

//----------------------------------------------------------------------------------------
procedure TfrmLogbook.DeleteLogbook;
begin
  showmessage('Delete Logbook');
//lblProcessing.Caption := 'DELETE LOGBOOK';
  frmLogbook.ShowModal;
end;// procedure TfrmLogbook.DeleteLogbook

//----------------------------------------------------------------------------------------
procedure TfrmLogbook.SaveLogbook;
begin
  showmessage('Save Logbook');
 // lblProcessing.Caption := 'SAVE LOGBOOK';
  frmLogbook.ShowModal;
end;// procedure TfrmLogbook.SaveLogbook

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//========================================================================================
//          COMMAND BUTTON ROUTINES
//========================================================================================

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmLogbook.FormCreate(Sender: TObject);
begin

end;// procedure TfrmLogbook.FormCreate

//========================================================================================
procedure TfrmLogbook.FormShow(Sender: TObject);
begin
  showmessage('Logbook Form Show');
end;// procedure TfrmLogbook.FormShow

//========================================================================================

end.// unit Logbook

