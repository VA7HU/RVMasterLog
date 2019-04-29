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
// Date : 19 Apr 2019
//
//========================================================================================

interface

uses
  Buttons, Classes, ComCtrls, Controls, Dialogs, FileUtil, Forms, Graphics, INIFiles,
  StdCtrls, SysUtils,
  //App Units
  // HULib units
  HUMessageBoxes;

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
    fAppName : string;
    fSystemUserDirectory : string;
    fUserDataDirectory : string;
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
    function GetAppName : string;
    procedure SetAppName(AppName : string);
    function GetSystemUserDirectory : string;
    procedure SetSystemUserDirectory(Dir : string);
    function GetUserDataDirectory : string;
    procedure SetUserDataDirectory(Dir : string);
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
    property pAppName : string read GetAppName write SetAppName;
    property pSystemUserDirectory : string read GetSystemUserDirectory write SetSystemUserDirectory;
    property pUserDataDirectory : string read GetUserDataDirectory write SetUserDataDirectory;
    property pSettingsDirectory : string read GetSettingsDirectory write SetSettingsDirectory;
    property pLogbooksDirectory : string read GetLogbooksDirectory write SetLogbooksDirectory;
    property pBackupsDirectory : string read GetBackupsDirectory write SetBackupsDirectory;
    property pOwnerFirstName : string read GetOwnerFirstName write SetOwnerFirstName;
    property pOwnerLastName : string read GetOwnerLastName write SetOwnerLastName;
    property pOwnerCallsign : string read GetOwnerCallsign write SetOwnerCallsign;
    property pOwnerEmailAddress : string read GetOwnerEmailAddress write SetOwnerEmailAddress;
    property pOwnerID : string read GetOwnerID write SetOwnerID;

    function UserDataDirectoriesExist : Boolean;
    procedure ReadSettingsINIFile;
    procedure WriteSettingsINIFile;
    function CreateUserDataDirectories : Boolean;

  end;// TfrmSettings

var
  frmSettings: TfrmSettings;

implementation

{$R *.lfm}

uses
  Main;

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================
const

  cstrAppName = 'RVMasterLog';
  cstrSettingsDirectoryName = 'Settings';
  cstrLogbooksDirectoryName = 'Logbooks';
  cstrBackupsDirectoryName = 'Backups';
  cstrUserDataDirectoryPath = 'AppData\Roaming\RVMasterLog';

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================

//========================================================================================
//          PRIVATE ROUTINES
//========================================================================================
function TfrmSettings.UserDataDirectoriesExist : Boolean;
begin

  if not DirectoryExists(pUserDataDirectory) then
  begin

    if HUErrorMsgYN('erNoDataDirectoriesFound', erNoDataDirectoriesFound) = mrYes then
    begin
      HUInformationMsgOK('Caption', 'Creating Data Directories');
      CreateUserDataDirectories;
    end;// if HUErrorMsgYN(' No User Directory', 'Create One ?') = mrYes

  end;// if UserDataDirectoriesExist(pUserDirectory)

end;// function TfrmAppSetupApplicationDirectoryp.UserFIlesExist

//========================================================================================
function TfrmSettings.CreateUserDataDirectories : Boolean;
begin

    // USER DATA DIRECTORY
  pUserDataDirectory := frmSettings.pSystemUserDirectory + cstrUserDataDirectoryPath;

  if not CreateDir(pUserDataDirectory) then
  begin
    showmessage('USER DATA DIRECTORY FAILED');
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pUserDataDirectory)

    // SETTINGS DIRECTORY

  pSettingsDirectory := pUserDataDirectory + '\' + cstrSettingsDirectoryName;
  if not CreateDir(pSettingsDirectory)then
  begin
    showmessage('SETTINGS DIRECTORY FAILED');
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pSettingsDirectory)

  // LOGBOOKS DIRECTORY
  pLogbooksDirectory := pUserDataDirectory + '\' + cstrLogbooksDirectoryName;
  if not CreateDir(pLogbooksDirectory)then
  begin
    showmessage('LOGBOOKS DIRECTORY FAILED');
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pLogbooksDirectory)

  // BACKUPS DIRECTORY
  pBackupsDirectory := pUserDataDirectory + '\' + cstrBackupsDirectoryName;
  if not CreateDir(pBackupsDirectory)then
  begin
    showmessage('BACKUP DIRECTORY FAILED');
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pBackupsDirectory)

  // Load the databases
  CopyFile (frmSettings.pApplicationDirectory +
            '\' + 'UserData' + '\' + 'ApplicationDB.sl3',
            frmSettings.pUserDataDirectory + '\' + 'ApplicationDB.sl3');

  CopyFile (frmSettings.pApplicationDirectory +
            '\' + 'UserData' + '\' + 'LogbooksDB.sl3',
            frmSettings.pUserDataDirectory + '\' + 'LogbooksDB.sl3');

  CopyFile (frmSettings.pApplicationDirectory +
            '\' + 'UserData' + '\' + 'ManufacturersDB.sl3',
            frmSettings.pUserDataDirectory + '\' + 'ManufacturersDB.sl3');

//     CopyFile (frmSettings.pApplicationDirectory +
//               '\' + 'UserData' + '\' + frmHUGeoDB.pHUGeoDBName,
//               frmHUGeoDB.pHUGeoDBPath);

  Result := True;

end;// function CreateUserDataDirectories

//========================================================================================
//          PUBLIC ROUTINES
//========================================================================================

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
function TfrmSettings.GetAppName: string;
begin
   Result := fAppName;
end;// function TfrmSettings.GetAppName

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetAppName(AppName: string);
begin
    fAppName := AppName;
end;// procedure TfrmSettings.SetAppName

//========================================================================================
function TfrmSettings.GetUserDataDirectory: string;
begin
   Result := fUserDataDirectory;
end;// function TfrmSettings.GetUserDataDirectory

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetUserDataDirectory(Dir: string);
begin
    fUserDataDirectory := Dir;
end;// procedure TfrmSettings.SetUserDataDirectory

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
                                   pUserDataDirectory);

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

  pAppName := cstrAppName;
  pApplicationDirectory := GetCurrentDir;
  pSystemUserDirectory := GetUserDir;
  pUserDataDirectory := frmSettings.pSystemUserDirectory + cstrUserDataDirectoryPath;
  pSettingsDirectory := pUserDataDirectory + '\' + cstrSettingsDirectoryName;

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

