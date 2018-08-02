unit Main;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : Main.pas
//
// Description :
//
// Called By :  ManufacturerDB  : TfrmManufacturerDB.FormShow
//
// Calls :  AppFinal  : Finalize
//          AppInit : Initialize
//          AppSettings :  frmSettings.ShowModal
//
// Ver. : 1.0.0
//
// Date : 2 Aug 2018
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ComCtrls,
  //
  AppFinal, AppInit, AppSettings, ManufacturersTable, RVData, sqlite3conn;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    mnuSettingsDatabasesManufacturer: TMenuItem;
    mnuSettingsDatabases: TMenuItem;
    mnuSettingsDIrectories: TMenuItem;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuLogbooksNewClick(Sender: TObject);
    procedure mnuLogbooksExitClick(Sender: TObject);
    procedure mnuLogbooksOpenLogbookClick(Sender: TObject);
    procedure mnuLogbooksPrintClick(Sender: TObject);
    procedure mnuLogbooksPrinterSetupClick(Sender: TObject);
    procedure mnuLogbooksRemoveClick(Sender: TObject);
    procedure mnuLogBooksSaveAsClick(Sender: TObject);
    procedure mnuLogbooksSaveClick(Sender: TObject);
    procedure mnuSettingsDatabasesManufacturerClick(Sender: TObject);
    procedure mnuSettingsDIrectoriesClick(Sender: TObject);
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
  frmRVData.ShowModal;
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
procedure TfrmMain.mnuSettingsDIrectoriesClick(Sender: TObject);
begin
  showmessage('Settings - Directories');
  frmSettings.ShowModal;
end;

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuSettingsDatabasesManufacturerClick(Sender: TObject);
begin
  showmessage('Settings - Databases - Manufacturers');
  frmManufacturersTable.ShowModal;
end;

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

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
 showmessage('On Close Query')
end;// procedure TfrmMain.FormCloseQuery

//----------------------------------------------------------------------------------------
procedure TfrmMain.FormCreate(Sender: TObject);
begin

end;// procedure TfrmMain.FormCreate

//========================================================================================
procedure TfrmMain.FormShow(Sender: TObject);
begin

  if Initialize then
  begin
    showmessage('Init OK');
  end
  else
  begin
    showmessage('Init Failure');
    Close;
  end;// if Initialize

end;// procedure TfrmMain.FormShow(Sender: TObject);

//========================================================================================

end.// unit Main

