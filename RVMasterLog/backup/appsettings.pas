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
//              SuppliersTable : frmSuppliersTable.CreateSuppliersTable
//
// Calls :  HUConstants
//
// Ver. : 1.0.0
//
// Date : 28 Jun 2019
//
//========================================================================================

interface

uses
  Buttons, Classes, ComCtrls, Controls, Dialogs, FileUtil, Forms, Graphics, INIFiles,
  StdCtrls, SysUtils, Types,
  //App Units
  SuppliersTable,
  // HULib units
  HUConstants, HUMessageBoxes;

type

  { TfrmSettings }

  TfrmSettings = class(TForm)
    bbtCancel: TBitBtn;
    bbtOk: TBitBtn;
    edtBackupsDirectory: TEdit;
    edtAppDataDirectory: TEdit;
    edtLogbooksDirectory: TEdit;
    edtSettingsDirectory: TEdit;
    edtApplicationDirectory: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pcSettings: TPageControl;
    pgDirectories: TTabSheet;
    procedure bbtCancelClick(Sender: TObject);
    procedure bbtOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pgDirectoriesContextPopup(Sender: TObject; MousePos: TPoint;
              var Handled: Boolean);

  private
    fApplicationDirectory : string;
    fAppName : string;
    fSystemUserDirectory : string;
    fUserDirectory : string;
    fSettingsDirectory : string;
    fLogbooksDirectory : string;
    fBackupsDirectory : string;
    fAppDataDirectory : string;
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
    function GetUserDirectory : string;
    procedure SetUserDirectory(Dir : string);
    function GetSettingsDirectory : string;
    procedure SetSettingsDirectory(Dir : string);
    function GetLogbooksDirectory : string;
    procedure SetLogbooksDirectory(Dir : string);
    function GetBackupsDirectory : string;
    procedure SetBackupsDirectory(Dir : string);
    function GetAppDataDirectory : string;
    procedure SetAppDataDirectory(Dir : string);
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
    property pUserDirectory : string read GetUserDirectory write SetUserDirectory;
    property pSettingsDirectory : string read GetSettingsDirectory write SetSettingsDirectory;
    property pLogbooksDirectory : string read GetLogbooksDirectory write SetLogbooksDirectory;
    property pBackupsDirectory : string read GetBackupsDirectory write SetBackupsDirectory;
    property pAppDataDirectory : string read GetAppDataDirectory write SetAppDataDirectory;
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

  //========================================================================================
  //          PUBLIC CONSTANTS
  //========================================================================================
const

  //==========
  //  SQLite
  //==========
  cstrSQLiteLibraryName = 'sqlite3.dll';

  //==========
  //  MESSAGES
  //==========

    // Error MEssages

       erNoDataDirectoriesFound = '       MAJOR ERROR' +
                                  K_CR +
                                   K_CR +
                                   'No Data Directories found.' +
                                   K_CR +
                                   K_CR +
                                   'Is this an Initial installation ?';

       erCreateUserDataDirFailed = 'Failure Creating User Data Directory';

       erCreateUserSettingsDirFailed = 'Failure Creating User Settings Directory';

       erCreateUserDirsFailed = 'Failure Creating User Directories';

    // Information Messages

      imCreateUserDirs = 'Creating User Directories';

      imNoINIFile = '   The .INI file Does Not Exist.'
                  + K_CR
                  + ' Is this an Initial installation ?';


  //==========
  // DATA ELEMENTS
  //==========

    cstrApplicationDBName = 'ApplicationDB';

  //========================================================================================
  //          PUBLIC VARIABLES
  //========================================================================================

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
  cstrAppDataDirectoryName = 'App Data';
  cstrUserDirectoryPath = 'AppData\Roaming\RVMasterLog';

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================

//========================================================================================
//          PRIVATE ROUTINES
//========================================================================================
function TfrmSettings.UserDataDirectoriesExist : Boolean;
begin

  Result := True;

  if not DirectoryExists(pUserDirectory) then
  begin

    if HUErrorMsgYN('erNoDataDirectoriesFound', erNoDataDirectoriesFound) = mrYes then
    begin

      HUInformationMsgOK('imCreateUserDirs', imCreateUserDirs);

      if not CreateUserDataDirectories then
        Result := False;

    end;// if HUErrorMsgYN(' No User Directory', 'Create One ?') = mrYes

  end;// if UserDataDirectoriesExist(pUserDirectory)

