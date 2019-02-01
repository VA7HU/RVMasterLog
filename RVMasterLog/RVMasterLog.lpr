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
// Date : 31 Jan 2019
//
//========================================================================================

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, HUDirNameEntry, HUConstants, HUMessageBoxes, HUValidations,
  // Application Units
  AppFinal, AppInit, AppSettings, Main, SuppliersTable,
  HURegistration, hucommondatadb;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmSuppliersTable, frmSuppliersTable);
  Application.CreateForm(TdlgHUDirNameEntry, dlgHUDirNameEntry);
  Application.CreateForm(TdlgHURegistration, dlgHURegistration);
  Application.CreateForm(TdlgHUCommonDataDB, dlgHUCommonDataDB);
  Application.Run;
end.

