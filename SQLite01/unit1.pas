unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DbCtrls, DBGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    dsMembers: TDataSource;
    gridMembers: TDBGrid;
    DBNavigator1: TDBNavigator;
    SQLite3Connection1: TSQLite3Connection;
    queryMembers: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
begin
  SQLite3Connection1.Open;
  SQLTransaction1.Active := True;
  queryMembers.Open;
end;

end.

