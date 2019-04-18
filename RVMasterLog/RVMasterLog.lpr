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
// Date : 18 Apr 2019
//
//========================================================================================

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, Forms,
  // Application Units
  AppFinal, AppInit, AppSettings, Main, SuppliersTable,
  // HULib units
  HUDirNameEntry, HUConstants, HUMessageBoxes, HUNagScreen, HURegistration, HUValidations;

{$R *.res}

begin

  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TdlgHUNagScreen, dlgHUNagScreen);
  Application.CreateForm(TdlgHURegistration, dlgHURegistration);
  Application.CreateForm(TfrmSuppliersTable, frmSuppliersTable);
  Application.Run;

end.//program RVMasterLog

//========================================================================================


