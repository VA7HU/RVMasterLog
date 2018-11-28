unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, Buttons, StdCtrls,
  Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure BitBtn1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

  Form2.SHowModal;

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

end;

end.

