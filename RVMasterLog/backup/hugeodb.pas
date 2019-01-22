unit HUGeoDB;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : HUGeoDB.pas
//
// Description :
//
// Called By : Main : TfrmMain.mnuMainToolsDBMaintenanceHUGeoDBClick
//
// Calls : AppSettings
//
// Ver. : 1.0.0
//
// Date : 22 Jan 2019
//
// ToDo: 22 Jan 2019 - HUGeoDB : FormShow
//
//========================================================================================

interface

uses
  Classes, SysUtils, db, sqlite3conn, sqldb, FileUtil, Forms, Controls,
  Graphics, Dialogs, Buttons, DBGrids, DbCtrls,
  // Application units
  AppSettings;
  // HULib units

type

  { TfrmHUGeoDB }

  TfrmHUGeoDB = class(TForm)
    bbtOK: TBitBtn;
    bbtCancel: TBitBtn;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fHUGeoDBName : string;
    fHUGeoDBPath : string;
    function GetHUGeoDBName : string;
    procedure SetHUGeoDBName(DBName : string);
    function GetHUGeoDBPath : string;
    procedure SetHUGeoDBPath(DBPath : string);

  public
    property pHUGeoDBName : string read GetHUGeoDBName write SetHUGeoDBName;
    property pHUGeoDBPath : string read GetHUGeoDBPath write SetHUGeoDBPath;

  end;

var
  frmHUGeoDB: TfrmHUGeoDB;

implementation

{$R *.lfm}

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================
const
  cstrHUGeoDBName = 'HUGeoDB.sl3';

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================
var
  vstrHUGeoDBPath : String;

//========================================================================================
//          PUBLIC VARIABLES
//========================================================================================

//========================================================================================
//          PRIVATE ROUTINES
//========================================================================================

//========================================================================================
//          PUBLIC ROUTINES
//========================================================================================

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================
function TfrmHUGeoDB.GetHUGeoDBName: string;
begin
   Result := cstrHUGeoDBName;
end;// function TfrmHUGeoDB.GetHUGeoDBName

//----------------------------------------------------------------------------------------
procedure TfrmHUGeoDB.SetHUGeoDBName(DBName: string);
begin
    fHUGeoDBName := DBName;
end;// procedure TfrmHUGeoDB.SetHUGeoDBName

//========================================================================================
function TfrmHUGeoDB.GetHUGeoDBPath: string;
begin
   Result := fHUGeoDBPath;
end;// function TfrmHUGeoDB.GetHUGeoDBPath

//----------------------------------------------------------------------------------------
procedure TfrmHUGeoDB.SetHUGeoDBPath(DBPath: string);
begin
    fHUGeoDBPath := DBPath;
end;// procedure TfrmHUGeoDB.SetHUGeoDBPath

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
procedure TfrmHUGeoDB.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;// procedure TfrmHUGeoDB.FormClose

//----------------------------------------------------------------------------------------
procedure TfrmHUGeoDB.FormCreate(Sender: TObject);
begin

end;// procedure TfrmHUGeoDB.FormCreate

//----------------------------------------------------------------------------------------
procedure TfrmHUGeoDB.FormShow(Sender: TObject);
begin

  pHUGeoDBPath := frmSettings.pUserDirectory + '\' + pHUGeoDBName;
  showmessage(pHUGeoDBPath);

  SQLite3Connection1.Connected := False;
  SQLQuery1.Active := False;
  SQLTransaction1.Active := False;

  SQLite3Connection1.DatabaseName := pHUGeoDBPath;
  SQLite3Connection1.Transaction := SQLTransaction1;

  SQLTransaction1.DataBase := SQLite3Connection1;

  SQLQuery1.DataBase := SQLite3Connection1;
  SQLQuery1.Transaction := SQLTransaction1;
  SQLQuery1.SQL.Text := 'select * from CountryTbl';

  SQLTransaction1.Active := True;
  SQLite3Connection1.Open;
  SQLQuery1.Open;

end;// procedure TfrmHUGeoDB.FormShow

//========================================================================================

end.// unit HUGeoDB

