unit ProvTable;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, sqlite3conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, Buttons, DbCtrls, DBGrids;

type

  { TfrmProvTable }

  TfrmProvTable = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    dbedtAbbreviation: TDBEdit;
    dbedtFullName: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
  private

  public

  end;

var
  frmProvTable: TfrmProvTable;

implementation

{$R *.lfm}

end.

