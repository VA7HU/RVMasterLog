program RVMasterLog;

{$mode objfpc}{$H+}

//========================================================================================
//
// Unit : RVMasterLog.lpr
//
// Description :
//
// Called By :
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 28 Dec 2018
//
//========================================================================================

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, huvalidations, HUConstants, HUMessageBoxes, hudirnameentry,
  // Application Units
  AppFinal, AppInit, AppSettings, Main, SuppliersTable, Logbook;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmSuppliersTable, frmSuppliersTable);
  Application.CreateForm(TfrmLogbook, frmLogbook);
  Application.CreateForm(TdlgHUDirNameEntry, dlgHUDirNameEntry);
  Application.Run;
end.

