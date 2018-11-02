unit AppSettings;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : AppSettings.pas
//
// Description :
//
// Called By :  AppInit : Initialize
//              Main  : TfrmMain.mnuSettingsDIrectoriesClick
//                      TfrmMain.mnuSettingsDatabasesClick
//              ManufacturersDB  : TfrmManufacturersDB.FormShow
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 2 Aug 2018
//
//========================================================================================

interface

uses
  Buttons, Classes, ComCtrls, Controls, Dialogs, FileUtil, Forms, Graphics, StdCtrls,
  SysUtils,
  //
  INIFiles;

type

  { TfrmSettings }

  TfrmSettings = class(TForm)
    bbtCancel: TBitBtn;
    bbtOk: TBitBtn;
    edtBackupsDirectory: TEdit;
    edtLogbooksDirectory: TEdit;
    edtSettingsDirectory: TEdit;
    edtApplicationDirectory: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    pcSettings: TPageControl;
    pgDirectories: TTabSheet;
    procedure bbtCancelClick(Sender: TObject);
    procedure bbtOkClick(Sender: TObject);
    procedure edtSettingsDirectoryMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    fApplicationDirectory : string;
    fSettingsDirectory : string;
    fLogbooksDirectory : string;
    fBackupsDirectory : string;
    function GetApplicationDirectory : string;
    procedure SetApplicationDirectory(Dir : string);
    function GetSettingsDirectory : string;
    procedure SetSettingsDirectory(Dir : string);
    function GetLogbooksDirectory : string;
    procedure SetLogbooksDirectory(Dir : string);
    function GetBackupsDirectory : string;
    procedure SetBackupsDirectory(Dir : string);

  public
    property pApplicationDirectory : string read GetApplicationDirectory write SetApplicationDirectory;
    property pSettingsDirectory : string read GetSettingsDirectory write SetSettingsDirectory;
    property pLogbooksDirectory : string read GetLogbooksDirectory write SetLogbooksDirectory;
    property pBackupsDirectory : string read GetBackupsDirectory write SetBackupsDirectory;

    function INIFileExists : Boolean;
    procedure ReadSettingsINIFile;
    procedure WriteSettingsINIFile;

  end;// TfrmSettings

var
  frmSettings: TfrmSettings;

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
function TfrmSettings.GetApplicationDirectory: string;
begin
   Result := fApplicationDirectory;
end;// function TfrmSettings.GetApplicationDirectory

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetApplicationDirectory(Dir: string);
begin
    fApplicationDirectory := Dir;
end;// procedure TfrmSettings.SetApplicationDirectory

//========================================================================================
function TfrmSettings.GetSettingsDirectory: string;
begin
   Result := fSettingsDirectory;
end;// procedure TfrmSettings.GetAppSettingsDirectory

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetSettingsDirectory(Dir: string);
begin
    fSettingsDirectory := Dir;
end;// procedure TfrmSettings.SetAppSettingsDirectory

//========================================================================================
function TfrmSettings.GetLogbooksDirectory: string;
begin
   Result := fLogbooksDirectory;
end;// procedure TfrmSettings.GetLogbooksDirectory

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetLogbooksDirectory(Dir: string);
begin
    fLogbooksDirectory := Dir;
end;// procedure TfrmSettings.SetLogbooksDirectory

//========================================================================================
function TfrmSettings.GetBackupsDirectory: string;
begin
   Result := fBackupsDirectory;
end;// procedure TfrmSettings.GetBackupsDirectory

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetBackupsDirectory(Dir: string);
begin
    fBackupsDirectory := Dir;
end;// procedure TfrmSettings.SetBackupsDirectory

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//========================================================================================
//          COMMAND BUTTON ROUTINES
//========================================================================================
procedure TfrmSettings.bbtCancelClick(Sender: TObject);
begin

end;//  procedure TfrmSettings.bbtCancelClick

//----------------------------------------------------------------------------------------
procedure TfrmSettings.bbtOkClick(Sender: TObject);
begin

end;//  procedure TfrmSettings.bbtOkClick

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================
procedure TfrmSettings.edtSettingsDirectoryMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If Button = mbRight then
    showmessage('Mouse Up');
end;// procedure TfrmSettings.edtSettingsDirectoryMouseUp

