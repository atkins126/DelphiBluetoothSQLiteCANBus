unit Kennlinien;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,KennlinienStandardDefault, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  System.ImageList, Vcl.ImgList,Unit2;

type
  TForm7 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label2: TLabel;
    StringGrid2: TStringGrid;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FillStringGrid;
    procedure StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid2DblClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form7: TForm7;
  index        : integer;


implementation

uses
Kennlinienbearbeitung;

{$R *.dfm}

procedure TForm7.FillStringGrid;
var
  i : integer;
begin
    //Fill standard first
    for i := 1 to 100 do begin
        StringGrid2.Cells[0,i] := IntToStr(i);
        StringGrid2.Cells[3,i] := STANDARDKENN[i , 1];
        StringGrid2.Cells[4,i] := STANDARDKENN[i , 2];
        StringGrid2.Cells[6,i] := STANDARDKENN[i , 3];
        StringGrid2.Cells[5,i] := STANDARDKENN[i , 4];
    end;

    //Fill the rest
    for i := 1 to 100 do begin
       StringGrid2.Cells[1,i] :=  GlobalGD[i,37];
       StringGrid2.Cells[2,i] :=  GlobalGD[i,38];
       StringGrid2.Cells[7,i] :=  IntToStr(GlobalGD[i,7]);
       StringGrid2.Cells[8,i] :=  IntToStr(GlobalGD[i,36]);
       StringGrid2.Cells[9,i] :=  IntToStr(GlobalGD[i , 21]);

    end;
end;

procedure TForm7.Button7Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm7.Button8Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm7.FormShow(Sender: TObject);
var
  i : integer;
begin
    //Initialization
    StringGrid2.Cells[0,0] := 'Nr.';
    StringGrid2.Cells[1,0] := 'Bezeichnung Teil 1';
    StringGrid2.Cells[2,0] := 'Bezeichnung Teil 2';
    StringGrid2.Cells[3,0] := 'Verfahren';
    StringGrid2.Cells[4,0] := 'Werkstoff';
    StringGrid2.Cells[5,0] := 'Draht';
    StringGrid2.Cells[6,0] := 'Gas';
    StringGrid2.Cells[7,0] := 'Regler Typ';
    StringGrid2.Cells[8,0] := 'Nummer';
    StringGrid2.Cells[9,0] := 'Prot-Typ';

    //Filling
    FillStringGrid;
end;

procedure TForm7.StringGrid2DblClick(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm7.StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
    GlobalRow := ARow;
end;

end.
