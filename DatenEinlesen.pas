unit DatenEinlesen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Gauges,
  Vcl.ExtCtrls,Global_CAN,GlobalDef,Unit3, Data.DbxSqlite, Data.FMTBcd, Data.DB,
  Data.SqlExpr,Unit2, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs;


const
   abCrc16Hi: array[0..255] of Byte = (
   $00, $C1, $81, $40, $01, $C0, $80, $41, $01, $C0, $80, $41, $00,
   $C1, $81, $40, $01, $C0, $80, $41, $00, $C1, $81, $40, $00, $C1,
   $81, $40, $01, $C0, $80, $41, $01, $C0, $80, $41, $00, $C1, $81,
   $40, $00, $C1, $81, $40, $01, $C0, $80, $41, $00, $C1, $81, $40,
   $01, $C0, $80, $41, $01, $C0, $80, $41, $00, $C1, $81, $40, $01,
   $C0, $80, $41, $00, $C1, $81, $40, $00, $C1, $81, $40, $01, $C0,
   $80, $41, $00, $C1, $81, $40, $01, $C0, $80, $41, $01, $C0, $80,
   $41, $00, $C1, $81, $40, $00, $C1, $81, $40, $01, $C0, $80, $41,
   $01, $C0, $80, $41, $00, $C1, $81, $40, $01, $C0, $80, $41, $00,
   $C1, $81, $40, $00, $C1, $81, $40, $01, $C0, $80, $41, $01, $C0,
   $80, $41, $00, $C1, $81, $40, $00, $C1, $81, $40, $01, $C0, $80,
   $41, $00, $C1, $81, $40, $01, $C0, $80, $41, $01, $C0, $80, $41,
   $00, $C1, $81, $40, $00, $C1, $81, $40, $01, $C0, $80, $41, $01,
   $C0, $80, $41, $00, $C1, $81, $40, $01, $C0, $80, $41, $00, $C1,
   $81, $40, $00, $C1, $81, $40, $01, $C0, $80, $41, $00, $C1, $81,
   $40, $01, $C0, $80, $41, $01, $C0, $80, $41, $00, $C1, $81, $40,
   $01, $C0, $80, $41, $00, $C1, $81, $40, $00, $C1, $81, $40, $01,
   $C0, $80, $41, $01, $C0, $80, $41, $00, $C1, $81, $40, $00, $C1,
   $81, $40, $01, $C0, $80, $41, $00, $C1, $81, $40, $01, $C0, $80,
   $41, $01, $C0, $80, $41, $00, $C1, $81, $40);

abCrc16Lo: array[0..255] of Byte = (
   $00, $C0, $C1, $01, $C3, $03, $02, $C2, $C6, $06, $07, $C7, $05,
   $C5, $C4, $04, $CC, $0C, $0D, $CD, $0F, $CF, $CE, $0E, $0A, $CA,
   $CB, $0B, $C9, $09, $08, $C8, $D8, $18, $19, $D9, $1B, $DB, $DA,
   $1A, $1E, $DE, $DF, $1F, $DD, $1D, $1C, $DC, $14, $D4, $D5, $15,
   $D7, $17, $16, $D6, $D2, $12, $13, $D3, $11, $D1, $D0, $10, $F0,
   $30, $31, $F1, $33, $F3, $F2, $32, $36, $F6, $F7, $37, $F5, $35,
   $34, $F4, $3C, $FC, $FD, $3D, $FF, $3F, $3E, $FE, $FA, $3A, $3B,
   $FB, $39, $F9, $F8, $38, $28, $E8, $E9, $29, $EB, $2B, $2A, $EA,
   $EE, $2E, $2F, $EF, $2D, $ED, $EC, $2C, $E4, $24, $25, $E5, $27,
   $E7, $E6, $26, $22, $E2, $E3, $23, $E1, $21, $20, $E0, $A0, $60,
   $61, $A1, $63, $A3, $A2, $62, $66, $A6, $A7, $67, $A5, $65, $64,
   $A4, $6C, $AC, $AD, $6D, $AF, $6F, $6E, $AE, $AA, $6A, $6B, $AB,
   $69, $A9, $A8, $68, $78, $B8, $B9, $79, $BB, $7B, $7A, $BA, $BE,
   $7E, $7F, $BF, $7D, $BD, $BC, $7C, $B4, $74, $75, $B5, $77, $B7,
   $B6, $76, $72, $B2, $B3, $73, $B1, $71, $70, $B0, $50, $90, $91,
   $51, $93, $53, $52, $92, $96, $56, $57, $97, $55, $95, $94, $54,
   $9C, $5C, $5D, $9D, $5F, $9F, $9E, $5E, $5A, $9A, $9B, $5B, $99,
   $59, $58, $98, $88, $48, $49, $89, $4B, $8B, $8A, $4A, $4E, $8E,
   $8F, $4F, $8D, $4D, $4C, $8C, $44, $84, $85, $45, $87, $47, $46,
   $86, $82, $42, $43, $83, $41, $81, $80, $40);
