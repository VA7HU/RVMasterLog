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
// Date : 09 Nov 2018
//
//========================================================================================

interface

uses
  Buttons, Classes, ComCtrls, Controls, Dialogs, FileUtil, Forms, Graphics, INIFiles,
  StdCtrls, SysUtils;

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
    fUserDirectory : string;
    fSettingsDirectory : string;
    fLogbooksDirectory : string;
    fBackupsDirectory : string;
    function GetApplicationDirectory : string;
    procedure SetApplicationDirectory(Dir : string);
    function GetUserDirectory : string;
    procedure SetUserDirectory(Dir : string);
    function GetSettingsDirectory : string;
    procedure SetSettingsDirectory(Dir : string);
    function GetLogbooksDirectory : string;
    procedure SetLogbooksDirectory(Dir : string);
    function GetBackupsDirectory : string;
    procedure SetBackupsDirectory(Dir : string);

  public
    property pApplicationDirectory : string read GetApplicationDirectory write SetApplicationDirectory;
    property pUserDirectory : string read GetUserDirectory write SetUserDirectory;
    property pSettingsDirectory : string read GetSettingsDirectory write SetSettingsDirectory;
    property pLogbooksDirectory : string read GetLogbooksDirectory write SetLogbooksDirectory;
    property pBackupsDirectory : string read GetBackupsDirectory write SetBackupsDirectory;

    function INIFileExists : Boolean;
    procedure ReadSettingsINIFile;
    procedure WriteSettingsINIFile;
    function CreateUserDirectories : Boolean;

  end;// TfrmSettings

var
  frmSettings: TfrmSettings;

implementation

{$R *.lfm}

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================
const
  cstrUserDirectoryPath = 'AppData\Roaming\RVMasterLog';

  cstrSettingsDirectoryName = 'Settings';
  cstrLogbooksDirectoryName = 'Logbooks';
  cstrBackupsDirectoryName = 'Backups';

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
function TfrmSettings.CreateUserDirectories : Boolean;
var
  vstrNewDir : string;
begin

    // USER DIRECTORY
  vstrNewDir := GetUserDir + cstrUserDirectoryPath;
//  showmessage(vstrNewDir);
  if not CreateDir(vstrNewDir)then
  begin
    showmessage('USER DIR FAILED');
    Result := False;
    exit;
  end
  else
    showmessage('USER DIR CREATED');

  if Result := False then
    Exit;

  frmSettings.pUserDirectory := vstrNewDir;

    // SETTINGS DIRECTORY
  vstrNewDir := pUserDirectory + '\' + cstrSettingsDirectoryName;
  CreateDir(vstrNewDir);
  frmSettings.pSettingsDirectory := vstrNewDir;

  // LOGBOOKS DIRECTORY
  vstrNewDir := pUserDirectory + '\' + cstrLogbooksDirectoryName;
  CreateDir(vstrNewDir);
  frmSettings.pLogbooksDirectory := vstrNewDir;

  // BACKUPS DIRECTORY
  vstrNewDir := pUserDirectory + '\' + cstrBackupsDirectoryName;
  CreateDir(vstrNewDir);
  frmSettings.pBackupsDirectory := vstrNewDir;
  showmessage('pBackups Dir - ' + pBackupsDirectory);

  //Result := False;

end;// function CreateUserDirectories

//========================================================================================
//          PROPERTY ROUTINES
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
function TfrmSettings.GetUserDirectory: string;
begin
   Result := fUserDirectory;
end;// function TfrmSettings.GetUserDirectory

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetUserDirectory(Dir: string);
begin
    fUserDirectory := Dir;
end;// procedure TfrmSettings.SetUserDirectory

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

const

  cstrApplicationINIFileName = 'RVMasterLog.ini';

  cstrUserDirectories = 'USER DIRECTORIES';
  cstrKeyuserDirectory = 'User Directory';
  cstrKeySettingsDirectory = 'Settings Directory';
  cstrKeyLogbooksDirectory = 'Logbooks Directory';
  cstrKeyBackupsDirectory = 'Backups Directory';

var

  ApplicationINIFile : TINIFile;
  ApplicationINIFileName : string;

  //==============================
  //        SettingsINIFile
  //==============================

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

    // USER Directory
  vstrTStr := ApplicationINIFile.ReadString(cstrUserDirectories,
                                                        cstrKeyUserDirectory,
                                                        '');

    // SETTINGS DIRECTORY
  vstrTStr := ApplicationINIFile.ReadString(cstrUserDirectories,
                                                      cstrKeySettingsDirectory,
                                                      '');

    // LOGBOOKS DIRECTORY
  vstrTStr := ApplicationINIFile.ReadString(cstrUserDirectories,
                                            cstrKeyLogbooksDirectory,
                                            '');

    // BACKUPS DIRECTORY
  vstrTStr := ApplicationINIFile.ReadString(cstrUserDirectories,
                                            cstrKeyBackupsDirectory,
                                            '');

  ApplicationINIFile.Free;

end;// procedure TfrmSettings.ReadSettingsINIFile

//----------------------------------------------------------------------------------------
procedure TfrmSettings.WriteSettingsINIFile;
begin

    ApplicationINIFileName := pApplicationDirectory + '\' + cstrApplicationINIFileName;
    ApplicationINIFile := TINIFile.Create(ApplicationINIFileName);

    ApplicationINIFile.WriteString(cstrUserDirectories,
                                   cstrKeyUserDirectory,
                                   pUserDirectory);

    ApplicationINIFile.WriteString(cstrUserDirectories,
                                    cstrKeySettingsDirectory,
                                    pSettingsDirectory);

    ApplicationINIFile.WriteString(cstrUserDirectories,
                                    cstrKeyLogbooksDirectory,
                                    pLogbooksDirectory);

    ApplicationINIFile.WriteString(cstrUserDirectories,
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