end;// function TfrmAppSetupApplicationDirectoryp.UserFIlesExist

//========================================================================================
function TfrmSettings.CreateUserDataDirectories : Boolean;
var
  VStr : string;
begin

    // CREATE USER DATA DIRECTORY
  pUserDirectory := frmSettings.pSystemUserDirectory + cstrUserDirectoryPath;

  if not CreateDir(pUserDirectory) then
  begin
    HUErrorMsgYN('erNoDataDirectoriesFound', erNoDataDirectoriesFound);
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pUserDirectory)

    // CREATE SETTINGS DIRECTORY
  pSettingsDirectory := pUserDirectory + '\' + cstrSettingsDirectoryName;

  if not CreateDir(pSettingsDirectory)then
  begin
    showmessage('SETTINGS DIRECTORY FAILED');
    HUErrorMsgYN('erNoDataDirectoriesFound', erNoDataDirectoriesFound);
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pSettingsDirectory)

    // CREATE BACKUPS DIRECTORY
  pBackupsDirectory := pUserDirectory + '\' + cstrBackupsDirectoryName;

  if not CreateDir(pBackupsDirectory)then
  begin
    showmessage('BACKUP DIRECTORY FAILED');
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pBackupsDirectory)

  // CREATE LOGBOOKS DIRECTORY
  pLogbooksDirectory := pUserDirectory + '\' + cstrLogbooksDirectoryName;

  if not CreateDir(pLogbooksDirectory)then
  begin
    showmessage('LOGBOOKS DIRECTORY FAILED');
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pLogbooksDirectory)

    // CREATE APPLICATION Database and Tables
  pAppDataDirectory := pUserDirectory + '\' + cstrAppDataDirectoryName;
  if not CreateDir(pAppDataDirectory)then
  begin
    showmessage('APPDATADIRECTORY FAILED');
    Result := False;
    Main.TerminateApp;
  end;// if not CreateDir(pAppDataDirectory)

//    frmSuppliersTable.CreateSuppliersTable;

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
function TfrmSettings.GetAppDataDirectory: string;
begin
   Result := fAppDataDirectory;
end;// procedure TfrmSettings.GetAppDataDirectory

//----------------------------------------------------------------------------------------
procedure TfrmSettings.SetAppDataDirectory(Dir: string);
begin
    fAppDataDirectory := Dir;
end;// procedure TfrmSettings.SetAppDataDirectory

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
  cstrKeyAppDataDirectory = 'App Data Directory';

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

    // APPLICATION DATA DIRECTORY
  vstrTStr := ApplicationINIFile.ReadString(cstrUserDirectories,
                                            cstrKeyAppDataDirectory,
                                            pAppDataDirectory);
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

    ApplicationINIFile.WriteString(cstrUserDirectories,
                                    cstrKeyAppDataDirectory,
                                    pAppDataDirectory);

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
  pUserDirectory := frmSettings.pSystemUserDirectory + cstrUserDirectoryPath;
  pSettingsDirectory := pUserDirectory + '\' + cstrSettingsDirectoryName;

end;// procedure TfrmAppSetup.FormCreate

//----------------------------------------------------------------------------------------
procedure TfrmSettings.FormShow(Sender: TObject);
begin

  // Load current properties
  edtApplicationDirectory.Text:= pApplicationDirectory;
  edtSettingsDirectory.Text:=pSettingsDirectory;
  edtLogbooksDirectory.Text:=pLogbooksDirectory;
  edtBackupsDirectory.Text := pBackupsDirectory;
  edtAppDataDirectory.Text := pAppDataDirectory;

end; // procedure TfrmAppSetup.FormShow

procedure TfrmSettings.pgDirectoriesContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

//----------------------------------------------------------------------------------------
procedure TfrmSettings.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;// procedure TfrmAppSetup.FormClose

//========================================================================================

end.// unit AppSettings

