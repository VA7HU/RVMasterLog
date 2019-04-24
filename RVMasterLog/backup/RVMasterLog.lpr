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
// Date : 24 Apr 2019
//
//========================================================================================

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, Forms, HUNagScreen, HURegistration, HUMessageBoxes, HUConstants,
		HUValidations,
  // Application Units
  AppFinal, AppInit, AppSettings, Main, ManufacturersTable, NewLogbook, SuppliersTable,
		LogbooksTable, ProvTable;

{$R *.res}

begin

  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmSuppliersTable, frmSuppliersTable);
  Application.CreateForm(TdlgHUNagScreen, dlgHUNagScreen);
  Application.CreateForm(TdlgHURegistration, dlgHURegistration);
  Application.Run;

end.//program RVMasterLog

//========================================================================================


