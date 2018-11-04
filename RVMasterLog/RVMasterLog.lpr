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
// Date : 2 Nov 2018
//
//========================================================================================

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  // Application Units
  Main, AppInit, AppFinal, RVData, SuppliersTable, AppSettings, ProvTable
  // HULibraries
  ;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmRVData, frmRVData);
  Application.CreateForm(TfrmSuppliersTable, frmSuppliersTable);
  Application.CreateForm(TfrmProvTable, frmProvTable);
  Application.Run;
end.

