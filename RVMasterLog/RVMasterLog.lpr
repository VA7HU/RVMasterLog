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
// Date : 4 May 2019
//
//========================================================================================

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, Forms, HUNagScreen, HURegistration, HUConstants, HUMessageBoxes,
  HUValidations,
  // Application Units
  AppFinal, AppInit, AppSettings, Logbook, Main, ManufacturersTable, SuppliersTable,
  ProvTable, RVData;

{$R *.res}

begin

  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmSuppliersTable, frmSuppliersTable);
  Application.CreateForm(TdlgHUNagScreen, dlgHUNagScreen);
  Application.CreateForm(TdlgHURegistration, dlgHUREgistration);
  Application.CreateForm(TfrmLogbook, frmLogbook);
  Application.Run;

end.//program RVMasterLog

//========================================================================================


