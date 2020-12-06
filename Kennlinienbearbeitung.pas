unit Kennlinienbearbeitung;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,Global_CAN,GlobalDef,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,Unit2,KennlinienStandardDefault;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    MaskEdit11: TMaskEdit;
    Panel20: TPanel;
    MaskEdit12: TMaskEdit;
    MaskEdit13: TMaskEdit;
    MaskEdit14: TMaskEdit;
    MaskEdit15: TMaskEdit;
    MaskEdit16: TMaskEdit;
    MaskEdit17: TMaskEdit;
    MaskEdit18: TMaskEdit;
    MaskEdit19: TMaskEdit;
    MaskEdit20: TMaskEdit;
    MaskEdit21: TMaskEdit;
    MaskEdit22: TMaskEdit;
    MaskEdit23: TMaskEdit;
    MaskEdit24: TMaskEdit;
    MaskEdit25: TMaskEdit;
    MaskEdit26: TMaskEdit;
    MaskEdit27: TMaskEdit;
    MaskEdit28: TMaskEdit;
    MaskEdit29: TMaskEdit;
    MaskEdit30: TMaskEdit;
    MaskEdit31: TMaskEdit;
    MaskEdit32: TMaskEdit;
    MaskEdit33: TMaskEdit;
    MaskEdit34: TMaskEdit;
    MaskEdit35: TMaskEdit;
    Panel21: TPanel;
    MaskEdit36: TMaskEdit;
    MaskEdit37: TMaskEdit;
    MaskEdit38: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label46: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Panel68: TPanel;
    Panel69: TPanel;
    Panel70: TPanel;
    Panel71: TPanel;
    Panel72: TPanel;
    Panel73: TPanel;
    Panel74: TPanel;
    Panel75: TPanel;
    Panel76: TPanel;
    Panel77: TPanel;
    Panel78: TPanel;
    Panel79: TPanel;
    Panel80: TPanel;
    Panel81: TPanel;
    Panel82: TPanel;
    Image1: TImage;
    Button9: TButton;
    RadioGroup1: TRadioGroup;
    ProgressBar1: TProgressBar;
    Panel83: TPanel;
    Panel84: TPanel;
    Panel85: TPanel;
    Panel86: TPanel;
    Panel87: TPanel;
    Panel88: TPanel;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel91: TPanel;
    Label91: TLabel;
    Panel92: TPanel;
    Panel93: TPanel;
    Panel94: TPanel;
    Panel95: TPanel;
    Panel96: TPanel;
    Panel97: TPanel;
    Panel99: TPanel;
    Panel100: TPanel;
    Panel101: TPanel;
    Panel102: TPanel;
    Panel103: TPanel;
    Panel104: TPanel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Panel98: TPanel;
    ProgressBar2: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure IstWertFilter;
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FillEverything(s : integer);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
//    procedure ReadGSP(s : array of integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form6: TForm6;
  ButtonSynergie : Boolean;
  GSP : Variant;

implementation


uses

Unit1;
{$R *.dfm}

procedure TForm6.Button9Click(Sender: TObject);
begin
//Sending Data from Current Kennlinien
     if (ButtonSynergie = False) then ButtonSynergie := True
     else ButtonSynergie := False;

end;

procedure TForm6.FillEverything(s : integer);
var
  TempData : String;
