unit SuppliersTable;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : SuppliersTable.pas
//
// Description :
//
// Called By :
//
// Calls : frmAppSettings.pApplicationDB
//
// Ver. : 1.0.0
//
// Date : 26 Nay 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, db, dbf, Dbf_Common, Forms, Controls, Graphics, Dialogs, Buttons,
  // Application Units
  AppSettings
  // HULib Units
  ;

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
    Dbf1: TDbf;
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

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================

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
  showmessage(frmSettings.pApplicationDB);
end;// procedure TfrmSuppliersTable.FormShow

//========================================================================================


end. // unit SuppliersTable


