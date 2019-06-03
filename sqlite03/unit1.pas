unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DbCtrls, DBGrids, ExtCtrls, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnPostGuitars: TSpeedButton;
    edID: TDBEdit;
    edMemberID: TDBEdit;
    edKind: TDBEdit;
    edYear: TDBEdit;
    edFirstname: TDBEdit;
    edModel: TDBEdit;
    edLastname: TDBEdit;
    dsGuitars: TDataSource;
    edBrand: TDBEdit;
    gridGuitars: TDBGrid;
    DBNavGuitars: TDBNavigator;
    dsMembers: TDataSource;
    gridMembers: TDBGrid;
    DBNavMembers: TDBNavigator;
    panMembers: TPanel;
    btnEditMembers: TSpeedButton;
    btnPostMembers: TSpeedButton;
    panGuitars: TPanel;
    btnEditGuitars: TSpeedButton;
    btnCancelMembers: TSpeedButton;
    btnCancelGuitars: TSpeedButton;
    btnInsertMembers: TSpeedButton;
    btnInsertGuitars: TSpeedButton;
    SQLite3Connection1: TSQLite3Connection;
    queryGuitars: TSQLQuery;
    queryMembers: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure btnCancelGuitarsClick(Sender: TObject);
    procedure btnCancelMembersClick(Sender: TObject);
    procedure btnEditGuitarsClick(Sender: TObject);
    procedure btnInsertGuitarsClick(Sender: TObject);
    procedure btnInsertMembersClick(Sender: TObject);
    procedure btnPostGuitarsClick(Sender: TObject);
    procedure btnPostMembersClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnEditMembersClick(Sender: TObject);
    procedure queryMembersBeforeDelete(DataSet: TDataSet);
  private
    procedure UpdateUI;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
begin
  panMembers.Hide;
  panGuitars.Hide;
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

procedure TForm1.btnEditMembersClick(Sender: TObject);
begin
  panMembers.Visible := True;
  UpdateUI;
  edLastname.SetFocus;
  queryMembers.Edit;
end;

procedure TForm1.btnInsertMembersClick(Sender: TObject);
var
  IDNr: integer;
  ID, OldSQL: string;
begin
  // Get highest ID and add 1
  OldSQL := queryMembers.SQL.Text;
  queryMembers.Active := False;
  queryMembers.SQL.Text := 'select * from members order by ID';
  queryMembers.Active := True;
  queryMembers.Last;
  IDNr := StrToInt(queryMembers.FieldByName('ID').AsString) + 1;
  ID := IntToStr(IDNr);
  while Length(ID) < 4 do
    ID := '0' + ID;

  queryMembers.Active := False;
  queryMembers.SQL.Text := OldSQL;
  queryMembers.Active := True;
  panMembers.Visible := True;
  UpdateUI;
  queryMembers.Insert;
  edID.Text := ID;
  edLastname.SetFocus;
end;

procedure TForm1.btnPostMembersClick(Sender: TObject);
begin
  if Trim(edLastName.Text) = '' then begin
    ShowMessage('LASTNAME can not be empty');
    edLastname.SetFocus;
  end
  else begin
    queryMembers.Post;
    panMembers.Visible := False;
    UpdateUI;
  end;
end;

procedure TForm1.btnCancelMembersClick(Sender: TObject);
begin
  queryMembers.Cancel;
  panMembers.Visible := False;
  UpdateUI;
end;

procedure TForm1.btnEditGuitarsClick(Sender: TObject);
begin
  panGuitars.Visible := True;
  UpdateUI;
  edBrand.SetFocus;
  queryGuitars.Edit;
end;

procedure TForm1.btnInsertGuitarsClick(Sender: TObject);
begin
  panGuitars.Visible := True;
  UpdateUI;
  queryGuitars.Insert;
  edMemberID.Text := queryMembers.FieldByName('ID').AsString;
  edBrand.SetFocus;
end;

procedure TForm1.btnPostGuitarsClick(Sender: TObject);
begin
  if Trim(edBrand.Text) = '' then begin
    ShowMessage('BRAND can not be empty');
    edBrand.SetFocus;
  end
  else if Trim(edModel.Text) = '' then begin
    ShowMessage('MODEL can not be empty');
    edModel.SetFocus;
  end
  else begin
    queryGuitars.Post;
    panGuitars.Visible := False;
    UpdateUI;
  end;
end;

procedure TForm1.btnCancelGuitarsClick(Sender: TObject);
begin
  queryGuitars.Cancel;
  panGuitars.Visible := False;
  UpdateUI;
end;

procedure TForm1.queryMembersBeforeDelete(DataSet: TDataSet);
begin
  queryGuitars.First;
  while not queryGuitars.EOF do
    queryGuitars.Delete;
end;

procedure TForm1.UpdateUI;
begin
  gridMembers.Enabled := (not panMembers.Visible) and (not panGuitars.Visible);
  DBNavMembers.Enabled := gridMembers.Enabled;
  btnEditMembers.Enabled := gridMembers.Enabled;
  btnInsertMembers.Enabled := gridMembers.Enabled;
  gridGuitars.Enabled := gridMembers.Enabled;
  DBNavGuitars.Enabled := gridGuitars.Enabled;
  btnEditGuitars.Enabled := gridGuitars.Enabled;
  btnInsertGuitars.Enabled := gridGuitars.Enabled;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  queryGuitars.Active := False;
  queryMembers.Active := False;
  SQLTransaction1.Active := False;
  SQLite3Connection1.Close;
end;

end.

