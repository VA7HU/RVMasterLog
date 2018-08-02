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
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBTManufacturersName: TDBText;
    Label1: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    SQLite3Connection1: TSQLite3Connection;
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

  cstrManufacturersTableFileName = 'ManufacturersTable.db3';

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================
var

  vstrManufacturersTableDatabaseName : string;

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

  vstrManufacturersTableDatabaseName := frmSettings.pApplicationDirectory +
                                        '\' +
                                        'ManufacturersTable.db3';

  SQLite3Connection1.DatabaseName:= vstrManufacturersTableDatabaseName;
  SQLite3Connection1.Connected := True;

end;// procedure TfrmManufacturersTable.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmManufacturersTable.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;// procedure TfrmManufacturersTable.FormClose

//========================================================================================

end.// unit ManufacturerDB

