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
//          Logbook : frmLogbooksTable.CreateNewLogbook
//
// Ver. : 1.0.0
//
// Date : 1 Feb 2019
//
// *ToDo:
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ComCtrls,
  //
  AppFinal, AppInit, AppSettings, LogbooksTable, RVData, SuppliersTable, sqlite3conn;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    mnuMainToolsDBMaintenanceManufacturersDB: TMenuItem;
    mnuToolsDBMaintenanceApplicationDB: TMenuItem;
    mnuToolsDBMaintenance: TMenuItem;
    mnuTools: TMenuItem;
    mnuLogbooksSaveLogbook: TMenuItem;
    mnuSettingsCommonHUCountryDB: TMenuItem;
    mnuSettingsDatabasesCommon: TMenuItem;
    mnuSettingsDatabases: TMenuItem;
    mnuSettingsDIrectories: TMenuItem;
    mnuSettings: TMenuItem;
    muLogbooksSep2: TMenuItem;
    mnuLogbooksPrint: TMenuItem;
    mnuLogbooksPrinterSetup: TMenuItem;
    mnuLogbooksSep1: TMenuItem;
    mnuLogbookDeleteLogbook: TMenuItem;
    mnuLogbookOpenLogbook: TMenuItem;
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
    procedure mnuLogbookOpenLogbookClick(Sender: TObject);
    procedure mnuLogbooksPrintClick(Sender: TObject);
    procedure mnuLogbooksPrinterSetupClick(Sender: TObject);
    procedure mnuLogbookDeleteLogbookClick(Sender: TObject);
    procedure mnuLogbooksSaveClick(Sender: TObject);
    procedure mnuSettingsDirectoriesClick(Sender: TObject);
  private

  public

  end;// TfrmMain = class(TForm)

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
procedure TfrmMain.mnuLogbooksNewLogbookClick(Sender: TObject);
begin
  frmLogbooksTable.CreateNewLogbook;
end;// procedure TfrmMain.mnuLogbooksNewClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbookOpenLogbookClick(Sender: TObject);
begin
  showmessage('Open Logbook');
//  frmLogbooksTable.OpenLogbook;
end;// procedure TfrmMain.mnuLogbooksOpenLogbookClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbooksSaveClick(Sender: TObject);
begin
 showmessage('Save Logbook');
// frmLogbooksTable.SaveLogbook;
end;// procedure TfrmMain.mnuLogbooksSaveClick

//----------------------------------------------------------------------------------------
procedure TfrmMain.mnuLogbookDeleteLogbookClick(Sender: TObject);
begin
 showmessage('Delete Logbook');
// frmLogbook.DeleteLogbook;
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
procedure TfrmMain.mnuSettingsDirectoriesClick(Sender: TObject);
begin
  frmSettings.ShowModal;
end;// procedure TfrmMain.mnuSettingsDirectoriesClick

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

  // Get the reqired System Directories
  frmSettings.pApplicationDirectory := GetCurrentDir;
  frmSettings.pSystemUserDirectory := GetUserDir;

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

