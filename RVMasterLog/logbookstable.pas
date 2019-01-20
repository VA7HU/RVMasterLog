unit LogbooksTable;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : LogbooksTable.pas
//
// Description :
//
// Called By :
//
// Calls : dlgHUDirNameEntry
//
// Ver. : 1.00
//
// Date : 20 Jan 2019
//
// ToDo: 20 Jan 2019 - LogbooksTable
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  // HULib Units
  HUDirNameEntry;

type

  { TfrmLogbooksTable }

  TfrmLogbooksTable = class(TForm)
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    procedure CreateNewLogbook;
  end;// TfrmLogbooksTable

var
  frmLogbooksTable: TfrmLogbooksTable;

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
procedure TfrmLogbooksTable.CreateNewLogbook;
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

//  memAction.Text := 'Creating New Logbook';
  frmLogbooksTable.ShowModal ;

end;// procedure TfrmLogbooksTable.CreateNewLogbook

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
procedure TfrmLogbooksTable.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;// procedure TfrmLogbooksTable.FormClose

//========================================================================================
procedure TfrmLogbooksTable.FormCreate(Sender: TObject);
begin

end;// procedure TfrmLogbooksTable.FormCreate

//========================================================================================
procedure TfrmLogbooksTable.FormShow(Sender: TObject);
begin

end;// procedure TfrmLogbooksTable.FormShow

//========================================================================================

end.// unit LogbooksTable

