unit Main;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : Main.pas
//
// Description :
//
// Called By :
//
// Calls :  AppInit : Initialize
//
// Ver. : 1.00
//
// Date : 29 Jul 2018
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ComCtrls,
  //
  AppInit, AppSettings;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    mnuSettings: TMenuItem;
    muLogbooksSep2: TMenuItem;
    mnuLogbooksPrint: TMenuItem;
    mnuLogbooksPrinterSetup: TMenuItem;
    mnuLogbooksSep1: TMenuItem;
    mnuLogbooksRemove: TMenuItem;
    mnuLogBooksSaveAs: TMenuItem;
    mnuLogbooksSave: TMenuItem;
    mnuLogbooksOpenLogbook: TMenuItem;
    mnuLogbooksNew: TMenuItem;
    mnuLogbooksExit: TMenuItem;
    mnuLogbooks: TMenuItem;
    mnuMain: TMainMenu;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure mnuLogbooksNewClick(Sender: TObject);
    procedure mnuLogbooksExitClick(Sender: TObject);
    procedure mnuLogbooksOpenLogbookClick(Sender: TObject);
    procedure mnuLogbooksPrintClick(Sender: TObject);
    procedure mnuLogbooksPrinterSetupClick(Sender: TObject);
    procedure mnuLogbooksRemoveClick(Sender: TObject);
    procedure mnuLogBooksSaveAsClick(Sender: TObject);
    procedure mnuLogbooksSaveClick(Sender: TObject);
    procedure mnuSettingsClick(Sender: TObject);
  private

  public

  end;

var
  frmMain: TfrmMain;

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
procedure TfrmMain.mnuLogbooksNewClick(Sender: TObject);
begin
  showmessage('New Logbook')
end;// procedure TfrmMain.mnuLogbooksNewClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbooksOpenLogbookClick(Sender: TObject);
begin
  showmessage('Open Logbook');
end;// procedure TfrmMain.mnuLogbooksOpenLogbookClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbooksSaveClick(Sender: TObject);
begin
 showmessage('Save Logbook');
end;// procedure TfrmMain.mnuLogbooksSaveClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogBooksSaveAsClick(Sender: TObject);
begin
 showmessage('Save Logbook as');
end;// procedure TfrmMain.mnuLogBooksSaveAsClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbooksRemoveClick(Sender: TObject);
begin
 showmessage('Remove Logbook');
end;// procedure TfrmMain.mnuLogbooksRemoveClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbooksPrinterSetupClick(Sender: TObject);
begin
 showmessage('Printer Setup');
end;// procedure TfrmMain.mnuLogbooksPrinterSetupClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbooksPrintClick(Sender: TObject);
begin
 showmessage('Print');
end;// procedure TfrmMain.mnuLogbooksPrintClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbooksExitClick(Sender: TObject);
begin
  showmessage('Exit');
  Close;
end;// procedure TfrmMain.mnuFileExitClick

//========================================================================================
procedure TfrmMain.mnuSettingsClick(Sender: TObject);
begin
 showmessage('Settings');
 frmSettings.ShowModal;
end;// procedure TfrmMain.mnuSettingsClick

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
procedure TfrmMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
 showmessage('On Close')
end;// procedure TfrmMain.FormClose

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
 showmessage('On Close Query')
end;// procedure TfrmMain.FormCloseQuery

//========================================================================================

end.// unit Main