type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Gauge1: TGauge;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Filter;
    procedure SQLParamGrundDaten;
    procedure SQLParamSatzDaten;
    procedure SQLParamStutzPunkt;
    procedure Button1Click(Sender: TObject);
    procedure SendToCan(s : String);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

//Function to Count the CRC for Number Job : 2 Bytes
function CRC16Berechnen(Data: AnsiString; Laenge: Integer):  word;
var   Index:   Byte;
      CrcLo:   Byte;
      CrcHi:   Byte;
      n:       integer;
begin
    //Init crc16 to 0xFFFF
    CrcLo := $FF;
    CrcHi := $FF;

    //Do the crc16 calculation
    n := 1;
    while( n <= Laenge )do
    begin
      Index := CrcLo xor Byte(Data[n]);
      CrcLo := CrcHi xor abCrc16Hi[Index];
      CrcHi := abCrc16Lo[Index];
      n := n + 1;
    end;
    result := ((CrcHi shl 8)or CrcLo);
end;//end of function

//SEND DATA TO CAN FUNCTION
procedure TForm5.Sendtocan(s : String);
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

//FILLING THE PARAMETER FOR SQL DATA
procedure TForm5.SQLParamGrundDaten;
begin
   FDQuery1.Params.ParamByName('uiKennNr').AsInteger := uiKennNr;
   FDQuery1.Params.ParamByName('ucKennTyp').AsInteger := ucKennTyp;
   FDQuery1.Params.ParamByName('ucVerfahren').AsInteger := ucVerfahren;
   FDQuery1.Params.ParamByName('ucDrahtDurchm').AsInteger := ucDrahtDurchm;
   FDQuery1.Params.ParamByName('ucGas').AsInteger := ucGas;
   FDQuery1.Params.ParamByName('ucWerkstoff').AsInteger := ucWerkstoff;
   FDQuery1.Params.ParamByName('ucReglerTyp').AsInteger := ucReglerTyp;
   FDQuery1.Params.ParamByName('ucGasVor').AsInteger := ucGasVor;
   FDQuery1.Params.ParamByName('ucGasNach').AsInteger := ucGasNach;
   FDQuery1.Params.ParamByName('ucUpSlope').AsInteger := ucUpSlope;
   FDQuery1.Params.ParamByName('ucDownSlope').AsInteger := ucDownSlope;
   FDQuery1.Params.ParamByName('ucZuendEgPrz').AsInteger := ucZuendEgPrz;
   FDQuery1.Params.ParamByName('ucEndKraterPrz').AsInteger := ucEndKraterPrz;
   FDQuery1.Params.ParamByName('ucZuendDauer').AsInteger := ucZuendDauer;
   FDQuery1.Params.ParamByName('ucEndKraDauer').AsInteger := ucEndKraDauer;
   FDQuery1.Params.ParamByName('ucFreiBrandPrz').AsInteger := ucFreiBrandPrz;
   FDQuery1.Params.ParamByName('ucPPEnergie2').AsInteger := ucPPEnergie2;
   FDQuery1.Params.ParamByName('ucPPTime1').AsInteger := ucPPTime1;
   FDQuery1.Params.ParamByName('ucPPTime2').AsInteger := ucPPTime2;
   FDQuery1.Params.ParamByName('ucPP_LBR_E2').AsInteger := ucPP_LBR_E2;
   FDQuery1.Params.ParamByName('ucProtokollTyp').AsInteger := ucProtokollTyp;
   FDQuery1.Params.ParamByName('ucDrossRes2').AsInteger := ucDrossRes2;
   FDQuery1.Params.ParamByName('ucDrossRes5').AsInteger := ucDrossRes5;
   FDQuery1.Params.ParamByName('ucDrossRes6').AsInteger := ucDrossRes6;
   FDQuery1.Params.ParamByName('ucDrossRes1').AsInteger := ucDrossRes1;
   FDQuery1.Params.ParamByName('ucDrossRes7').AsInteger := ucDrossRes7;
   FDQuery1.Params.ParamByName('ucDrossRes3').AsInteger := ucDrossRes3;
   FDQuery1.Params.ParamByName('ucDrossRes4').AsInteger := ucDrossRes4;
   FDQuery1.Params.ParamByName('ucLBR_Mode').AsInteger := ucLBR_Mode;
   FDQuery1.Params.ParamByName('ucKS_Erkennung').AsInteger := ucKS_Erkennung;
   FDQuery1.Params.ParamByName('ucKS_Aufhebung').AsInteger := ucKS_Aufhebung;
   FDQuery1.Params.ParamByName('ucVerwZeitPN').AsInteger := ucVerwZeitPN;
   FDQuery1.Params.ParamByName('ucVerwZeitNP').AsInteger := ucVerwZeitNP;
   FDQuery1.Params.ParamByName('ucStromSchwelle').AsInteger := ucStromSchwelle;
   FDQuery1.Params.ParamByName('ucPositivZeit').AsInteger := ucPositivZeit;
   FDQuery1.Params.ParamByName('ulKennEssNr').AsInteger := ulKennEssNr;
   FDQuery1.Params.ParamByName('stKennBez1').AsString := stKennBez1;
   FDQuery1.Params.ParamByName('stKennBez2').AsString := stKennBez2;
   FDQuery1.Params.ParamByName('stKennKomm').AsString := stKennKomm;
   FDQuery1.Params.ParamByName('uiGrundCRC').AsString := uiGrundCRC;
