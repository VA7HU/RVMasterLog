unit NewLogbook;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : NewLogbook.pas
//
// Description :
//
// Called By :
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 4 May 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons;

type

  { TfrmNewLogbook }

  TfrmNewLogbook = class(TForm)
    bbtCancel: TBitBtn;
    bbtOK: TBitBtn;
    bbtHelp: TBitBtn;
    procedure bbtCancelClick(Sender: TObject);
    procedure bbtHelpClick(Sender: TObject);
    procedure bbtOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
  procedure CreateNewLogbook;

  end;

var
  frmNewLogbook: TfrmNewLogbook;

//========================================================================================
//          PUBLIC VARIABLES
//========================================================================================

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

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
procedure TfrmNewLogbook.CreateNewLogbook;
begin

end;//

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//========================================================================================
//          COMMAND BUTTON ROUTINES
//========================================================================================

procedure TfrmNewLogbook.bbtCancelClick(Sender: TObject);
begin

end;// procedure TfrmNewLogbook.bbtCancelClick

//========================================================================================
procedure TfrmNewLogbook.bbtOKClick(Sender: TObject);
begin

end;// procedure TfrmNewLogbook.bbtOKClick

//========================================================================================
procedure TfrmNewLogbook.bbtHelpClick(Sender: TObject);
begin

end;// procedure TfrmNewLogbook.bbtHelpClick

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmNewLogbook.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;// procedure TfrmNewLogbook.FormClose

//========================================================================================
procedure TfrmNewLogbook.FormCreate(Sender: TObject);
begin

end;// procedure TfrmNewLogbook.FormCreate

//========================================================================================
procedure TfrmNewLogbook.FormShow(Sender: TObject);
begin

end;// procedure TfrmNewLogbook.FormShow

//========================================================================================
end.// unit NewLogbook

