program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  pcan_usb in 'pcan_usb.pas',
  Global_CAN in 'Global_CAN.pas',
  GlobalDef in 'GlobalDef.pas',
  GlobalFunction in 'GlobalFunction.pas',
  Unit2 in 'Unit2.pas',
  Unit3 in 'Unit3.pas',
  DatenSenden in 'DatenSenden.pas' {Form4},
  DatenEinlesen in 'DatenEinlesen.pas' {Form5},
  Kennlinienbearbeitung in 'Kennlinienbearbeitung.pas' {Form6},
  Kennlinien in 'Kennlinien.pas' {Form7},
  KennlinienStandardDefault in 'KennlinienStandardDefault.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
