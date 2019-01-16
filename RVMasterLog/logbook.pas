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
// Date : 15 Jan 2019
//
// ToDo: Todo_text
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
    fAction : string;
    procedure SetAction(Act : string);
    function GetAction : string;
  public
    property pAction : string read GetAction write SetAction;

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

  dlgHUDirNameEntry.pDirName := '';
  dlgHUDirNameEntry.ShowModal;
  vstrNewDir := dlgHUDirNameEntry.pDirName;

  if vstrNewDir = '' then
    Exit;

  if not CreateDir(vstrNewDir)then
  begin
    showmessage('Logbook FAILED');
    exit;
  end;

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
  memAction.Text := 'DELETE LOGBOOK';
  frmLogbook.ShowModal;
end;// procedure TfrmLogbook.DeleteLogbook

//----------------------------------------------------------------------------------------
procedure TfrmLogbook.SaveLogbook;
begin
  showmessage('Save Logbook');
  memAction.Text := 'SAVE LOGBOOK';
  frmLogbook.ShowModal;
end;// procedure TfrmLogbook.SaveLogbook

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================
function TfrmLogbook.GetAction: string;
begin
   Result := fAction;
end;// function TfrmLogbook.GetAction

//----------------------------------------------------------------------------------------
procedure TfrmLogbook.SetAction(Act: string);
begin
    fAction := Act;
end;// procedure TfrmLogbook.SetAction

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

end;// procedure TfrmLogbook.FormShow

//========================================================================================
end.// unit Logbook

