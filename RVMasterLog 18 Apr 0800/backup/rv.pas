unit RV;

{$mode objfpc}{$H+}
 
//========================================================================================
//
// Unit : RV.pas
//
// Description :
//
// Called By : Main : TfrmMain.mnuLogbooksNewClick
//
// Calls :
//
// Ver. : 1.0.0
//
// Date : 31 Jul 2018
//
//========================================================================================

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls;

type

  { TfrmRV }

  TfrmRV = class(TForm)
    PageControl1: TPageControl;
    StatusBar1: TStatusBar;
  private

  public

  end;

var
  frmRV: TfrmRV;

implementation

{$R *.lfm}

end.

