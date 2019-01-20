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
// Calls :
//
// Ver. : 1.00
//
// Date : 20 Jan  2019
//
// ToDo:
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  // Application Units
  // HULib Units
  HUDirNameEntry;
type

  { TrmLogbooksTable }

  TfrmLogbooksTable = class(TForm)
    procedure CreateNewLogbook;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

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
//  frmLogbook.ShowModal ;

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

end;// procedure Tfrm1LogbooksTable.FormClose

//========================================================================================
procedure TfrmLogbooksTable.FormCreate(Sender: TObject);
begin
showmessage('Creating Table');
end;// procedure TForm1LogbooksTable.FormCreate

//========================================================================================
procedure TfrmLogbooksTable.FormShow(Sender: TObject);
begin

end;// procedure TFormLogbooksTable.FormShow

//========================================================================================

{ TFormLogbooksTable }

end.// unit LogbooksTable

