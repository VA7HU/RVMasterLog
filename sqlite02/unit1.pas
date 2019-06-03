unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DbCtrls, DBGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    dsGuitars: TDataSource;
    gridGuitars: TDBGrid;
    DBNavigator2: TDBNavigator;
    dsMembers: TDataSource;
    gridMembers: TDBGrid;
    DBNavigator1: TDBNavigator;
    SQLite3Connection1: TSQLite3Connection;
    queryGuitars: TSQLQuery;
    queryMembers: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

{
Note that for queryGuitars, the query's DataSource property tells it that
it has a "master".
}
procedure TForm1.FormShow(Sender: TObject);
begin
  SQLite3Connection1.Connected := False;
  queryMembers.Active := False;
  SQLTransaction1.Active := False;
  queryGuitars.Active := False;

  SQLite3Connection1.DatabaseName := 'guitarclub.db';
  queryMembers.Options := [sqoKeepOpenOnCommit,sqoAutoApplyUpdates,sqoAutoCommit];
  queryMembers.SQL.Text :=
    'select * from members order by upper(lastname), upper(firstname)';
  queryGuitars.Options := [sqoKeepOpenOnCommit,sqoAutoApplyUpdates,sqoAutoCommit];
  queryGuitars.DataSource := dsMembers; // for master-detail relationship!
  queryGuitars.SQL.Text := 'select * from guitars where guitars.memberid=:id';

  SQLite3Connection1.Open;
  SQLTransaction1.Active := True;
  queryMembers.Open;
  queryGuitars.Open;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  queryGuitars.Active := False;
  queryMembers.Active := False;
  SQLTransaction1.Active := False;
  SQLite3Connection1.Close;
end;

end.

