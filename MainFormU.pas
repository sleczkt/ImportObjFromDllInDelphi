unit MainFormU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ISimpleCalculatorU, StdCtrls;

type
  TMainForm = class(TForm)
    CalculateButton: TButton;
    Value1Edit: TEdit;
    Value2Edit: TEdit;
    Value1Label: TLabel;
    Value2Label: TLabel;
    AddLabel: TLabel;
    SubstractLabel: TLabel;
    MultiplyLabel: TLabel;
    AddEdit: TEdit;
    SubstractEdit: TEdit;
    MultiplyEdit: TEdit;
    procedure CalculateButtonClick(Sender: TObject);
  private
    value1:          Double;
    value2:          Double;

    iSimCalc:        ISimpleCalculator;

    resultAdd:       Double;
    resultSubstract: Double;
    resultMultiply:  Double;

    { Private declarations }
  public

    constructor Create(AOwner: TComponent ); override;
    destructor Destroy; override;

    { Public declarations }
  end;

  function  __CreateSimpleCalculator: ISimpleCalculator;               stdcall; external 'SimpleCalculator.dll'
  procedure __DestroySimpleCalculator( pSimCalc: ISimpleCalculator );  stdcall; external 'SimpleCalculator.dll'

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

//****************************************************************************//
                                 { TMainForm }
//****************************************************************************//
constructor TMainForm.Create(AOwner: TComponent);
begin
  inherited;
  iSimCalc:=  __CreateSimpleCalculator;
  value1:=            1.0;
  value2:=            2.0;
  
  resultAdd:=         0.0;
  resultSubstract:=   0.0;
  resultMultiply:=    0.0;


  Value1Edit.Text:=  FloatToStr( value1 );
  Value2Edit.Text:=  FloatToStr( value2 );

end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
destructor TMainForm.Destroy;
begin
  __DestroySimpleCalculator( iSimCalc );
  inherited Destroy;
end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
procedure TMainForm.CalculateButtonClick(Sender: TObject);
begin

  value1:= StrToFloat( Value1Edit.Text );
  value2:= StrToFloat( Value2Edit.Text );

  resultAdd:=          iSimCalc.Add(value1, value2);
  resultSubstract:=    iSimCalc.Substract(value1, value2);
  resultMultiply:=     iSimCalc.Multiply(value1, value2);

  AddEdit.Text:=       FloatToStr( resultAdd );
  SubstractEdit.Text:= FloatToStr( resultSubstract );
  MultiplyEdit.Text:=  FloatToStr( resultMultiply );
end;
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
end.
