unit ManufacturerTable;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : ManufacturerTable.pas
//
// Description :
//
// Called By :
//
// Calls :  AppSettings : pApplicationDirectory
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
  AppSettings;

type

  { TfrmManufacturerDB }

  TfrmManufacturerDB = class(TForm)
    bbtClose: TBitBtn;
    bbtOK: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBTManufacturersName: TDBText;
    Label1: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    procedure bbtCloseClick(Sender: TObject);
    procedure bbtOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmManufacturerDB: TfrmManufacturerDB;

implementation

uses
  Main;

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
procedure TfrmManufacturerDB.bbtCloseClick(Sender: TObject);
begin

end;// procedure TfrmManufacturerDB.bbtCloseClick

//----------------------------------------------------------------------------------------
procedure TfrmManufacturerDB.bbtOKClick(Sender: TObject);
begin

end;// procedure TfrmManufacturerDB.bbtOKClick

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmManufacturerDB.FormShow(Sender: TObject);
begin

end;// procedure TfrmManufacturerDB.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmManufacturerDB.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;// procedure TfrmManufacturerDB.FormClose

//========================================================================================

end.// unit ManufacturerDB