//========================================================================================
//          FILE ROUTINES
//========================================================================================

          //==============================
          //        SettingsINIFile
          //==============================

const

  cstrSettingsDirectoryName = 'RVMasterLog';
  cstrLogbooksDirectoryName = 'Logbooks';
  cstrBackupsDirectoryName = 'Backups';

  cstrApplicationINIFileName = 'RVMasterLog.ini';

  cstrSectionDirectories = 'DIRECTORIES';
  cstrKeySettingsDirectory = 'Settings Directory';
  cstrKeyLogbooksDirectory = 'Logbooks Directory';
  cstrKeyBackupsDirectory = 'Backups Directory';

var

  ApplicationINIFile : TINIFile;
  ApplicationINIFileName : string;

//----------------------------------------------------------------------------------------
function TfrmSettings.INIFileExists : Boolean;
begin
  ApplicationINIFileName := pApplicationDirectory + '\' + cstrApplicationINIFileName;
  Result := FileExists(ApplicationINIFileName);
end;// function TfrmAppSetupApplicationDirectoryp.INIFileExists

//----------------------------------------------------------------------------------------
procedure TfrmSettings.ReadSettingsINIFile;

var
  vstrTStr : string;

begin

  showmessage('ReadSettingsINIFile');

  ApplicationINIFileName := pApplicationDirectory + '\' + cstrApplicationINIFileName;
  ApplicationINIFile := TINIFile.Create(ApplicationINIFileName);

  // DIRECTORY SECTION

    // Settings Directory
  vstrTStr := ApplicationINIFile.ReadString(cstrSectionDirectories,
                                                        cstrKeySettingsDirectory,
                                                        '');
  if vstrTStr = '' then
    pSettingsDirectory := GetUserDir {+ cstrSettingsDirectoryName};
  pSettingsDirectory := vstrTStr;

    // Logbooks Directory
  vstrTStr := ApplicationINIFile.ReadString(cstrSectionDirectories,
                                            cstrKeyLogbooksDirectory,
                                            '');
  if vstrTStr = '' then
    vstrTStr := pSettingsDirectory + '\' + cstrLogbooksDirectoryName;
  pLogbooksDirectory := vstrTStr;

  // Backups Directory
  vstrTStr := ApplicationINIFile.ReadString(cstrSectionDirectories,
                                            cstrKeyBackupsDirectory,
                                            '');
  if vstrTStr = '' then
    vstrTStr := pSettingsDirectory + '\' + cstrBackupsDirectoryName;
  pBackupsDirectory := vstrTStr;

  ApplicationINIFile.Free;

end;// procedure TfrmSettings.ReadSettingsINIFile

//----------------------------------------------------------------------------------------
procedure TfrmSettings.WriteSettingsINIFile;
begin

    showmessage('WriteSettingsINIFile');

    ApplicationINIFileName := pApplicationDirectory + '\' + cstrApplicationINIFileName;
    ApplicationINIFile := TINIFile.Create(ApplicationINIFileName);

    ApplicationINIFile.WriteString(cstrSectionDirectories,
                                    cstrKeySettingsDirectory,
                                    pSettingsDirectory);

    ApplicationINIFile.WriteString(cstrSectionDirectories,
                                    cstrKeyLogbooksDirectory,
                                    pLogbooksDirectory);

    ApplicationINIFile.WriteString(cstrSectionDirectories,
                                    cstrKeyBackupsDirectory,
                                    pBackupsDirectory);

    ApplicationINIFile.Free;

end;// procedure TfrmSettings.WriteSettingsINIFile

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmSettings.FormCreate(Sender: TObject);
begin

end;// procedure TfrmAppSetup.FormCreate

//----------------------------------------------------------------------------------------
procedure TfrmSettings.FormShow(Sender: TObject);
begin

  // Load current properties
  edtApplicationDirectory.Text:= pApplicationDirectory;
  edtSettingsDirectory.Text:=pSettingsDirectory;
  edtLogbooksDirectory.Text:=pLogbooksDirectory;
  edtBackupsDirectory.Text := pBackupsDirectory;

end; // procedure TfrmAppSetup.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmSettings.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;// procedure TfrmAppSetup.FormClose

//========================================================================================

end.// unit AppSettings

