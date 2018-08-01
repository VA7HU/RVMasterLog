unit ManufacturerDB;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : ManufacturerDB.pas
//
// Description :
//
// Called By :
//
// Calls :  AppSettings : pApplicationDirectory
//
// Ver. : 1.0.0
//
// Date : 31 Jul 2018
//
//========================================================================================

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DbCtrls, Buttons, ExtCtrls, StdCtrls, DBGrids,
  //
  AppSettings;

type

  { TfrmManufacturerDB }

  TfrmManufacturerDB = class(TForm)
    bbtClose: TBitBtn;
    bbtOK: TBitBtn;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBTManufacturersName: TDBText;
    Label1: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure bbtCloseClick(Sender: TObject);
    procedure bbtOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmManufacturerDB: TfrmManufacturerDB;

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

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//========================================================================================
//          COMMAND BUTTON ROUTINES
//========================================================================================
procedure TfrmManufacturerDB.bbtCloseClick(Sender: TObject);
begin

end;// procedure TfrmManufacturerDB.bbtCloseClick

//----------------------------------------------------------------------------------------
procedure TfrmManufacturerDB.bbtOKClick(Sender: TObject);
begin

end;// procedure TfrmManufacturerDB.bbtOKClick

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmManufacturerDB.FormShow(Sender: TObject);

var
  Query : string;
  names : TStringList;
  currentLine : string;
  i : Integer;
  currentField : string;

begin

  // Connect to SQLite3
  SQLite3Connection1.DatabaseName
        := frmSettings.pApplicationDirectory + '\Application.db3';
  SQLQuery1.SQLConnection := SQLite3Connection1;
  SQLite3Connection1.Connected := True;
  Query := 'SELECT * FROM Manufacturers;';
  try
    SQLQuery1.SQL.Text := query;
    SQLQuery1.Active := true;
  except
    on E: Exception do
      Memo1.Text := 'Exception raised with message: ' + E.Message;
  end;

  if SQLQuery1.IsEmpty then
    showmessage('Empty')
  else
    showmessage('Full');




 { SQLTransaction1.DataBase := SQLite3Connection1;


  SqLQuery1.Transaction := SQLTransaction1;
  SQLQuery1.Database := SQLite3Connection1;
  SQLQuery1.SQL.Text := 'Select * from Manufacturer';
  DataSource1.DataSet := SQLquery1;
  DBNavigator1.DataSource := Datasource1;
  DBGrid1.DataSource := DataSource1; }

end;// procedure TfrmManufacturerDB.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmManufacturerDB.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;// procedure TfrmManufacturerDB.FormClose

//========================================================================================

{ TfrmManufacturerDB }

end.// unit ManufacturerDB