end;
procedure TForm5.SQLParamStutzPunkt;
begin
    FDQuery2.Params.ParamByName('suiKennNr').AsInteger := suiKennNr;
    FDQuery2.Params.ParamByName('sucKennTyp').AsInteger := sucKennTyp;
    FDQuery2.Params.ParamByName('ucStpNr').AsInteger := ucStpNr;
    FDQuery2.Params.ParamByName('uiVorschub').AsInteger := uiVorschub;
    FDQuery2.Params.ParamByName('uiSpannung').AsInteger := uiSpannung;
    FDQuery2.Params.ParamByName('uiFrequenz').AsInteger := uiFrequenz;
    FDQuery2.Params.ParamByName('ucEinSchleichen').AsInteger := ucEinSchleichen;
    FDQuery2.Params.ParamByName('ucEndPulsDauer').AsInteger := ucEndPulsDauer;
    FDQuery2.Params.ParamByName('uiGrundStrom').AsInteger := uiGrundStrom;
    FDQuery2.Params.ParamByName('uiSetStrom').AsInteger := uiSetStrom;
    FDQuery2.Params.ParamByName('ucDrossel').AsInteger := ucDrossel;
    FDQuery2.Params.ParamByName('ucBlech').AsInteger := ucBlech;
    FDQuery2.Params.ParamByName('ucRundung').AsInteger := ucRundung;
    FDQuery2.Params.ParamByName('ucSlope1').AsInteger := ucSlope1;
    FDQuery2.Params.ParamByName('uiPulsAmpl1').AsInteger := uiPulsAmpl1;
    FDQuery2.Params.ParamByName('ucPulsZeit1').AsInteger := ucPulsZeit1;
    FDQuery2.Params.ParamByName('ucSlope2').AsInteger := ucSlope2;
    FDQuery2.Params.ParamByName('uiPulsAmpl2').AsInteger := uiPulsAmpl2;
    FDQuery2.Params.ParamByName('ucPulsZeit2').AsInteger := ucPulsZeit2;
    FDQuery2.Params.ParamByName('ucSlope3').AsInteger := ucSlope3;
    FDQuery2.Params.ParamByName('uiPulsAmpl3').AsInteger := uiPulsAmpl3;
    FDQuery2.Params.ParamByName('ucPulsZeit3').AsInteger := ucPulsZeit3;
    FDQuery2.Params.ParamByName('ucSlope4').AsInteger := ucSlope4;
    FDQuery2.Params.ParamByName('uiLbrSoll').AsInteger := uiLbrSoll;
    FDQuery2.Params.ParamByName('ucLbrFrequenz').AsInteger := ucLbrFrequenz;
    FDQuery2.Params.ParamByName('ucLbrGrundStrom').AsInteger := ucLbrGrundStrom;
    FDQuery2.Params.ParamByName('ucLbrAmplitude1').AsInteger := ucLbrAmplitude1;
    FDQuery2.Params.ParamByName('ucLbrPulsZeit1').AsInteger := ucLbrPulsZeit1;
    FDQuery2.Params.ParamByName('ucLbrVorschub').AsInteger := ucLbrVorschub;
    FDQuery2.Params.ParamByName('ucEndPulsAmpl').AsInteger := ucEndPulsAmpl;
    FDQuery2.Params.ParamByName('siRMT_PosAmpl').AsInteger := siRMT_PosAmpl;
    FDQuery2.Params.ParamByName('siRMT_NegAmpl').AsInteger := siRMT_NegAmpl;
    FDQuery2.Params.ParamByName('uiStartAmplitude').AsInteger := uiStartAmplitude;
    FDQuery2.Params.ParamByName('ucStartZeit').AsInteger := ucStartZeit;
    FDQuery2.Params.ParamByName('ucStartUeberh').AsInteger := ucStartUeberh;
    FDQuery2.Params.ParamByName('ucMotorFlanke').AsInteger := ucMotorFlanke;
    FDQuery2.Params.ParamByName('ucFuellByte').AsInteger := ucFuellByte;
    FDQuery2.Params.ParamByName('uiNegZeit').AsInteger := uiNegZeit;
    FDQuery2.Params.ParamByName('ucDrosselRI').AsInteger := ucDrosselRI;
    FDQuery2.Params.ParamByName('ucDrossUeberZeit').AsInteger := ucDrossUeberZeit;
    FDQuery2.Params.ParamByName('ucDrossAbfall').AsInteger := ucDrossAbfall;
    FDQuery2.Params.ParamByName('ucDrossDynamic').AsInteger := ucDrossDynamic;
    FDQuery2.Params.ParamByName('uiStpCRC').AsString := uiStpCRC;
