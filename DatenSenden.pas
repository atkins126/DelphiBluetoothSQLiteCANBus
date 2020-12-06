unit DatenSenden;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Samples.Gauges,Global_CAN,Unit3,Unit2,GlobalDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel4: TPanel;
    Gauge1: TGauge;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure CounterData;
    procedure SendQuery1;
    procedure SendQuery2;
    procedure SendQuery3;
    procedure SendToCan(s : String);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

//Counter Data
procedure TForm4.Button2Click(Sender: TObject);
begin
    Form4.Close;
end;

procedure Tform4.CounterData;
begin
    self.FDQuery3.Next;
    GlobalCounter := 0;
    GlobalKennNr  := 1;

    while not (FDQuery3.Eof) do begin

      if (GlobalKennNr = FDQuery3.FieldByName('suiKennNr').AsInteger) then begin
        GlobalCounter := GlobalCounter + 1;
        FDQuery3.Next;
      end
      else begin
        ArrayKennNr[GlobalKennNr] := GlobalCounter;
        GlobalKennNr := GlobalKennNr + 1;
        GlobalCounter := 1;
        FDQuery3.Next;
      end;

    end;

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
FDConnection1.Connected := True;
FDQuery1.Active := True;
FDQuery2.Active := True;
FDQuery3.Active := True;
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
    FDConnection1.Connected := False;
    FDQuery1.Active := False;
    FDQuery2.Active := False;
    FDQuery3.Active := False;
end;

//SEND DATA TO CAN FUNCTION
procedure TForm4.Sendtocan(s : String);
var
  i,y,x : integer;
  CanDaten : CanData;
begin
  i := 1;
  while i < Length(s) do begin
    if (Length(s)-i)>7 then begin
       CanDaten.Id := SETJOBSEND;
       CanDaten.Laenge:= 8;
       CanDaten.Data[1] := ord(s[i]);
       CanDaten.Data[2] := ord(s[i+1]);
       CanDaten.Data[3] := ord(s[i+2]);
       CanDaten.Data[4] := ord(s[i+3]);
       CanDaten.Data[5] := ord(s[i+4]);
       CanDaten.Data[6] := ord(s[i+5]);
       CanDaten.Data[7] := ord(s[i+6]);
       CanDaten.Data[8] := ord(s[i+7]);
       UsbToCanSenden(CanDaten);
       Application.ProcessMessages;
       Sleep(100);
       i := i + 8;
    end
    else begin
       CanDaten.Laenge := Length(s)-i+1;
       CanDaten.Id := SETJOBSEND;
       y := 1;
       for x := i to Length(s) do begin
         CanDaten.Data[y] := ord(s[x]);
         y := y + 1 ;
       end;
       UsbToCanSenden(CanDaten);
       Application.ProcessMessages;
       Sleep(100);
       i := i + length(s);
    end;
  end;
end;

//SendQuery1
procedure TForm4.SendQuery1;
var
  i : integer;
  StringData : String;
  number : integer;
begin
    FDQuery1.Active:= True;

    CRC8 := $9e;
    StringData := '';
    for i := 1 to length(ArrayNameSatzDaten) do begin
        if (ArrayNameSatzDaten[i] = 'ulSatzEssNr') or (ArrayNameSatzDaten[i] = 'stSatzBez') or (ArrayNameSatzDaten[i] = 'stSatzKomm') or (ArrayNameSatzDaten[i] = 'ucSDCRC') then begin

            StringData := StringData + FDQuery1.FieldByName(ArrayNameSatzDaten[i]).AsString;

        end
        else begin
           number := FDQuery1.FieldByName(ArrayNameSatzDaten[i]).AsInteger;

           if (number > 256) then begin
             StringData := StringData + Char(number div 256);
             StringData := StringData + Char(number mod 256);

           end
           else begin
             StringData := StringData + Char(number);
           end;
        end;

    end;
   //Frame Making
   StringData := Char(SYN) + Char(SOH) + Char(XXX) + Char(SDKommandoSchreiben) + Char(Length(StringData)div 256) + Char(Length(StringData) mod 256) + Char(CRC8) + Char(STX) + StringData + Char(Footer1) + Char(Footer2);

   SendToCan(StringData);
