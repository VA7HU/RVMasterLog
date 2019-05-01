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
// Date : 24 Apr 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, ComCtrls, Buttons, StdCtrls, ExtCtrls,
  //
  AppSettings;

type

  { TfrmRVData }

  TfrmRVData = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    function CreateRVDataDB: boolean;

  private

  public

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
const

  //==========
  //  MESSAGES
  //==========

  // Information Messages

  imNotImplementedMsg = 'Not Yet Implemented';

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

end;// function TfrmRVData.CreateRVDataDB

//========================================================================================
//          PROPERTY ROUTINES
//========================================================================================
{function TfrmRVData.GetRVDataDir: string;
begin
   Result := fRVDataDir;
end;// function TfrmRVData.GetApplicationDirectory

//----------------------------------------------------------------------------------------
procedure TfrmRVData.SetRVDataDir(Dir: string);
begin
    fRVDataDir := Dir;
end;// procedure TfrmRVData.SetRVDataDir  }

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

