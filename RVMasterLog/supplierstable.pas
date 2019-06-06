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
// Date : 2 Jun 2019
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
    SQLite3Connection1: TSQLite3Connection;
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

  SQLite3Connection1.Connected := False;
  SQLTransaction1.Active := False;
  SQLQuery1.Active := False;

  SQLite3Connection1.DatabaseName := 'SuppliersDB.sl3';
  SQLQuery1.Options := [sqoKeepOpenOnCommit,sqoAutoApplyUpdates,sqoAutoCommit];
  SQLQuery1.SQL.Text := 'select * from SuppliersTable order by ID';
  SQLQuery1.Transaction := SQLTransaction1;

  SQLite3Connection1.Open;
  SQLTransaction1.Active := True;
  SQLQuery1.Open;

end;// procedure TfrmSuppliersTable.FormShow

//========================================================================================


end. // unit SuppliersTable


