unit HUGeoDB;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : HUGeoDB.pas
//
// Description :
//
// Called By : Main : TfrmMain.mnuMainToolsDBMaintenanceHUGeoDBClick
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 12 Jan 2019
//
// ToDo: Todo_text
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons;

type

  { TfrmHUGeoDB }

  TfrmHUGeoDB = class(TForm)
    bbtOK: TBitBtn;
    bbtCancel: TBitBtn;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmHUGeoDB: TfrmHUGeoDB;

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
procedure TfrmHUGeoDB.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;// procedure TfrmHUGeoDB.FormClose

//----------------------------------------------------------------------------------------
procedure TfrmHUGeoDB.FormCreate(Sender: TObject);
begin

end;// procedure TfrmHUGeoDB.FormCreate

//----------------------------------------------------------------------------------------
procedure TfrmHUGeoDB.FormShow(Sender: TObject);
begin

end;// procedure TfrmHUGeoDB.FormShow

//========================================================================================

{ TfrmHUGeoDB }


end.// unit HUGeoDB