begin

      TempData := IntToStr(GlobalSP[s,4]);
      Insert(',',TempData,Length(TempData));
      MaskEdit1.Text  := TempData;

      TempData := IntToStr(GlobalSP[s,5]);
      Insert(',',TempData,Length(TempData));
      MaskEdit2.Text  := TempData;
      
      TempData := IntToStr(GlobalSP[s,11]);
      Insert(',',TempData,Length(TempData));
      MaskEdit3.Text  := TempData;
      
      TempData := IntToStr(GlobalSP[s,10]);
      Insert(',',TempData,Length(TempData));
      MaskEdit4.Text  := TempData;
      
      TempData := IntToStr(GlobalSP[s,12]);
      Insert(',',TempData,Length(TempData));
      MaskEdit5.Text  := TempData;
      
      TempData := IntToStr(GlobalSP[s,7]);
      Insert(',',TempData,Length(TempData));
      MaskEdit6.Text  := TempData;
      

      MaskEdit7.Text  := IntToStr(GlobalSP[s,40]);

      TempData := IntToStr(GlobalSP[s,9]);
      Insert(',',TempData,Length(TempData));
      MaskEdit8.Text  := TempData;
      
      MaskEdit9.Text  := IntToStr(GlobalSP[s,8]);

      TempData := IntToStr(GlobalSP[s,35]);
      Insert(',',TempData,Length(TempData));
      MaskEdit10.Text  := TempData;
      
      MaskEdit11.Text := IntToStr(GlobalSP[s,36]);
      MaskEdit12.Text := IntToStr(GlobalSP[s,6]);
      MaskEdit13.Text := IntToStr(GlobalSP[s,9]);
      MaskEdit14.Text := IntToStr(GlobalSP[s,13]);
      MaskEdit15.Text := IntToStr(GlobalSP[s,14]);
      MaskEdit18.Text := IntToStr(GlobalSP[s,17]);
      MaskEdit16.Text := IntToStr(GlobalSP[s,20]);
      MaskEdit17.Text := IntToStr(GlobalSP[s,23]);
      MaskEdit19.Text := IntToStr(GlobalSP[s,15]);
      MaskEdit20.Text := IntToStr(GlobalSP[s,18]);
      MaskEdit21.Text := IntToStr(GlobalSP[s,21]);
      MaskEdit22.Text := IntToStr(GlobalSP[s,16]);
      MaskEdit23.Text := IntToStr(GlobalSP[s,19]);
      MaskEdit24.Text := IntToStr(GlobalSP[s,22]);
      MaskEdit25.Text := IntToStr(GlobalSP[s,8]);
      MaskEdit26.Text := IntToStr(GlobalSP[s,30]);
      MaskEdit27.Text := IntToStr(GlobalSP[s,39]);
      MaskEdit28.Text := IntToStr(GlobalSP[s,41]);
      MaskEdit29.Text := IntToStr(GlobalSP[s,42]);
      MaskEdit30.Text := IntToStr(GlobalSP[s,24]);
      MaskEdit31.Text := IntToStr(GlobalSP[s,25]);
      MaskEdit32.Text := IntToStr(GlobalSP[s,26]);
      MaskEdit33.Text := IntToStr(GlobalSP[s,29]);
      MaskEdit34.Text := IntToStr(GlobalSP[s,27]);
      MaskEdit35.Text := IntToStr(GlobalSP[s,28]);
      MaskEdit36.Text := IntToStr(GlobalSP[s,38]);
      MaskEdit37.Text := IntToStr(GlobalSP[s,31]);
      MaskEdit38.Text := IntToStr(GlobalSP[s,32]);

end;
procedure TForm6.IstWertFilter;
var
  i : integer;
  Data : String;
begin
   if (length(GlobalNutzDaten) = 83) and (ord(GlobalNutzDaten[4])=23) then begin
        //Synergie
        Panel99.Caption := IntToStr(ord(GlobalNutzDaten[55])*256 + ord(GlobalNutzDaten[56]));
        Panel100.Caption := IntToStr(ord(GlobalNutzDaten[57])*256 + ord(GlobalNutzDaten[58]));
        Panel101.Caption := IntToStr(ord(GlobalNutzDaten[60])*256 + ord(GlobalNutzDaten[61]));
        Panel102.Caption := IntToStr(ord(GlobalNutzDaten[59]));
        Panel103.Caption := IntToStr(ord(GlobalNutzDaten[63]));
        Panel104.Caption := IntToStr(ord(GlobalNutzDaten[62]));

        //IstWerte
        Panel89.Caption := IntToStr(ord(GlobalNutzDaten[51])*256 + ord(GlobalNutzDaten[52]));
        Panel90.Caption := IntToStr(ord(GlobalNutzDaten[53])*256 + ord(GlobalNutzDaten[54]));
        Panel91.Caption := IntToStr(ord(GlobalNutzDaten[49])*256 + ord(GlobalNutzDaten[50]));
        Panel92.Caption := IntToStr(ord(GlobalNutzDaten[44]));
        Panel93.Caption := IntToStr(ord(GlobalNutzDaten[48]));
        Panel94.Caption := IntToStr(ord(GlobalNutzDaten[46]));
        Panel95.Caption := IntToStr(ord(GlobalNutzDaten[47]));
        Panel96.Caption := IntToStr(ord(GlobalNutzDaten[45]));

        //Kennlinie
        Panel84.Caption := IntToStr(ord(GlobalNutzDaten[9])*256 + ord(GlobalNutzDaten[10]));
        Panel85.Caption := IntToStr(ord(GlobalNutzDaten[11]));

        Data := '';
        for i := 1 to 16 do begin
            Data := Data + GlobalNutzDaten[11+i];
        end;
        Panel86.Caption := Data;

        Data := '';
        for i := 1 to 16 do begin
            Data := Data + GlobalNutzDaten[27+i];
        end;
        Panel87.Caption := Data;
   end;
