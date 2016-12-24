library SimpleCalculator;


uses
  SysUtils,
  ISimpleCalculatorU   in 'ISimpleCalculatorU.pas',
  SimpleCalculatorObjU in 'SimpleCalculatorObjU.pas';


function __CreateSimpleCalculator: ISimpleCalculator; stdcall;
begin
  Result:= TSimpleCalculator.Create;
end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
procedure __DestroySimpleCalculator( pSimCalc: ISimpleCalculator ); stdcall;
begin
  if ( pSimCalc <> nil ) then
    begin
      FreeAndNil( pSimCalc );
    end;
end;




{$R *.res}


exports
  __CreateSimpleCalculator,
  __DestroySimpleCalculator;

begin
end.
