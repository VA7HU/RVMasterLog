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
// Date : 8 Jun 2019
//
//========================================================================================

interface

uses
  Classes, FileUtil, SysUtils, sqlite3conn, sqldb, db, Forms, Controls,
  Graphics, Dialogs, Buttons, DBCtrls, DBGrids, StdCtrls, ComCtrls, ExtCtrls;
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
    dbeC1Name: TDBEdit;
    dbeGenDept: TDBEdit;
    dbeGenName: TDBEdit;
    dbeGenName2: TDBEdit;
    dbeGenName3: TDBEdit;
    dbeGenEmail: TDBEdit;
    dbeGenPhone1: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pnlContacts: TPanel;
    SupplierTableDataSource: TDataSource;
    dbeAddress1: TDBEdit;
    dbeAddress2: TDBEdit;
    dbeCity: TDBEdit;
    dbePostalCode: TDBEdit;
    dbeProvState: TDBEdit;
    dbeID: TDBEdit;
    dbgSuppliersTable: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    StatusBar1: TStatusBar;
    SupplierDBConnection: TSQLite3Connection;
    SupplierTableQuery: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
//    procedure dbeGenEmailChange(Sender: TObject);
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
{procedure TfrmSuppliersTable.dbeGenEmailChange(Sender: TObject);
begin
 // Hint:=dbeGenEmail.Text;
end;// procedure TfrmSuppliersTable.dbeGenEmailChange }

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

  dbeGenEmail.Hint := dbeGenEmail.Text;

end;// procedure TfrmSuppliersTable.FormCreate

//========================================================================================
procedure TfrmSuppliersTable.FormShow(Sender: TObject);
begin

  dbeGenEmail.Hint := dbeGenEmail.Text;

  SupplierDBConnection.DatabaseName := cstrSuppliersDatabaseName;
  SupplierDBConnection.Transaction := SQLTransaction1;
  SupplierDBConnection.Connected := False;

  SQLTransaction1.Active := False;

  //  Supplier Table

  SupplierTableQuery.DataBase := SupplierDBConnection;
  SupplierTableQuery.Active := False;

  SupplierTableDataSource.DataSet := SupplierTableQuery;

  dbgSuppliersTable.DataSource := SupplierTableDataSource;

  SupplierTableQuery.SQL.Text := 'select * from SuppliersTable';
  SupplierTableQuery.Transaction := SQLTransaction1;

  SupplierDBConnection.Open;
  SQLTransaction1.Active := True;
  SupplierTableQuery.Open;

  SupplierDBConnection.Open;
  SQLTransaction1.Active := True;
  SupplierTableQuery.Open;

end;// procedure TfrmSuppliersTable.FormShow

//========================================================================================


end. // unit SuppliersTable


