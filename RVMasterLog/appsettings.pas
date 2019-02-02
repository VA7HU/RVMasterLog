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
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 2 Feb 2019
//
// *ToDo:
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
    fSystemUserDirectory : string;
    fUserDirectory : string;
    fSettingsDirectory : string;
    fLogbooksDirectory : string;
    fBackupsDirectory : string;
    fOwnerFirstName : string;
    fOwnerLastName : string;
    fOwnerCallsign : string;
    fOwnerEmail : string;
    fOwnerUserID : string;
    function GetApplicationDirectory : string;
    procedure SetApplicationDirectory(Dir : string);
    function GetSystemUserDirectory : string;
    procedure SetSystemUserDirectory(Dir : string);
    function GetUserDirectory : string;
    procedure SetUserDirectory(Dir : string);
    function GetSettingsDirectory : string;
    procedure SetSettingsDirectory(Dir : string);
    function GetLogbooksDirectory : string;
    procedure SetLogbooksDirectory(Dir : string);
    function GetBackupsDirectory : string;
    procedure SetBackupsDirectory(Dir : string);
    function GetOwnerFirstName : string;
    procedure SetOwnerFirstName (FirstName : string);
    function GetOwnerLastName : string;
    procedure SetOwnerLastName (LastName : string);
    function GetOwnerCallsign : string;
    procedure SetOwnerCallsign (Callsign : string);
    function GetOwnerEmail : string;
    procedure SetOwnerEmail (Email : string);
    function GetOwnerUserID : string;
    procedure SetOwnerUserID (UserID : string);

  public
    property pApplicationDirectory : string read GetApplicationDirectory write SetApplicationDirectory;
    property pSystemUserDirectory : string read GetUserDirectory write SetUserDirectory;
    property pUserDirectory : string read GetUserDirectory write SetUserDirectory;
    property pSettingsDirectory : string read GetSettingsDirectory write SetSettingsDirectory;
    property pLogbooksDirectory : string read GetLogbooksDirectory write SetLogbooksDirectory;
    property pBackupsDirectory : string read GetBackupsDirectory write SetBackupsDirectory;
    property pOwnerFirstName : string read GetOwnerFirstName write SetOwnerFirstName;
    property pOwnerLastName : string read GetOwnerLastName write SetOwnerLastName;
    property pOwnerCallsign : string read GetOwnerCallsign write SetOwnerCallsign;
    property pOwnerEmail : string read GetOwnerEmail write SetOwnerEmail;
    property pOwnerUserID : string read GetOwnerUserID write SetOwnerUserID;

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
  cstrSettingsDirectoryName = 'Settings';
  cstrLogbooksDirectoryName = 'Logbooks';
  cstrBackupsDirectoryName = 'Backups';

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================
const
  cstrUserDirectoryPath = 'AppData\Roaming\RVMasterLog';

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
  pUserDirectory := frmSettings.pSystemUserDirectory + cstrUserDirectoryPath;

  if not CreateDir(pUserDirectory)then
  begin
    showmessage('USER DIR FAILED');
    Result := False;
    exit;
  end
  else
    showmessage('USER DIR CREATED');

  if Result = False then
    Exit;

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

  Result := True;

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
function TfrmSettings.GetSystemUserDirectory: string;
begin
   Result := fSystemUserDirectory;
end;// function TfrmSettings.GetSystemUserDirectory

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetSystemUserDirectory(Dir: string);
begin
    fSystemUserDirectory := Dir;
end;// procedure TfrmSettings.SetSystemUserDirectory

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
function TfrmSettings.GetOwnerFirstName: string;
begin
   Result := fOwnerFirstName;
end;// procedure TfrmSettings.GetOwnerFirstName

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetOwnerFirstName(FirstName: string);
begin
    fOwnerFirstName := FirstName;
end;// procedure TfrmSettings.SetOwnerFirstName

//========================================================================================
function TfrmSettings.GetOwnerLastName: string;
begin
   Result := fOwnerLastName;
end;// procedure TfrmSettings.GetOwnerLastName

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetOwnerLastName(LastName: string);
begin
    fOwnerLastName := LastName;
end;// procedure TfrmSettings.SetOwnerLastName

//========================================================================================
function TfrmSettings.GetOwnerCallsign: string;
begin
   Result := fOwnerCallsign;
end;// procedure TfrmSettings.GetOwnerCallsign

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetOwnerCallsign(Callsign: string);
begin
    fOwnerCallsign := Callsign;
end;// procedure TfrmSettings.SetOwnerCallsign

//========================================================================================
function TfrmSettings.GetOwnerEmail: string;
begin
   Result := fOwnerEmail;
end;// procedure TfrmSettings.GetOwnerEmail

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetOwnerEmail(Email: string);
begin
    fOwnerEmail := EMail;
end;// procedure TfrmSettings.SetOwnerEmail

//========================================================================================
function TfrmSettings.GetOwnerUserID: string;
begin
   Result := fOwnerUserID;
end;// procedure TfrmSettings.GetOwnerUserID

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetOwnerUserID(UserID: string);
begin
    fOwnerUserID := UserID;
end;// procedure TfrmSettings.SetOwnerUserID

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
  showmessage(ApplicationINIFileName);
  Result :=  FileExists(ApplicationINIFileName);
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
                                                        pSystemUserDirectory);
  pSystemUserDirectory := vstrTStr;

  // SETTINGS DIRECTORY
  vstrTStr := ApplicationINIFile.ReadString(cstrUserDirectories,
                                                      cstrKeySettingsDirectory,
                                                      pSettingsDirectory);
  pSettingsDirectory := vstrTStr;

    // LOGBOOKS DIRECTORY
  vstrTStr := ApplicationINIFile.ReadString(cstrUserDirectories,
                                            cstrKeyLogbooksDirectory,
                                            pLogbooksDirectory);
  pLogbooksDirectory := vstrTStr;

    // BACKUPS DIRECTORY
  vstrTStr := ApplicationINIFile.ReadString(cstrUserDirectories,
                                            cstrKeyBackupsDirectory,
                                            pBackupsDirectory);
  pBackupsDirectory := vstrTStr;

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

