unit ISimpleCalculatorU;

interface

type

ISimpleCalculator = class
public
  function Add( value1, value2: Double ): Double;       virtual; stdcall; abstract; 
  function Substract( value1, value2: Double ): Double; virtual; stdcall; abstract;
  function Multiply( value1, value2: Double): Double;   virtual; stdcall; abstract;
end;

implementation

end.
