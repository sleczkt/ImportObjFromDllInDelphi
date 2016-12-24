program TestSimpleCalculator;

uses
  Forms,
  MainFormU in 'MainFormU.pas' {MainForm},
  ISimpleCalculatorU in 'ISimpleCalculatorU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
