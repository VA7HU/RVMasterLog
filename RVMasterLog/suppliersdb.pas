unit SuppliersDB;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : SuppliersDB.pas
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
// Date : 12 May 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, DbCtrls, Buttons, ExtCtrls, StdCtrls, DBGrids,
  //
  AppSettings, HUMessageBoxes;

type

  { TfrmSuppliersDB }

  TfrmSuppliersDB = class(TForm)
    bbtClose: TBitBtn;
    bbtOK: TBitBtn;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    dbCbxSelectSupplier: TDBComboBox;
    dbcbxProvState: TDBComboBox;
    dbcbxContact1Position: TDBComboBox;
    dbcbxContact2Position: TDBComboBox;
    dbcbxContact3Position: TDBComboBox;
    dbedtContact1Phone: TDBEdit;
    dbedtContact1Name: TDBEdit;
    dbedtContact2Name: TDBEdit;
    dbedtContact3Name: TDBEdit;
    dbedtContact2Phone: TDBEdit;
    dbedtContact3Phone: TDBEdit;
    dbedtPostalCode: TDBEdit;
    dbedtCountry: TDBEdit;
    dbedtProvState: TDBEdit;
    dbedtCity: TDBEdit;
    dbedtAddress2: TDBEdit;
    dbedtAddress1: TDBEdit;
    dbedtName: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
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
  frmSuppliersDB: TfrmSuppliersDB;

implementation

uses
  Main;

{$R *.lfm}

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================
const

  cstrApplicationDBName = 'HUDB1.sl3';
  cstrManufacturersTableName = 'SuppliersDB';

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
procedure TfrmSuppliersDB.bbtCloseClick(Sender: TObject);
begin

end;// procedure TfrmSuppliersDB.bbtCloseClick

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersDB.bbtOKClick(Sender: TObject);
begin

end;// procedure TfrmSuppliersDB.bbtOKClick

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmSuppliersDB.FormCreate(Sender: TObject);
begin

end;// procedure TfrmSuppliersDB.FormCreate

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersDB.FormShow(Sender: TObject);
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

  //dbedtID.Datasource := Datasource1;
  //dbedtID.DataField := 'ID';

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



end;// procedure TfrmSuppliersDB.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersDB.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

    SQLite3Connection1.Connected := False;

end;// procedure TfrmSuppliersDB.FormClose

//========================================================================================

end.// unit ManufacturerDB