end;
procedure TForm5.SQLParamSatzDaten;
begin
    FDQuery3.Params.ParamByName('ucSatzTyp').AsInteger := ucSatzTyp;
    FDQuery3.Params.ParamByName('ucSatzMasch').AsInteger := ucSatzMasch;
    FDQuery3.Params.ParamByName('uiSatzVers1').AsInteger := uiSatzVers1;
    FDQuery3.Params.ParamByName('uiSatzVers2').AsInteger := uiSatzVers2;
    FDQuery3.Params.ParamByName('ulSatzEssNr').AsString := ulSatzEssNr;
    FDQuery3.Params.ParamByName('stSatzBez').AsString := stSatzBez;
    FDQuery3.Params.ParamByName('stSatzKomm').AsString := stSatzKomm;
    FDQuery3.Params.ParamByName('ucWinVersH').AsInteger := ucWinVersH;
    FDQuery3.Params.ParamByName('ucWinVersL').AsInteger := ucWinVersL;
    FDQuery3.Params.ParamByName('ucSDCRC').AsString := ucSDCRC;
end;

procedure TForm5.Button1Click(Sender: TObject);
var
  DataSend, CRC , CRCSend , NutzDaten, Path : String;
  SDData , i , x : integer;
begin
  //Connect to the Database
  DataSend := '';
  DataSend := Char(SYN) + Char(SOH) + Char(XXX) + Char(SDKommandoLesen);
  SDData := 1;
  LengthND := Length(Char(SDData));

  CRC8 := $5E;
  NutzDaten := Char(SDData);
  CRC := IntToStr(CRC16Berechnen(NutzDaten,Length(Char(SDData))));
  CRCSend := Char(StrToInt('$'+CRC[1]+CRC[2]));
  CRCSend := CRCSend + Char(StrToInt('$'+CRC[3]+CRC[4]));

  DataSend := DataSend + Char(LengthND div 256) + Char(LengthND mod 256) + Char(CRC8) + Char(STX) + Char(SDData) + CRCSend + Char(Footer1) + Char(Footer2);

  //Send SD Kommando Lesen
  Sendtocan(DataSend);
  Panel2.Caption := 'SatzDaten';
  Application.ProcessMessages;
  Sleep(100);

  for i := 1 to 100 do  begin
    CRC8 := $D7;
    NutzDaten := Char(i) + Char(0) + Char(1);

    CRC := IntToStr(CRC16Berechnen(NutzDaten,Length(NutzDaten)));
    CRCSend := Char(StrToInt('$'+'0'+'0'));
    CRCSend := CRCSend + Char(StrToInt('$'+'0'+'0'));

    DataSend := Char(SYN) + Char(SOH) + Char(XXX) + Char(GDKommandoLesen) + Char(Length(NutzDaten) div 256) + Char(Length(NutzDaten) mod 256) + Char(CRC8) + Char(STX) + NutzDaten + CRCSend + Char(Footer1) + Char(Footer2);

    //Send GD Kommando Lesen
    Sendtocan(DataSend);
    Panel2.Caption := 'Kennlinien'+IntToStr(i);
    Application.ProcessMessages;
    Sleep(100);

      for x := 1 to 20 do begin
        if (GDEmpty = False) then  begin
          if (STPEmpty = False) then begin

            CRC8 := $B0;
            NutzDaten := Char(i) + Char(0) + Char(1) + Char(x);

            CRC := IntToStr(CRC16Berechnen(NutzDaten,Length(NutzDaten)));
            CRCSend := Char(StrToInt('$'+'0'+'0'));
            CRCSend := CRCSend + Char(StrToInt('$'+'0'+'0'));

            DataSend := Char(SYN) + Char(SOH) + Char(XXX) + Char(SPKommandoLesen) + Char(Length(NutzDaten) div 256) + Char(Length(NutzDaten) mod 256) + Char(CRC8) + Char(STX) + NutzDaten + CRCSend + Char(Footer1) + Char(Footer2);

            //Send SP Kommando Lesen
            Sendtocan(DataSend);
            Panel2.Caption := 'STP'+IntToStr(x);
            Application.ProcessMessages;
            Sleep(100);
          end
          else begin
            STPEmpty := True;
            break;
          end;
        end
        else  begin
          GDEmpty := True;
          break;
        end;

      end;
  end;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
    Form5.Close;
