unit SuppliersTable;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : SuppliersTable.pas
//
// Description :
//
// Called By : AppSettings : frmSettings.CreateUserDataDirectories
//
// Calls : frmAppSettings.pApplicationDB
//         Main : TerminateApp
//
// Ver. : 1.0.0
//
// Date : 29 May 2019
//
//========================================================================================

interface

uses
  Classes, SysUtils, db, dbf, Dbf_Common, sqlite3conn, sqldb, Forms, Controls,
  Graphics, Dialogs, Buttons, DBCtrls;
  // Application Units
  // HULib Units


//========================================================================================
//          PUBLIC VARIABLES
//========================================================================================

//========================================================================================
//          PUBLIC CONSTANTS
//========================================================================================

type

  { TfrmSuppliersTable }

  TfrmSuppliersTable = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bbtNew: TBitBtn;
    bbtEdit: TBitBtn;
    bbtDelete: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SQLite3Connection1: TSQLite3Connection;
    SQLTransaction1: TSQLTransaction;
    SuppliersTbl: TDbf;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CreateSuppliersTable;
  private

  public

  end;// TfrmSuppliersTable

var

  frmSuppliersTable: TfrmSuppliersTable;

implementation

{$R *.lfm}

uses
  AppSettings, Main;

//========================================================================================
//          PRIVATE CONSTANTS
//========================================================================================
const
  cstrSuppliersTableName = 'Suppliers.Tbl';

//========================================================================================
//          PRIVATE VARIABLES
//========================================================================================

//========================================================================================
//          PRIVATE ROUTINES
//========================================================================================

//========================================================================================
//          PUBLIC ROUTINES
//========================================================================================
procedure TfrmSuppliersTable.CreateSuppliersTable;

var
  createTables:boolean;

begin

    {$ifdef CPU32}
      showmessage('32 Bit');
       //Result := GetPEType(APath) = 2; //the application is compiled as 32-bit, we ask if GetPeType returns 2
     {$endif}
     {$ifdef CPU64}
       showmessage('64 Bit');
      //Result := GetPEType(APath) = 3; //the application is compiled as 64-bit, we ask if GetPeType returns 3
     {$endif}

    {$IFDEF UNIX}  // Linux
      {$IFNDEF DARWIN}
        SQLiteLibraryName := './libsqlite3.so';
      {$ENDIF}
    {$ENDIF}

    {$IFDEF WINDOWS} // Windows
    SQLiteLibraryName := 'sqlite3.dll';
    {$ENDIF}

    SQLite3Connection1.DatabaseName:=GetAppConfigDir(false) + 'mydatabase.db';

    if not DirectoryExists(GetAppConfigDir(false)) then  // Check if config directory exists
      MkDir(GetAppConfigDir(false));                // if not: create it

    createTables := not FileExists(SQLite3Connection1.DatabaseName); // no file = create new tables

    SQLite3Connection1.Open;
    SQLTransaction1.Active:=true;

    if createTables then
      begin
        SQLite3Connection1.ExecuteDirect('CREATE TABLE "movies"('+
                      ' "bitrate" Numeric,'+
                      ' "duration" DateTime,'+
                      ' "fileextension" Text,'+
                      ' "filename" Text NOT NULL,'+
                      ' "filesize" Numeric,'+
                      ' "filesizetext" Text,'+
                      ' "format_long" Text,'+
                      ' "id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,'+
                      ' "path" Text);');

        SQLite3Connection1.ExecuteDirect('CREATE INDEX "movies_filename_idx" ON "movies"( "filename" );');
        SQLite3Connection1.ExecuteDirect('CREATE UNIQUE INDEX "movies_id_idx" ON "movies"( "id" );');

        SQLTransaction1.Commit;
      end;
  //end;

end;// function TfrmSuppliersTable.CreateSuppliersTable

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

//========================================================================================
//          FORM ROUTINES
//========================================================================================
procedure TfrmSuppliersTable.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;// procedure TfrmSuppliersTable.FormClose

//========================================================================================
procedure TfrmSuppliersTable.FormCreate(Sender: TObject);
begin
    CreateSuppliersTable;
end;// procedure TfrmSuppliersTable.FormCreate

//========================================================================================
procedure TfrmSuppliersTable.FormShow(Sender: TObject);
begin

    //  showmessage('Path = ' + frmSettings.pApplicationDB);
//  SQLite3Connection1.Open;

end;// procedure TfrmSuppliersTable.FormShow

//========================================================================================


end. // unit SuppliersTable


