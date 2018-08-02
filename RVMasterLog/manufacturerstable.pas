unit ManufacturersTable;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : ManufacturersTable.pas
//
// Description :
//
// Called By :
//
// Calls :  AppSettings : pApplicationDirectory
//          HUMessageBoxes  : HUInformationMsgOK
//
// Ver. : 1.0.0
//
// Date : 2 Aug 2018
//
//========================================================================================

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DbCtrls, Buttons, ExtCtrls, StdCtrls, DBGrids,
  //
  AppSettings, HUMessageBoxes;

type

  { TfrmManufacturersTable }

  TfrmManufacturersTable = class(TForm)
    bbtClose: TBitBtn;
    bbtOK: TBitBtn;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBTManufacturersName: TDBText;
    Label1: TLabel;
    Panel1: TPanel;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure bbtCloseClick(Sender: TObject);
    procedure bbtOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmManufacturersTable: TfrmManufacturersTable;

implementation

uses
  Main;

{$R *.lfm}

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================
const

  cstrApplicationDBName = 'Application.db3';
  cstrManufacturersTableName = 'Manufacturers';

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================
var

  vstrApplicationDatabasePathName : string;

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
procedure TfrmManufacturersTable.bbtCloseClick(Sender: TObject);
begin

end;// procedure TfrmManufacturersTable.bbtCloseClick

//----------------------------------------------------------------------------------------
procedure TfrmManufacturersTable.bbtOKClick(Sender: TObject);
begin

end;// procedure TfrmManufacturersTable.bbtOKClick

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmManufacturersTable.FormCreate(Sender: TObject);
begin

end;// procedure TfrmManufacturersTable.FormCreate

//----------------------------------------------------------------------------------------
procedure TfrmManufacturersTable.FormShow(Sender: TObject);
begin

  vstrApplicationDatabasePathName := frmSettings.pApplicationDirectory +
                                 '\' +
                                 cstrApplicationDBName;

  SQLite3Connection1.DatabaseName:= vstrApplicationDatabasePathName;
  SQLite3Connection1.Transaction := SQLTransaction1;

  DataSource1.DataSet := SQLquery1;

  SQLQuery1.DataBase := SQLite3Connection1;

  SQLTransaction1.DataBase := SQLite3Connection1;

  SQLQuery1.Transaction := SQLTransaction1;

  DBGrid1.DataSource := DataSource1;

  SQLite3Connection1.Connected := True;

  SQLTransaction1.Active := True;

  SQLQuery1.SQL.Text := 'select * from ' + cstrManufacturersTableName;

  SQLQuery1.Open;

  //showmessage(SQLQuery1.SQL.Text);



end;// procedure TfrmManufacturersTable.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmManufacturersTable.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

    SQLite3Connection1.Connected := False;

end;// procedure TfrmManufacturersTable.FormClose

//========================================================================================

end.// unit ManufacturerDB

