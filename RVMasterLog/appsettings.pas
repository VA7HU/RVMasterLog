unit AppSettings;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : AppSettings.pas
//
// Description :
//
// Called By :  AppInit : Initialize
//
// Calls :
//
// Ver. : 1.00
//
// Date : 30 Jul 2018
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
    bbtBrowse: TBitBtn;
    Edit1: TEdit;
    edtLogbookDirectory: TEdit;
    edtSettingsDirectory: TEdit;
    edtApplicationDirectory: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    pcSettings: TPageControl;
    tsDirectories: TTabSheet;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fApplicationDirectory : string;
    fSettingsDirectory : string;
{    fRadiosDirectory : string;
    fBackupDirectory : string; }
    function GetApplicationDirectory : string;
    procedure SetApplicationDirectory(Dir : string);
    function GetSettingsDirectory : string;
    procedure SetSettingsDirectory(Dir : string);
{    function GetRadiosDirectory : string;
    procedure SetRadiosDirectory(Dir : string);
    function GetBackupDirectory : string;
    procedure SetBackupDirectory(Dir : string); }


  public
    property pApplicationDirectory : string read GetApplicationDirectory                                     write SetApplicationDirectory;
    property pSettingsDirectory : string read GetSettingsDirectory                                     write SetApplicationDirectory;

    function INIFileExists : Boolean;
    procedure ReadSettingsINIFile;
    procedure WriteSettingsINIFile;
  end;

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


//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================

//========================================================================================
//          MENU ROUTINES
//========================================================================================

//========================================================================================
//          COMMAND BUTTON ROUTINES
//========================================================================================

//========================================================================================
//          CONTROL ROUTINES
//========================================================================================

//========================================================================================
//          FILE ROUTINES
//========================================================================================

          //==============================
          //        SettingsINIFile
          //==============================

const

  cstrRadiosDirectoryName = 'Radios';
  cstrBackupDirectoryName = 'Backup';

  cstrApplicationINIFileName = 'RVMasterLog.ini';

  cstrSectionDirectories = 'DIRECTORIES';
  cstrKeySettingsDirectory = 'Settings Directory';
  cstrKeyRadiosDirectory = 'Radios Directory';
  cstrKeyBackupDirectory = 'Backup Directory';

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

  ApplicationINIFileName := pApplicationDirectory + '\' + cstrApplicationINIFileName;
  ApplicationINIFile := TINIFile.Create(ApplicationINIFileName);

  // APPLICATION DIRECTORY SECTION

  vstrTStr := ApplicationINIFile.ReadString(cstrSectionDirectories,
                                                        cstrKeySettingsDirectory,
                                                        '');
  if vstrTStr = '' then
    vstrTStr := GetUserDir;
  pSettingsDirectory := vstrTStr;

{  vstrTStr := ApplicationINIFile.ReadString(cstrSectionDirectories,
                                            cstrKeyRadiosDirectory,
                                            '');
  if vstrTStr = '' then
    vstrTStr := pApplicationDirectory + '\' + cstrRadiosDirectoryName;
  pRadiosDirectory := vstrTStr;

  vstrTStr := ApplicationINIFile.ReadString(cstrSectionDirectories,
                                            cstrKeyBackupDirectory,
                                            '');
  if vstrTStr = '' then
    vstrTStr := pApplicationDirectory + '\' + cstrBackupDirectoryName;
  pBackupDirectory := vstrTStr; }

  ApplicationINIFile.Free;

end;// procedure TfrmSettings.ReadSettingsINIFile

//----------------------------------------------------------------------------------------
procedure TfrmSettings.WriteSettingsINIFile;
begin

{    showmessage('WriteSettingsINIFile');

    ApplicationINIFileName := pApplicationDirectory + '\' + cstrApplicationINIFileName;
    ApplicationINIFile := TINIFile.Create(ApplicationINIFileName);

    ApplicationINIFile.WriteString(cstrSectionDirectories,
                                    cstrKeySettingsDirectory,
                                    pSettingsDirectory);

    ApplicationINIFile.WriteString(cstrSectionDirectories,
                                    cstrKeyBackupDirectory,
                                    pBackupDirectory);

    ApplicationINIFile.Free;}

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

  // Hide future controls
  //bbtSettingsBrowse.Visible:=False;
  //bbtBackupBrowse.Visible:=False;

  // Load current properties

//    showmessage('AppSettings - ' + frmAppSetup.pApplicationDirectory);

  edtApplicationDirectory.Text:=pApplicationDirectory;
  //edtSettingsDirectory.Text:=pSettingsDirectory;
  //edtRadiosDirectory.Text:=pRadiosDirectory;
  //edtBackupDirectory.Text:=pBackupDirectory;

end; // procedure TfrmAppSetup.FormShow

//----------------------------------------------------------------------------------------
procedure TfrmSettings.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
    //showmessage('AppSettings - ' + frmAppSetup.pApplicationDirectory);
end;// procedure TfrmAppSetup.FormClose

//========================================================================================

end.// unit AppSettings

