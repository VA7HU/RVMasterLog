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
// Date : 29 Dec 2018
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
begin

  dlgHUDirNameEntry.pDirName := '';
  dlgHUDirNameEntry.ShowModal;

  if dlgHUDirNameEntry.pDirName = '' then
    Exit;

  edtLogbookName.Text := frmSettings.pUserDirectory + '\' + dlgHUDirNameEntry.pDirName;
  memAction.Text := 'Creating New Logbook';
  frmLogbook.ShowModal ;

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

