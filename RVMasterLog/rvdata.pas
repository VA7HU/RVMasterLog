unit RVData;

{$mode objfpc}{$H+}
 
//========================================================================================
//
// Unit : RV.pas
//
// Description :
//
// Called By : Main : TfrmMain.mnuLogbooksNewClick
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 31 Jul 2018
//
//========================================================================================

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, ComCtrls, Buttons, StdCtrls;

type

  { TfrmRVData }

  TfrmRVData = class(TForm)
    bbtOK: TBitBtn;
    bbtClose: TBitBtn;
    DataSource1: TDataSource;
    edtRVName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    PageControl1: TPageControl;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StatusBar1: TStatusBar;
    tsGeneral: TTabSheet;
  private

  public

  end;

var
  frmRVData: TfrmRVData;

implementation

{$R *.lfm}

end.

