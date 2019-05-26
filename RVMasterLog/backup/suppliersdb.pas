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
// Date : 26 May 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms,
  Controls, Graphics, Dialogs, DbCtrls, Buttons, ExtCtrls, StdCtrls, DBGrids,
  //
  AppSettings, HUMessageBoxes;

type

  { TfrmSuppliersDB }

  TfrmSuppliersDB = class(TForm)
    bbtClose: TBitBtn;
    bbtOK: TBitBtn;
    BitBtn1: TBitBtn;
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

  cstrSuppliersDBName = 'SuppliersDB.sl3';
  cstrSuppliersTableName = 'SuppliersTable';

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================
var

  vstrSuppliersDatabasePathName : string;

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

end;// procedure TfrmSuppliersDB.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmSuppliersDB.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;// procedure TfrmSuppliersDB.FormClose

//========================================================================================
end.// unit ManufacturerDB

