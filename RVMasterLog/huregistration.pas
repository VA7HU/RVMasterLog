unit HURegistration;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons;

type

  { TdlgHURegistration }

  TdlgHURegistration = class(TForm)
    bbtOK: TBitBtn;
    bbtCancel: TBitBtn;
  private

  public

  end;

var
  dlgHURegistration: TdlgHURegistration;

implementation

{$R *.lfm}

end.

