program RVMasterLog;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Main, AppSettings, AppInit, AppFinal, RVData, ManufacturersTable,
  HUConstants, HUMessageBoxes;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmRVData, frmRVData);
  Application.CreateForm(TfrmManufacturersTable, frmManufacturersTable);
  Application.Run;
end.

