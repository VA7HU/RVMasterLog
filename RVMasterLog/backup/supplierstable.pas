unit SuppliersTable;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : SuppliersTable.pas
//
// Description :
//
// Called By : AppSettings : frmSettings.CreateUserDataDirectories
//
// Calls : frmAppSettings.pApplicationDB
//         Main : TerminateApp
//
// Ver. : 1.0.0
//
// Date : 7 Jun 2019
//
//========================================================================================

interface

uses
  Classes, FileUtil, SysUtils, sqlite3conn, sqldb, db, Forms, Controls,
  Graphics, Dialogs, Buttons, DBCtrls, DBGrids;
  // Application Units
  // HULib Units


//========================================================================================
//          PUBLIC VARIABLES
//========================================================================================

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

type

  { TfrmSuppliersTable }

  TfrmSuppliersTable = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bbtNew: TBitBtn;
    bbtEdit: TBitBtn;
    bbtDelete: TBitBtn;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    SupplierDBConnection: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;// TfrmSuppliersTable

var

  frmSuppliersTable: TfrmSuppliersTable;

implementation

{$R *.lfm}

uses
  AppSettings, Main;

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================
const

  cstrSuppliersDatabaseName = 'SuppliersDB.sl3';
  cstrSuppliersTableName = 'Suppliers.Tbl';

//========================================================================================
//          PRIVATE VARIABLES
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

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmSuppliersTable.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;// procedure TfrmSuppliersTable.FormClose

//========================================================================================
procedure TfrmSuppliersTable.FormCreate(Sender: TObject);
begin

end;// procedure TfrmSuppliersTable.FormCreate

//========================================================================================
procedure TfrmSuppliersTable.FormShow(Sender: TObject);
begin

  SupplierDBConnection.DatabaseName := cstrSuppliersDatabaseName;
  SupplierDBConnection.Transaction := SQLTransaction1;
  SupplierDBConnection.Connected := False;

  SQLTransaction1.Active := False;

  SQLQuery1.DataBase := SupplierDBConnection;
  SQLQuery1.Active := False;

  DataSource1.DataSet := SQLQuery1;

  DBGrid1.DataSource := DataSource1;

  SQLQuery1.SQL.Text := 'select * from SuppliersTable';
  SQLQuery1.Transaction := SQLTransaction1;

  SupplierDBConnection.Open;
  SQLTransaction1.Active := True;
  SQLQuery1.Open;

end;// procedure TfrmSuppliersTable.FormShow

//========================================================================================


end. // unit SuppliersTable


