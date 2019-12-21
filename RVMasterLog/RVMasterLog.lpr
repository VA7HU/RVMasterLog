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
// Date : 21 Dec 2019
//
//========================================================================================

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, Forms,   dbflaz,
  // Application Units
  AppFinal, AppInit, AppSettings, Logbook, Main, ManufacturersTable,
  ProvTable, RVData, SuppliersTable, ApplicationDB, SuppliersDB{,
  // HULibraries
  huconstants, humessageboxes, hunagscreen, huregistration};

{$R *.res}

begin

  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmLogbook, frmLogbook);
  Application.CreateForm(TfrmSuppliersTable, frmSuppliersTable);
//  Application.CreateForm( TdlgHURegistration, dlgHURegistration);
//  Application.CreateForm( TdlgHUNagScreen, dlgHUNagScreen);
  Application.CreateForm(TdmApplicationDB, dmApplicationDB);
  Application.CreateForm(TdmSuppliersDB, dmSuppliersDB);
  Application.Run;

end.//program RVMasterLog

//========================================================================================


