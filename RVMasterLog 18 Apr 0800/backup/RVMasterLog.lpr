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
// Date : 1 Feb 2019
//
//========================================================================================

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,

  // Application Units
  AppFinal, AppInit, AppSettings, Main, SuppliersTable,
  // HULib Units
  HUConstants, HUDirNameEntry, HUMessageBoxes, HUNagScreen, HURegistration,
  HUValidations;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmSuppliersTable, frmSuppliersTable);
  Application.CreateForm(TdlgHUDirNameEntry, dlgHUDirNameEntry);
  Application.CreateForm(TdlgHURegistration, dlgHURegistration);
  Application.CreateForm(TdlgHUNagScreen, dlgHUNagScreen);
  Application.dlgHUNagScreen.Show;
  Application.Run;
end.

