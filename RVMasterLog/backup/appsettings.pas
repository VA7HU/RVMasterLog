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
// Date : 18 Apr 2019
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
    fApplicationName : string;
    fSystemUserDirectory : string;
    fUserDirectory : string;
    fSettingsDirectory : string;
    fLogbooksDirectory : string;
    fBackupsDirectory : string;
    fOwnerFirstName : string;
    fOwnerLastName : string;
    fOwnerCallsign : string;
    fOwnerEmailAddress : string;
    fOwnerID : string;
    function GetApplicationDirectory : string;
    procedure SetApplicationDirectory(Dir : string);
    function GetApplicationName : string;
    procedure SetApplicationName(AppName : string);
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
    function GetOwnerEmailAddress : string;
    procedure SetOwnerEmailAddress (EmailAddress : string);
    function GetOwnerID : string;
    procedure SetOwnerID (OwnerID : string);

  public
    property pApplicationDirectory : string read GetApplicationDirectory write SetApplicationDirectory;
    property pApplicationName : string read GetApplicationName write SetApplicationName;
   property pSystemUserDirectory : string read GetUserDirectory write SetUserDirectory;
    property pUserDirectory : string read GetUserDirectory write SetUserDirectory;
    property pSettingsDirectory : string read GetSettingsDirectory write SetSettingsDirectory;
    property pLogbooksDirectory : string read GetLogbooksDirectory write SetLogbooksDirectory;
    property pBackupsDirectory : string read GetBackupsDirectory write SetBackupsDirectory;
    property pOwnerFirstName : string read GetOwnerFirstName write SetOwnerFirstName;
    property pOwnerLastName : string read GetOwnerLastName write SetOwnerLastName;
    property pOwnerCallsign : string read GetOwnerCallsign write SetOwnerCallsign;
    property pOwnerEmailAddress : string read GetOwnerEmailAddress write SetOwnerEmailAddress;
    property pOwnerID : string read GetOwnerID write SetOwnerID;

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

  Result := True;

    // USER DIRECTORY
  pUserDirectory := frmSettings.pSystemUserDirectory + cstrUserDirectoryPath;
  if not CreateDir(pUserDirectory)then
  begin
    showmessage('USER DIR FAILED');
    Result := False;
  end;

    // SETTINGS DIRECTORY
  pSettingsDirectory := pUserDirectory + '\' + cstrSettingsDirectoryName;
  if not CreateDir(pSettingsDirectory)then
  begin
    showmessage('SETTINGS DIR FAILED');
    Result := False;
  end;

  // LOGBOOKS DIRECTORY
  pLogbooksDirectory := pUserDirectory + '\' + cstrLogbooksDirectoryName;
  if not CreateDir(pLogbooksDirectory)then
  begin
    showmessage('LOGBOOKS DIR FAILED');
    Result := False;
  end;

  // BACKUPS DIRECTORY
  pBackupsDirectory := pUserDirectory + '\' + cstrBackupsDirectoryName;
  if not CreateDir(pBackupsDirectory)then
  begin
    showmessage('BACKUP DIR FAILED');
    Result := False;
  end;

  if Result = True then
  begin
    showmessage('Deleting');
//     Result:=DeleteDirectory(NomeDir,True);
    DeleteDirectory(pUserDirectory, True);
  end;

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
function TfrmSettings.GetApplicationName: string;
begin
   Result := fApplicationName;
end;// function TfrmSettings.GetApplicationName

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetApplicationName(AppName: string);
begin
    fApplicationName := AppName;
end;// procedure TfrmSettings.SetApplicationName

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
function TfrmSettings.GetOwnerEmailAddress: string;
begin
   Result := fOwnerEmailAddress;
end;// procedure TfrmSettings.GetOwnerEmailAddress

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetOwnerEmailAddress(EmailAddress: string);
begin
    fOwnerEmailAddress := EMailAddress;
end;// procedure TfrmSettings.SetOwnerEmailAddress

//========================================================================================
function TfrmSettings.GetOwnerID: string;
begin
   Result := fOwnerID;
end;// procedure TfrmSettings.GetUserID

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetOwnerID(OwnerID: string);
begin
    fOwnerID := OwnerID;
end;// procedure TfrmSettings.SetOwnerID

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
  cstrRegistrationData = 'REGISTRATION DATA';
  cstrKeyOwnerFirstName = 'Owner First Name';
  cstrKeyOwnerLastName = 'Owner Last Name';
  cstrKeyOwnerCallsign = 'Owner Callsign';
  cstrKeyOwnerEmailAddress = 'Owner Email Address';
  cstrKeyOwnerID = 'Owner ID';

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

  // REGISTRATION DATA

    // Owner First Name
  vstrTStr := ApplicationINIFile.ReadString(cstrRegistrationData,
                                                        cstrKeyOwnerFirstName,
                                                        pOwnerFirstName);

    // Owner Last Name
vstrTStr := ApplicationINIFile.ReadString(cstrRegistrationData,
                                                      cstrKeyOwnerLastName,
                                                      pOwnerLastName);

    // Owner Callsign
vstrTStr := ApplicationINIFile.ReadString(cstrRegistrationData,
                                                    cstrKeyOwnerCallsign,
                                                    pOwnerCallsign);

    // Owner Email Address
vstrTStr := ApplicationINIFile.ReadString(cstrRegistrationData,
                                                cstrKeyOwnerEmailAddress,
                                                pOwnerEmailAddress);

    // OwnerID
vstrTStr := ApplicationINIFile.ReadString(cstrRegistrationData,
                                            cstrKeyOwnerID,
                                            pOwnerID);

  ApplicationINIFile.Free;

end;// procedure TfrmSettings.ReadSettingsINIFile

//----------------------------------------------------------------------------------------
procedure TfrmSettings.WriteSettingsINIFile;
begin

    ApplicationINIFileName := pApplicationDirectory + '\' + cstrApplicationINIFileName;
    ApplicationINIFile := TINIFile.Create(ApplicationINIFileName);

    // DIRECTORY SECTION

      // USER Directory
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

    // REGISTRATION DATA

      // Owner First Name
    ApplicationINIFile.WriteString(cstrRegistrationData,
                                   cstrKeyOwnerFirstName,
                                   pOwnerFirstName);

    // Owner Last Name
    ApplicationINIFile.WriteString(cstrRegistrationData,
                                   cstrKeyOwnerLastName,
                                   pOwnerLastName);

    // Owner Callsign
    ApplicationINIFile.WriteString(cstrRegistrationData,
                                   cstrKeyOwnerCallsign,
                                   pOwnerCallsign);

    // Owner Email Address
    ApplicationINIFile.WriteString(cstrRegistrationData,
                                   cstrKeyOwnerEmailAddress,
                                   pOwnerEmailAddress);

    // OwnerID
    ApplicationINIFile.WriteString(cstrRegistrationData,
                                   cstrKeyOwnerID,
                                   pOwnerID);

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

