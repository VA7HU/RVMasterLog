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
  Classes, FileUtil, SysUtils, sqlite3conn, sqldb, Forms, Controls,
  Graphics, Dialogs, Buttons, DBCtrls;
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
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SQLite3Connection1: TSQLite3Connection;
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

end;// procedure TfrmSuppliersTable.FormShow

//========================================================================================


end. // unit SuppliersTable