end;

procedure TForm6.ListBox1DblClick(Sender: TObject);

begin
    if Listbox1.ItemIndex <> -1  then begin
        self.FillEverything(Listbox1.ItemIndex + 1);
    end;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i : integer;
begin

  Timer1.Enabled := False;
  Timer2.Enabled := False;
  for i := self.ListBox1.Items.Count - 1  downto 0 do self.ListBox1.Items.Delete(i);

end;

procedure TForm6.FormCreate(Sender: TObject);
begin
    UsbToCanEntfernen;
    if (UsbToCanVerbinden) then begin
        CanOk:=True;
    end;

    ButtonSynergie := False;

end;

procedure TForm6.FormShow(Sender: TObject);
var
  i,initialpos,lastpos : integer;
  TempData : String;
begin
      Timer1.Enabled:= True;
      Timer2.Enabled:= True;

     initialpos := 1;
     while GlobalRow <> GlobalSP[initialpos,1] do inc(initialpos);

     lastpos := initialpos;
     while GlobalRow = GlobalSP[lastpos,1] do inc(lastpos);

     //Listbox String
     for i := initialpos to lastpos-1 do  begin
        TempData := IntToStr(GlobalSP[i,4]);
        Insert(',',TempData,Length(TempData));
        self.ListBox1.Items.Add(TempData+' m/min');
     end;

     self.FillEverything(initialpos);

      self.Panel12.Caption :=   IntToStr(GlobalSP[initialpos,3]);
      self.Panel5.Caption  :=   STANDARDKENN[GlobalRow,1];
      self.Panel6.Caption  :=   STANDARDKENN[GlobalRow,2];
      self.Panel7.Caption  :=   STANDARDKENN[GlobalRow,3];
      self.Panel8.Caption  :=   STANDARDKENN[GlobalRow,4];

      //String Data
      TempData := GlobalGD[GlobalRow,37];
      self.Panel9.Caption  :=  Copy(TempData,5,8) ;

      //String Data
      TempData := GlobalGD[GlobalRow,38];
      self.Panel10.Caption :=   Copy(TempData,5,8);

     // Fill the rest
     Panel11.Caption := IntToStr(GlobalRow);

end;

procedure TForm6.Timer1Timer(Sender: TObject);
var
  CanDaten : CanData;
  i : integer;
begin
if(CanOk)then
   begin
      self.Timer1.Enabled := false;
      while UsbToCanQueLesen(CanDaten) do begin
      //Can - ID untersuchen
        if (CanDaten.Id = SETJOBREAD) then  begin
           if (CanDaten.Data[1] = $16) and (CanDaten.Data[2]=$01) then OneFrame := True;
           if (CanDaten.Data[CanDaten.Laenge - 1 ] = $03) and (CanDaten.Data[CanDaten.Laenge]=$04) then OneFrame := False;

           if (OneFrame = True) then begin
              for i := 1 to CanDaten.Laenge do begin
                GlobalNutzDaten := GlobalNutzDaten + Char(CanDaten.Data[i]);

              end;

           end
           else begin
              for i := 1 to CanDaten.Laenge do begin
                GlobalNutzDaten := GlobalNutzDaten + Char(CanDaten.Data[i]);

              end;

              //IstWertFilter and KennlinienBearbeitungFilter
              if (length(GlobalNutzDaten)>16) then  IstWertFilter;

              GlobalNutzDaten := '';
           end;

        end;
      end;
      self.Timer1.Interval := 5;
      self.Timer1.Enabled := TRUE;
   end;
end;

procedure TForm6.Timer2Timer(Sender: TObject);
var
    CanDaten : CanData;
begin
  if(CanOk)then
  begin
    self.Timer2.Enabled := false;
    begin
    // Heart-Beat senden
      CanDaten.Id := SETJOBSEND;
      CanDaten.Laenge := 8;
      CanDaten.Data[1] := $16;
      CanDaten.Data[2] := $01;
      CanDaten.Data[3] := $01;
      CanDaten.Data[4] := $17;
      CanDaten.Data[5] := $00;
      CanDaten.Data[6] := $00;
      CanDaten.Data[7] := $9B;
      CanDaten.Data[8] := $02;
      UsbToCanSenden(CanDaten);

      CanDaten.Id := SETJOBSEND;
      CanDaten.Laenge := 2;
      CanDaten.Data[1] := $03;
      CanDaten.Data[2] := $04;
      UsbToCanSenden(CanDaten);
    end;
    self.Timer2.Enabled := True;
    self.Timer2.Interval := 100;

    //Button Synergie
  end;
end;

end.
