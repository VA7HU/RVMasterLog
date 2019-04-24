unit ProvTable;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : ProvTGable.pas
//
// Description :
//
// Called By frmMain : procedure TfrmMain.mnuSettingsDatabasesCommonProvTableClick
//
// Calls :
//
// Ver. : 1.00
//
// Date : 24 Apr 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, sqldb, db, sqlite3conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, Buttons, DbCtrls, DBGrids;

type

  { TfrmProvTable }

  TfrmProvTable = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    dbedtAbbreviation: TDBEdit;
    dbedtFullName: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmProvTable: TfrmProvTable;

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

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmProvTable.FormCreate(Sender: TObject);
begin

end;// procedure TfrmProvTable.FormCreate

//========================================================================================
procedure TfrmProvTable.FormShow(Sender: TObject);
begin

  // Setup all of the Database Controls
{vstrApplicationDatabasePathName := frmSettings.pApplicationDirectory +
                               '\' +
                               cstrApplicationDBName;}

{SQLite3Connection1.DatabaseName:= vstrApplicationDatabasePathName;
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
SQLQuery1.Open; }


end;// procedure TfrmProvTable.FormShow

//========================================================================================


end.

