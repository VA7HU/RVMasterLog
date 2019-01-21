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
// ToDo: 21 Jan 2019 - LogbooksTable
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  // Applikcation Units
  AppSettings,
  // HULib Units
  HUConstants, HUDirNameEntry;

type

  { TfrmLogbooksTable }

  TfrmLogbooksTable = class(TForm)
    memMode: TMemo;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fMode : string;
    fLogName : string;
    fLogPath : string;
    function GetMode : string;
    procedure SetMode(Mode : string);
    function GetLogName : string;
    procedure SetLogName(LogName : string);
    function GetLogPath : string;
    procedure SetLogPath(LogPath : string);
  public
    property pMode : string read GetMode write SetMode;
    property pLogName : string read GetLogName write SetLogName;
    property pLogPath : string read GetLogPath write SetLogPath;
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
  vstrNewLogPath: string;

begin

  dlgHUDirNameEntry.pDirName := '';
  dlgHUDirNameEntry.pDirPath := frmSettings.pLogBooksDirectory;
  dlgHUDirNameEntry.ShowModal;
  vstrNewLogPath := dlgHUDirNameEntry.pDirPath;

  // We cancelled here
  if vstrNewLogPath = '' then
    Exit;

  if not CreateDir(vstrNewLogPath)then
  begin
    showmessage('Logbook FAILED');
    exit;
  end;

  pMode := 'Create';
  pLogName := dlgHUDirNameEntry.pDirName;
  pLogPath := dlgHUDirNameEntry.pDirPath;
  frmLogbooksTable.ShowModal ;

end;// procedure TfrmLogbooksTable.CreateNewLogbook

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================
function TfrmLogbooksTable.GetMode: string;
begin
   Result := fMode;
end;// function TfrmLogbooksTable.GetMode

//----------------------------------------------------------------------------------------
procedure TfrmLogbooksTable.SetMode(Mode: string);
begin
    fMode := Mode;
end;// procedure TfrmLogbooksTable.SetMode

//========================================================================================
function TfrmLogbooksTable.GetLogName: string;
begin
   Result := fLogName;
end;// function TfrmLogbooksTable.GetLogName

//----------------------------------------------------------------------------------------
procedure TfrmLogbooksTable.SetLogName(LogName: string);
begin
    fLogName := LogName;
end;// procedure TfrmLogbooksTable.SetMode

//========================================================================================
function TfrmLogbooksTable.GetLogPath: string;
begin
   Result := fLogPath;
end;// function TfrmLogbooksTable.GetLogPath

//----------------------------------------------------------------------------------------
procedure TfrmLogbooksTable.SetLogPath(LogPath: string);
begin
    fLogPath := LogPath;
end;// procedure TfrmLogbooksTable.SetPath

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

  case pMode of
    'Create': begin
                memMode.Lines.Add('Creating Logbook');
                memMode.Lines.Add(pLogName);

                // Copy and Rename Databases
                //CopyFile(const SrcFilename, DestFilename: string);

              end;// 'Create'

    'Edit': memMode.Text := 'Edit';

  end;// case pMode of

end;// procedure TfrmLogbooksTable.FormShow

//========================================================================================

end.// unit LogbooksTable

