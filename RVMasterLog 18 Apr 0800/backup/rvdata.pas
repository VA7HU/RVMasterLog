unit RVData;

{$mode objfpc}{$H+}
 
//========================================================================================
//
// Unit : RV.pas
//
// Description :
//
// Called By : AppSettings : frmSettings.GetLogbooksDirectory
//             Main : TfrmMain.mnuLogbooksNewClick
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 24 Dec 2018
//
//========================================================================================

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, ComCtrls, Buttons, StdCtrls,
  //
  AppSettings;

type

  { TfrmRVData }

  TfrmRVData = class(TForm)
    bbtOK: TBitBtn;
    bbtClose: TBitBtn;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    PageControl1: TPageControl;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StatusBar1: TStatusBar;
    tsGeneral: TTabSheet;
    procedure FormShow(Sender: TObject);
    function CreateRVDataDB: boolean;

  private
    fRVDataDir : string;
    function GetRVDataDir : string;
    procedure SetRVDataDir(Dir : string);

  public
    property pRVDataDir : string read GetRVDataDir write SetRVDataDir;

  end;

var
  frmRVData: TfrmRVData;

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
function TfrmRVData.CreateRVDataDB: boolean;
begin

  showmessage('Creating New Logbook');

  // First create the Logbook folder
  SelectDirectoryDialog1.Execute;

end;// function TfrmRVData.CreateRVDataDB

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================
function TfrmRVData.GetRVDataDir: string;
begin
   Result := fRVDataDir;
end;// function TfrmRVData.GetApplicationDirectory

//----------------------------------------------------------------------------------------
procedure TfrmRVData.SetRVDataDir(Dir: string);
begin
    fRVDataDir := Dir;
end;// procedure TfrmRVData.SetRVDataDir

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

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmRVData.FormShow(Sender: TObject);
begin

  { SQLite3Connection1.DatabaseName := 'A.db';
   SQLite3Connection1.Transaction := SQLTransaction1;

   SQLTransaction1.DataBase := SQLite3Connection1;

   SQLQuery1.DataBase := SQLite3Connection1;
   SQLQuery1.Transaction := SQLTransaction1;
   SQLQuery1.SQL.Text := 'SELECT * FROM Student';

   DataSOurce1.DataSet := SQLQuery1;
   DBGrid1.DataSource := DataSource1;

   SQLite3Connection1.Open;

   if SQLite3Connection1.Connected then
     Label1.Caption := 'Connected - Great'
   else
     Label1.Caption := 'OOOPS';

   SQLQuery1.Open;   }

end;// procedure TfrmRVData.FormShow

//========================================================================================
end.// unit RVData

