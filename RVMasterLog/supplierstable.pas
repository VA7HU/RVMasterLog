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
// Calls : AppSettings : frmAppSettings.pApplicationDB
//         HUValidations : VaildAddressCharacter
//                         ValidNameCharacter
//                         ValidAddressCharacter
//                         ValidCityCharacter
//                         ValidProvStateCharacter
//         Main : TerminateApp
//
// Ver. : 1.0.0
//
// Date : 12 Jun 2019
//
//========================================================================================

interface

uses
  Classes, FileUtil, SysUtils, sqlite3conn, sqldb, db, Forms, Controls,
  Graphics, Dialogs, Buttons, DBCtrls, DBGrids, StdCtrls, ComCtrls, ExtCtrls,
  // Application Units
  // HULib Units
  HUValidations;

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
    dbeC1Dept: TDBEdit;
    dbeC1Phone: TDBEdit;
    dbeC1Email: TDBEdit;
    dbeC3Dept: TDBEdit;
    dbeC3Email: TDBEdit;
    dbeC3Phone: TDBEdit;
    dbeSupplierName: TDBEdit;
    dbeGenDept: TDBEdit;
    dbeGenName: TDBEdit;
    dbeC2Name: TDBEdit;
    dbeC3Name: TDBEdit;
    dbeGenEmail: TDBEdit;
    dbeC2Dept: TDBEdit;
    dbeC2Phone: TDBEdit;
    dbeC2Email: TDBEdit;
    dbeGenPhone: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
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
    procedure dbeAddress1Change(Sender: TObject);
    procedure dbeAddress1KeyPress(Sender: TObject; var Key: char);
    procedure dbeAddress2Change(Sender: TObject);
    procedure dbeAddress2KeyPress(Sender: TObject; var Key: char);
    procedure dbeC1DeptChange(Sender: TObject);
    procedure dbeC1EmailChange(Sender: TObject);
    procedure dbeC1NameChange(Sender: TObject);
    procedure dbeC1PhoneChange(Sender: TObject);
    procedure dbeC2DeptChange(Sender: TObject);
    procedure dbeC2EmailChange(Sender: TObject);
    procedure dbeC2NameChange(Sender: TObject);
    procedure dbeC2PhoneChange(Sender: TObject);
    procedure dbeC3DeptChange(Sender: TObject);
    procedure dbeC3EmailChange(Sender: TObject);
    procedure dbeC3NameChange(Sender: TObject);
    procedure dbeC3PhoneChange(Sender: TObject);
    procedure dbeCityChange(Sender: TObject);
    procedure dbeCityKeyPress(Sender: TObject; var Key: char);
    procedure dbeGenDeptChange(Sender: TObject);
    procedure dbeGenEmailChange(Sender: TObject);
    procedure dbeGenNameChange(Sender: TObject);
    procedure dbeGenPhoneChange(Sender: TObject);
    procedure dbeIDChange(Sender: TObject);
    procedure dbePostalCodeChange(Sender: TObject);
    procedure dbePostalCodeKeyPress(Sender: TObject; var Key: char);
    procedure dbeProvStateChange(Sender: TObject);
    procedure dbeProvStateKeyPress(Sender: TObject; var Key: char);
    procedure dbeSupplierNameChange(Sender: TObject);
    procedure dbeSupplierNameKeyPress(Sender: TObject; var Key: char);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TDBNavButtonType);
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

//==========
// dbEdit Routines
//==========

          //==========
          // On Change
          //==========

procedure TfrmSuppliersTable.dbeAddress1Change(Sender: TObject);
begin
  dbeAddress1.Hint := '   ' + dbeAddress1.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeAddress1Change

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeAddress2Change(Sender: TObject);
begin
  dbeAddress2.Hint := '   ' + dbeAddress2.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeAddress2Change

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC1DeptChange(Sender: TObject);
begin
  dbeC1Dept.Hint := '   ' + dbeC1Dept.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC1DeptChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC1EmailChange(Sender: TObject);
begin
  dbeC1Email.Hint := '   ' + dbeC1Email.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC1EmailChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC1NameChange(Sender: TObject);
begin
  dbeC1Name.Hint := '   ' + dbeC1Name.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC1NameChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC1PhoneChange(Sender: TObject);
begin
  dbeC1Phone.Hint := '   ' + dbeC1Phone.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC1PhoneChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC2DeptChange(Sender: TObject);
begin
  dbeC2Dept.Hint := '   ' + dbeC2Dept.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC2DeptChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC2EmailChange(Sender: TObject);