end;

procedure TForm5.Filter;
begin
          if (Length(GlobalNutzDaten)= 168) and (ord(GlobalNutzDaten[4])=1) then begin
            ValueString := '';

            MoveToSatzDaten(GlobalNutzDaten);
            SQLTextInsert(GlobalNutzDaten);
            FDQuery3.SQL.Text := ValueString;
            SQLParamSatzDaten;

            GlobalNutzDaten := '';

          end;
          if (Length(GlobalNutzDaten)= 214) and (ord(GlobalNutzDaten[4])=4) then begin
            ValueString := '';

            MoveToGrundDaten(GlobalNutzDaten);
            SQLTextInsert(GlobalNutzDaten);
            FDQuery1.SQL.Text := ValueString;
            SQLParamGrundDaten;

            GlobalNutzDaten := '';

          end;
          if (Length(GlobalNutzDaten)= 70) and (ord(GlobalNutzDaten[4])=7) then begin
            ValueString := '';

            MoveToStutzPunkt(GlobalNutzDaten);
            SQLTextInsert(GlobalNutzDaten);
            FDQuery2.SQL.Text := ValueString;
            SQLParamStutzpunkt;

            GlobalNutzDaten := '';

          end;
end;

procedure TForm5.FormCreate(Sender: TObject);
var
  Path : String;
begin
      Path := GetCurrentDir;
      FDConnection1.Params.Add('Database='+Path+'\KennlinienDB.db');
      FDConnection1.Connected := True;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
var
  CanDaten : CanData;
begin
  if(CanOk)then
  begin
    self.Timer1.Enabled := false;
    begin
    // Heart-Beat senden
      CanDaten.Id := HBSEND;
      CanDaten.Laenge := 8;
      CanDaten.Data[1] := 1;
      CanDaten.Data[2] := 1;
      CanDaten.Data[3] := 0;
      CanDaten.Data[4] := 0;
      CanDaten.Data[5] := 0;
      CanDaten.Data[6] := 0;
      CanDaten.Data[7] := 0;
      CanDaten.Data[8] := 0;
      UsbToCanSenden(CanDaten);
    end;
  end;
end;

procedure TForm5.Timer2Timer(Sender: TObject);
var
  CanDaten : CanData;
  i : integer;
begin
   if(CanOk)then
   begin
      self.Timer2.Enabled := false;
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

              if (length(GlobalNutzDaten)>16) then Filter
              else begin
                  if (ord(GlobalNutzDaten[4])= 4 ) and (ord(GlobalNutzDaten[6])= 3 ) then GDEmpty := True;
                  if (ord(GlobalNutzDaten[4])= 3 ) and (ord(GlobalNutzDaten[4])= 4 ) then STPEmpty := True;

              end;

              GlobalNutzDaten := '';
           end;

        end;
      end;
      self.Timer2.Interval := 5;
      self.Timer2.Enabled := TRUE;
   end;
end;

end.