end;

//SendQuery2
procedure TForm4.SendQuery2;
var
  i : integer;
  StringData : String;
  number : integer;
begin
    FDQuery2.Active := True;
    CRC8 := $2A;
    FDQuery2.First;
    FDQuery3.First;

    while not (FDQuery2.Eof) do begin
       StringData := '';
       for i := 1 to length(ArrayNameGrundDaten) do begin
         if (ArrayNameGrundDaten[i]='ulKennNr') or (ArrayNameGrundDaten[i]='stKennBez1') or (ArrayNameGrundDaten[i]='stKennBez2') or (ArrayNameGrundDaten[i]='stKennKomm') or (ArrayNameGrundDaten[i]='uiGrundCRC') then begin
             StringData := StringData + FDQuery2.FieldByName(ArrayNameGrundDaten[i]).AsString;
         end
         else begin
             number := FDQuery2.FieldByName(ArrayNameGrundDaten[i]).AsInteger;
             Panel2.Caption:= IntToStr(i);
           if (number > 256) then begin
              StringData := StringData + Char(number div 256);
              StringData := StringData + Char(number mod 256);

           end
           else begin
              StringData := StringData + Char(number);
           end;

         end;

       end;
       //Frame Making
       StringData := Char(SYN) + Char(SOH) + Char(XXX) + Char(GDKommandoSchreiben) + Char(Length(StringData)div 256) + Char(Length(StringData) mod 256) + Char(CRC8) + Char(STX) + StringData + Char(0) + Char(0) + Char(Footer1) + Char(Footer2);

       SendToCan(StringData);

       SendQuery3;
       FDQuery2.Next;
    end;

end;

//SendQuery3
procedure TForm4.SendQuery3;
var
  i : integer;
  y : integer;
  StringData : String;
  number : integer;
begin
    FDQuery3.Active := True;
    CRC8 := $4e;
    for i := 1 to ArrayKennNr[index] do begin
        StringData := '';
        for y := 1 to length(ArrayNameStutzpunkt) do begin
            if ArrayNameStutzpunkt[y] = 'uiStpCRC' then begin
                StringData := StringData + FDQuery3.FieldByName(ArrayNameStutzpunkt[i]).AsString;
            end
            else begin
              number := FDQuery3.FieldByName(ArrayNameStutzpunkt[i]).AsInteger;
              if (number > 256) then begin
                StringData := StringData + Char(number div 256);
                StringData := StringData + Char(number mod 256);

              end
              else begin
                  StringData := StringData + Char(number);
              end;
            end;

        end;

        //Frame Making
        StringData := Char(SYN) + Char(SOH) + Char(XXX) + Char(SPKommandoSchreiben) + Char(Length(StringData)div 256) + Char(Length(StringData) mod 256) + Char(CRC8) + Char(STX) + StringData + Char(0) + Char(0) + Char(Footer1) + Char(Footer2);

        SendToCan(StringData);
        FDQuery3.Next;
    end;
    index := index + 1;

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
     if (RadioButton1.Checked) then begin
     //Alle StandardKennlinie
     CounterData;
     SendQuery1;
     SendQuery2;

     end;

     if (RadioButton2.Checked) then begin
     //Alle SonderKennlinie

     end;

     if (RadioButton3.Checked) then begin
     //Alle Jobs Koffer 1

     end;

     if (RadioButton4.Checked) then begin
     //Alle Jobs Koffer 2

     end;

     if (RadioButton5.Checked) then begin
     //Ausgew. Kennlinie

     end;

     if (RadioButton6.Checked) then begin
     //Ausgew. Job

     end;



end;

end.
