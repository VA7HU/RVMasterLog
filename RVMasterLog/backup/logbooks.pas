unit NewLogbook;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : Logbooks.pas
//
// Description :
//
// Called By :  Main : TfrmMain.mnuLogbooksNewClick
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
  Classes, SysUtils, sqlite3conn, sqldb, FileUtil, Forms, Controls, Graphics,
  Dialogs, Buttons, DbCtrls, DBGrids, StdCtrls;

type

  { TfrmLogBooks }

  TfrmLogBooks = class(TForm)
    bbtCancel: TBitBtn;
    bbtOk: TBitBtn;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
    function CreateLogbookFolder: boolean;
  private

  public

  end;

var
  frmLogBooks: TfrmLogBooks;

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
function TfrmLogBooks.CreateLogbookFolder: boolean;
begin
  showmessage('TfrmLogBooks.CreateLogbookFolder');

end;// function TfrmLogBooks.CreateLogbookFolder

//========================================================================================
//          PUBLIC ROUTINES
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
procedure TfrmLogBooks.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin

end;// procedure TfrmLogBooks.DBEdit1KeyPress

//========================================================================================
//          FILE ROUTINES
//========================================================================================

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmLogBooks.FormShow(Sender: TObject);
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

end;// procedure TfrmLogBooks.FormShow

//========================================================================================

{ TfrmLogBooks }

end.// unit Logbooks