begin
  dbeC2Email.Hint := '   ' + dbeC2Email.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC2EmailChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC2NameChange(Sender: TObject);
begin
  dbeC2Name.Hint := '   ' + dbeC2Name.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC2NameChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC2PhoneChange(Sender: TObject);
begin
  dbeC2Phone.Hint := '   ' + dbeC2Phone.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC2PhoneChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC3DeptChange(Sender: TObject);
begin
  dbeC3Dept.Hint := '   ' + dbeC3Dept.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC3DeptChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC3EmailChange(Sender: TObject);
begin
  dbeC3Email.Hint := '   ' + dbeC3Email.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC3EmailChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC3NameChange(Sender: TObject);
begin
  dbeC3Name.Hint := '   ' + dbeC3Name.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC3NameChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeC3PhoneChange(Sender: TObject);
begin
  dbeC3Phone.Hint := '   ' + dbeC3Phone.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeC3PhoneChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeCityChange(Sender: TObject);
begin
  dbeCity.Hint := '   ' + dbeCity.Text + '   ';
end;

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeGenDeptChange(Sender: TObject);
begin
  dbeGenDept.Hint := '   ' + dbeGenDept.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeGenDeptChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeGenEmailChange(Sender: TObject);
begin
 dbeGenEmail.Hint := '   ' + dbeGenEmail.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeGenEmailChange

//=---------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeGenNameChange(Sender: TObject);
begin
  dbeGenName.Hint := '   ' + dbeGenName.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeGenNameChange

//=---------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeGenPhoneChange(Sender: TObject);
begin
  dbeGenPhone.Hint := '   ' + dbeGenPhone.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeGenPhoneChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeIDChange(Sender: TObject);
begin
  dbeID.Hint := '   ' + dbeID.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeIDChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeProvStateChange(Sender: TObject);
begin
  dbeProvState.Hint := '   ' + dbeProvState.Text + '   ';
end;

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbePostalCodeChange(Sender: TObject);
begin
  dbePostalCode.Hint := '   ' + dbePostalCode.Text + '   ';
end;// procedure TfrmSuppliersTable.dbePostalCodeChange

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeSupplierNameChange(Sender: TObject);
begin
  dbeSupplierName.Hint := '   ' + dbeSupplierName.Text + '   ';
end;// procedure TfrmSuppliersTable.dbeSupplierNameChange

//========================================================================================

          //==========
          // On Keypress
          //==========

procedure TfrmSuppliersTable.dbeSupplierNameKeyPress(Sender: TObject; var Key: char);
begin
  Key := ValidNameCharacter(Key);
end;// procedure TfrmSuppliersTable.dbeSupplierNameKeyPress

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeAddress1KeyPress(Sender: TObject; var Key: char);
begin
  Key := ValidAddressCharacter(Key);
end;// procedure TfrmSuppliersTable.dbeAddress1KeyPress

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeAddress2KeyPress(Sender: TObject; var Key: char
  );
begin
  Key := ValidAddressCharacter(Key);
end;// procedure TfrmSuppliersTable.dbeAddress2KeyPress

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeCityKeyPress(Sender: TObject; var Key: char);
begin
  Key := ValidCityCharacter(Key);
end;

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbeProvStateKeyPress(Sender: TObject; var Key: char);
begin
  Key := ValidProvStateCharacter(Key);
end;// procedure TfrmSuppliersTable.dbeProvStateKeyPress

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersTable.dbePostalCodeKeyPress(Sender: TObject;
  var Key: char);
begin
  Key := ValidPostalCodeCharacter(Key);
end;// procedure TfrmSuppliersTable.dbePostalCodeKeyPress

//----------------------------------------------------------------------------------------












//========================================================================================

//==========
// dbNavigator Routines
//==========

procedure TfrmSuppliersTable.DBNavigator1BeforeAction(Sender: TObject;
  Button: TDBNavButtonType);
begin

  if Button = nbRefresh then
  begin
    SupplierTableQuery.Close;
    SupplierTableQuery.Open;
    Abort;
  end;// if Button = nbRefresh

end;// procedure TfrmSuppliersTable.DBNavigator1BeforeAction

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmSuppliersTable.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

  SupplierTableQuery.Close;
  SQLTransaction1.Active := False;
  SupplierDBConnection.Close;

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

{  SupplierDBConnection.Open;
  SQLTransaction1.Active := True;
  SupplierTableQuery.Open;  }

end;// procedure TfrmSuppliersTable.FormShow

//========================================================================================


end. // unit SuppliersTable


