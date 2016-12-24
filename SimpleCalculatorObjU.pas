unit SimpleCalculatorObjU;

interface

uses
 ISimpleCalculatorU;

type

TSimpleCalculator = class( ISimpleCalculator )
public
  constructor Create;
  destructor Destroy; override;
  function Add( value1, value2: Double): Double;        override;
  function Substract( value1, value2: Double ): Double; override;
  function Multiply( value1, value2: Double): Double;   override;
end;

implementation

//****************************************************************************//
                             { TSimpleCalculator }
//****************************************************************************//
constructor TSimpleCalculator.Create;
begin
  inherited Create;
end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
destructor TSimpleCalculator.Destroy;
begin
  inherited Destroy;
end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
function TSimpleCalculator.Add(value1, value2: Double): Double;
begin
  Result:= value1 + value2;
end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
function TSimpleCalculator.Multiply(value1, value2: Double): Double;
begin
  Result:= value1 * value2;
end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
function TSimpleCalculator.Substract(value1, value2: Double): Double;
begin
  Result:= value1 - value2;
end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
end.
