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
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, DbCtrls, Buttons, ExtCtrls, StdCtrls, DBGrids,
  //
  AppSettings, HUMessageBoxes;

type

  { TfrmManufacturersTable }

  TfrmManufacturersTable = class(TForm)
    bbtClose: TBitBtn;
    bbtOK: TBitBtn;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBComboBox1: TDBComboBox;
    dbcbxProvState: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dbedtPostalCode: TDBEdit;
    dbedtCountry: TDBEdit;
    dbedtProvState: TDBEdit;
    dbedtCity: TDBEdit;
    dbedtAddress2: TDBEdit;
    dbedtAddress1: TDBEdit;
    dbedtName: TDBEdit;
    dbedtID: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
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

    // Setup all of the Database Controls
  vstrApplicationDatabasePathName := frmSettings.pApplicationDirectory +
                                 '\' +
                                 cstrApplicationDBName;

  SQLite3Connection1.DatabaseName:= vstrApplicationDatabasePathName;
  SQLite3Connection1.Transaction := SQLTransaction1;

  SQLTransaction1.DataBase := SQLite3Connection1;

  SQLQuery1.DataBase := SQLite3Connection1;
  SQLQuery1.Transaction := SQLTransaction1;

  DataSource1.DataSet := SQLquery1;

  dbedtID.Datasource := Datasource1;
  dbedtID.DataField := 'ID';

  dbedtName.DataSource := DataSource1;
  dbedtName.DataField := 'Name';

  dbedtAddress1.DataSource := DataSource1;
  dbedtAddress1.DataField := 'Address1';

  dbedtAddress2.DataSource := DataSource1;
  dbedtAddress2.DataField := 'Address2';

  dbedtCity.DataSource := DataSource1;
  dbedtCity.DataField := 'City';

  dbedtCountry.DataSource := DataSource1;
  dbedtCountry.DataField := 'Country';

  dbedtPostalCode.DataSource := DataSource1;
  dbedtPostalCode.DataField := 'PostalCode';





  SQLite3Connection1.Connected := True;
  SQLTransaction1.Active := True;

  SQLQuery1.SQL.Text := 'select * from ' + cstrManufacturersTableName;
  SQLQuery1.Open;



end;// procedure TfrmManufacturersTable.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmManufacturersTable.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

    SQLite3Connection1.Connected := False;

end;// procedure TfrmManufacturersTable.FormClose

//========================================================================================

end.// unit ManufacturerDB

