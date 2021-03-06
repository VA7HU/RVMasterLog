unit Main;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : Main.pas
//
// Description :
//
// Called By :  ManufacturerDB  : TfrmManufacturerDB.FormShow
//              AppInit : Initialize
//
// Calls :  AppFinal  : Finalize
//          AppInit : Initialize
//          AppSettings :  frmSettings.ShowModal
//          SuppliersTable : frmSuppliersTable.CreateSuppliersTable
//                           frmSuppliersTable.ShowModal
//
// Ver. : 1.0.0
//
// Date : 22 Dec 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ComCtrls,
  // Application Units
  AppFinal, AppInit, AppSettings, Logbook, RVData, SuppliersTable
  // HULibrary Units
  ;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    mnuLogbooksSaveLogbook: TMenuItem;
    mnuSettingsApplicationDatabase: TMenuItem;
    mnuSettings: TMenuItem;
    muLogbooksSep2: TMenuItem;
    mnuLogbooksPrint: TMenuItem;
    mnuLogbooksPrinterSetup: TMenuItem;
    mnuLogbooksSep1: TMenuItem;
    mnuLogbooksDeleteLogbook: TMenuItem;
    mnuLogbooksOpenLogbook: TMenuItem;
    mnuLogbooksNewLogbook: TMenuItem;
    mnuLogbooksExit: TMenuItem;
    mnuLogbooks: TMenuItem;
    mnuMain: TMainMenu;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuLogbooksNewLogbookClick(Sender: TObject);
    procedure mnuLogbooksExitClick(Sender: TObject);
    procedure mnuLogbooksOpenLogbookClick(Sender: TObject);
    procedure mnuLogbooksPrintClick(Sender: TObject);
    procedure mnuLogbooksPrinterSetupClick(Sender: TObject);
    procedure mnuLogbooksDeleteLogbookClick(Sender: TObject);
    procedure mnuLogbooksSaveClick(Sender: TObject);
    procedure mnuSettingsApplicationDatabaseClick(Sender: TObject);
  private

  public

  end;// TfrmMain = class(TForm)

var
  frmMain: TfrmMain;

procedure TerminateApp;

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
procedure TerminateApp;
begin
 showmessage('Terminating Application');
 Halt;
end;// procedure TerminateApp

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//==========
// mnuLogbooksClick
//==========
procedure TfrmMain.mnuLogbooksNewLogbookClick(Sender: TObject);
begin
  frmLogbook.ShowModal;
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
procedure TfrmMain.mnuLogbooksDeleteLogbookClick(Sender: TObject);
begin
 showmessage('Delete Logbook');
end;// procedure TfrmMain.mnuLogbooksDeleteClick

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

//==========
// mnuSettingsClick
//==========

procedure TfrmMain.mnuSettingsApplicationDatabaseClick(Sender: TObject);
begin
  frmSettings.ShowModal;
end;// procedure TfrmMain.mnuSettingsApplicationDatabaseClick

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
 showmessage('On Close');
 Finalize;
end;// procedure TfrmMain.FormClose

//========================================================================================
procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
 showmessage('On Close Query')
end;// procedure TfrmMain.FormCloseQuery

//========================================================================================
procedure TfrmMain.FormCreate(Sender: TObject);
begin

end;// procedure TfrmMain.FormCreate

//========================================================================================
procedure TfrmMain.FormShow(Sender: TObject);
begin
  Initialize;
end;// procedure TfrmMain.FormShow(Sender: TObject);

//========================================================================================
end.// unit Main

