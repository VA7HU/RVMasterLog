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
// Date : 29 May 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, db, dbf, Dbf_Common, Forms, Controls, Graphics, Dialogs, Buttons;
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
    SuppliersTbl: TDbf;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CreateSuppliersTable;
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
procedure TfrmSuppliersTable.CreateSuppliersTable;
begin

  SuppliersTbl := TDbf.Create(nil);
  SuppliersTbl.FilePathFull := frmSettings.pApplicationDB; //Directory where all .dbf files will be stored
  SuppliersTbl.TableName := cstrSuppliersTableName; // note: is the .dbf really required?

end;// function TfrmSuppliersTable.CreateSuppliersTable

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
  showmessage('Path = ' + frmSettings.pApplicationDB);
end;// procedure TfrmSuppliersTable.FormShow

//========================================================================================


end. // unit SuppliersTable


