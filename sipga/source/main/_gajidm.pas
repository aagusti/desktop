unit _GajiDM;

interface

uses
  SysUtils, Classes, DB, ADODB, Variants, StrUtils, Math, Messages, Dialogs,
  DateUtils;

type
  TdmGaji = class(TDataModule)
    qryStruktur: TADOQuery;
    qryFungsional: TADOQuery;
    qryGajiPokok: TADOQuery;
    qryParam: TADOQuery;
    qryTunjUmum: TADOQuery;
    qryTunjOtsus: TADOQuery;
    qryTunjDT: TADOQuery;
    qryTaperum: TADOQuery;
    qryStatPeg: TADOQuery;
    qryPTKP: TADOQuery;
    qryAktif: TADOQuery;
    dsAktif: TDataSource;
    qryJenisGaji: TADOQuery;
    DataGaji: TADOQuery;
    TempData: TADOQuery;
    qryGuru: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // --------------------------
    function BolehDigaji(NIP, AktifKD:String; Jns:Integer; TglAktif:TDateTime;  Pesan:Boolean=False):Boolean;
    // --------------------------
    //function GetGajiPokok(Golongan:String;MasaKerja:Integer; AktifKd,StsPegKd:String):double;
    function GetGajiPokok(Golongan:String;MasaKerja:Integer; AktifKd,StsPegKd, JenisKd:String; IsRapel: Boolean=False):double;
    //function GetTunjStrukTural(StrukturKd:string):double;
    function GetTunjStrukTural(StrukturKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
    //function GetTunjFungsional(FungsiKd:string):double;
    function GetTunjFungsional(FungsiKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
    //function GetTunjanganUmum(GolKd:string):double;
    function GetTunjanganUmum(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
    function GetTunjUmumTambahan(NIP:string):double;
    //function GetTunjOtsus(GolKd:string):double;
    function GetTunjOtsus(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
    //function GetTunjDT(GolKd:string):double;
    function GetTunjDT(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
    //function GetTunjanganTDT(GolKd:string):double;
    function GetTunjanganTDT(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
    function GetTunjanganAskes(GolKd:string):double;
    function GetTunjKerja(GolKd:string):double;
    function GetTPP(GolKd:string):double;

    //POTONGANPOTONGAN
    //function GetIWP(nilai:double;  Aktif_Kd:string):double;
    function GetIWP(nilai:double;  JenisGajiKD, Aktif_Kd:string; IsRapel: Boolean=False):double;
    //function GetTaperum(GolKd:string):double;
    function GetTaperum(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
    function GetSewaRumah:double;
    function GetPotonganPangan:double;
    function GetPOtonganKorpri:double;
    function GetKelebihanGaji:double;
    function GetHutangLebih:double;
    function GetBiayaPensiun(value:double):double;
    //LAIN-LAIN
    function GetPembulatan:double;
    //function GetPPH(Netto:double;JmlPTKP,JmlAnak:integer;pribadi:boolean):double;
    function GetPPH(Netto:double;JmlPTKP,JmlAnak:integer;pribadi:boolean; JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
    function GetBiayaJabatan(Bruto2:double):double;
    procedure prosesgaji;
    // -------------
    function Gaji_13_SudahDiProses(Thn:String):Boolean;
    function GetDataGaji(sNIP, sBulan, sTahun, sField: String): Variant;

    // 2011
    function FixedTglBUP(Tgl: TDateTime): TDateTime;
    function GetPTKPJanuari(sNIP: String; nDefault: Integer): Integer;
    function GetMaxPensiun(GuruKd: String): Integer;
    function GetTglBUP(TglLahir: TDateTime; MaxPensiun: Integer): TDateTime;

    function ApakahSudahPensiun(TglLahir, TglProses: TDateTime; GuruKd: String): Boolean;
    function ApakahSudahPensiun2(TglBUP, TglProses: TDateTime): Boolean;

    // end 2011
  end;

var
  dmGaji: TdmGaji;

implementation

uses GlobalModule;

{$R *.dfm}

// ----------------------------

function TdmGaji.BolehDigaji(NIP, AktifKD:String; Jns:Integer; TglAktif:TDateTime; Pesan:Boolean=False):Boolean;
var Qry, ErrMsg:String;
    NoErr, Accr:Integer;
    Res:Boolean;
begin
  Res:=True;
  NoErr:=0;
  if (qryAktif.Active) then qryAktif.Requery()
  else  qryAktif.Open;
  if (qryAktif.Locate('Aktif_Kd', AktifKd, [])) then
    Accr:=Floor(Abs(qryAktif.FieldByName('accress').AsFloat))
  else
    accr:=0;
  if (Jns>0) and (Accr>0)and(TglAktif<=Now) then
    begin
      if (NIP='') then
        begin
          Res:=False;
          NoErr:=1;
        end
      else
        begin
          Qry:= 'select count(*) as Jml from pegawai_gaji where ' +
              '(NIP='+QuotedStr(NIP)+')' +
              'AND(Jenis='+IntToStr(Jns)+')' +
              'AND(Aktif_Tgl between '+QuotedStr(DateToStr(TglAktif))+' and '+QuotedStr(DateToStr(Now))+')';
          DataGaji.Close;
          DataGaji.SQL.Text:=Qry;
          try
            DataGaji.Open;
            Res:=(DataGaji.FieldByName('Jml').AsInteger<=Accr);
          except
            on ex:Exception do
              begin
                Res:=False;
                NoErr:=2;
                ErrMsg:=ex.Message;
              end;
          end;
        end;
      if (not Res)And(Pesan) then
        begin
          case NoErr of
            1: MessageDlg('Data tidak dapat diproses', mtWarning, [mbOK], 0);
            2: if ErrMsg<>'' then
                  MessageDlg(ErrMsg, mtWarning, [mbOK], 0)
                else
                  MessageDlg('Data tidak dapat diproses', mtWarning, [mbOK], 0);
          end;
        end;
    end;
  Result := Res;
end;

function TdmGaji.Gaji_13_SudahDiProses(Thn:String):Boolean;
begin
  TempData.Close;
  TempData.SQL.Text:='select Count(*)as Jml from pegawai_gaji where (Tahun='+QuotedStr(Thn)+')and(Jenis=1)';
  TempData.Open;
  Result := (TempData.FieldByName('Jml').AsInteger>0);
end;

// ----------------------------

procedure TdmGaji.prosesgaji;
begin
end;

function TdmGaji.GetBiayaJabatan(Bruto2:double):double;
begin
{  if qryTunjUmum.Active then qryTunjUmum.Requery
  else qryTunjUmum.Open;
  if qryTunjUmum.Locate('GOLONGANKD',GolKd,[]) then
    result := qryTunjUmum.FieldByName('JUMLAH').AsFloat
  else  result := 0;
Tunj_Biaya_Jabatan
}

  Result:=0;

end;

function TdmGaji.GetBiayaPensiun(value:double):double;
begin
  qryParam.Close;
  qryParam.Parameters[0].Value:= GModule.Tahun;
  qryParam.Open;
  result := value * qryParam.FieldByName('Iuran_Pensiun').AsFloat

end;

//function TdmGaji.GetGajiPokok(Golongan:String;MasaKerja:Integer; AktifKd,STSPegKd:String):double;
function TdmGaji.GetGajiPokok(Golongan:String;MasaKerja:Integer; AktifKd,STSPegKd, JenisKd:String; IsRapel: Boolean=False):double;
var Res:Double;
begin

  if (IsRapel) then //AktifKd:= '2';
    begin
      if (AktifKd='3')or(AktifKd='4')or(AktifKd='5')or(AktifKd='6') then Aktifkd:='2';
    end;

  if qryGajiPokok.Active then qryGajiPokok.Requery
  else qryGajiPokok.Open;

  // gaji pokok
  if qryGajiPokok.Locate('GOLONGANKD;MASAKERJA',VarArrayOf([Golongan,MasaKerja]),[]) then
    Res := qryGajiPokok.FieldByName('JUMLAH').AsFloat
  else if qryGajiPokok.Locate('GOLONGANKD;MASAKERJA',VarArrayOf([Golongan,MasaKerja-1]),[]) then
    Res := qryGajiPokok.FieldByName('JUMLAH').AsFloat
  else  Res := 0;

  // persen gaji pokok berdasarkan status aktif pegawai

  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  
  if qryAktif.Locate('Aktif_KD',AktifKd,[]) then
      Res := Res * (qryAktif.FieldByName('Gaji_Pokok').AsFloat/100)
  else
      Res:=0;

  // persen gaji berdasarkan status kepegawaian
 if qryStatPeg.Active then qryStatPeg.Requery
  else qryStatPeg.Open;
  if qryStatPeg.Locate('STS_PegawaiKd',STSPegKd,[]) then
    Res := Res * qryStatPeg.FieldByName('persenGaji').AsFloat
  else  Res:=0;

  Result := Res;

end;

//function TdmGaji.GetTunjStrukTural(StrukturKd:string):double;
function TdmGaji.GetTunjStrukTural(StrukturKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
var Aktif_OK, Jenis_OK, OK_Dapat:Boolean;
begin
  Aktif_OK := False;
  Jenis_OK := False;

  if (IsRapel) then AktifKd:= '2';
  
  if qryStruktur.Active then qryStruktur.Requery
  else qryStruktur.Open;
  
  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;
  
  {if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_Struktural').AsBoolean;
  if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Struktural').AsBoolean;
  OK_Dapat := (Aktif_OK and Jenis_OK);}

  if ((JenisGajiKd='UDT')or(JenisGajiKd='UDW')) then
    begin
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Struktural').AsBoolean;
      OK_Dapat := Jenis_OK;
    end
  else
    begin
      if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_Struktural').AsBoolean;
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Struktural').AsBoolean;
      OK_Dapat := (Aktif_OK and Jenis_OK);
    end;

  if OK_Dapat then
    begin
      if qryStruktur.Locate('JBT_STRUKTURKD',StrukturKd,[]) then
        result := qryStruktur.FieldByName('JUMLAH').AsFloat
      else  result := 0;
    end
  else
    result := 0;
end;

//function TdmGaji.GetTunjFungsional(FungsiKd:string):double;
function TdmGaji.GetTunjFungsional(FungsiKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
var Aktif_OK, Jenis_OK, OK_Dapat:Boolean;
begin
  Aktif_OK := False;
  Jenis_OK := False;
  if (IsRapel) then AktifKd:= '2';
  
  if qryFungsional.Active then qryFungsional.Requery
  else qryFungsional.Open;

  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;

  {if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_Fungsional').AsBoolean;
  if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Fungsional').AsBoolean;

  OK_Dapat := (Aktif_OK and Jenis_OK);}

  if ((JenisGajiKd='UDT')or(JenisGajiKd='UDW')) then
    begin
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Fungsional').AsBoolean;
      OK_Dapat := Jenis_OK;
    end
  else
    begin
      if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_Fungsional').AsBoolean;
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Fungsional').AsBoolean;
      OK_Dapat := (Aktif_OK and Jenis_OK);
    end;

  if OK_Dapat then
    begin
      if qryFungsional.Locate('JBT_FUNGSIKD',FungsiKd,[]) then
        result := qryFungsional.FieldByName('JUMLAH').AsFloat
      else  result := 0;
    end
  else
    result := 0;
end;

//function TdmGaji.GetTunjanganUmum(GolKd:string):double;
function TdmGaji.GetTunjanganUmum(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
var Aktif_OK, Jenis_OK, OK_Dapat:Boolean;
begin

  Aktif_OK := False;
  Jenis_OK := False;

  if (IsRapel) then AktifKd:= '2';
  
  if qryTunjUmum.Active then qryTunjUmum.Requery
  else qryTunjUmum.Open;

  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;

  {if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_Umum').AsBoolean;
  if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Umum').AsBoolean;

  OK_Dapat := (Aktif_OK and Jenis_OK);}

  if ((JenisGajiKd='UDT')or(JenisGajiKd='UDW')) then
    begin
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Umum').AsBoolean;
      OK_Dapat := Jenis_OK;
    end
  else
    begin
      if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_Umum').AsBoolean;
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Umum').AsBoolean;
      OK_Dapat := (Aktif_OK and Jenis_OK);
    end;

  if OK_Dapat then
    begin
      if qryTunjUmum.Locate('GOLONGANKD',GolKd,[]) then
        result := qryTunjUmum.FieldByName('JUMLAH').AsFloat
      else  result := 0;
    end
  else
    result := 0;
end;

function TdmGaji.GetTunjUmumTambahan(NIP:string):double;
begin
  result := 0;
end;

//function TdmGaji.GetTunjOtsus(GolKd:string):double;
function TdmGaji.GetTunjOtsus(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
var Aktif_OK, Jenis_OK, OK_Dapat:Boolean;
begin
  Aktif_OK := False;
  Jenis_OK := False;

  if (IsRapel) then AktifKd:= '2';
  
  if qryTunjOtsus.Active then qryTunjOtsus.Requery
  else qryTunjOtsus.Open;

  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;

  {if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_Otsus').AsBoolean;
  if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Otsus').AsBoolean;

  OK_Dapat := (Aktif_OK and Jenis_OK);}

  if ((JenisGajiKd='UDT')or(JenisGajiKd='UDW')) then
    begin
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Otsus').AsBoolean;
      OK_Dapat := Jenis_OK;
    end
  else
    begin
      if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_Otsus').AsBoolean;
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_Otsus').AsBoolean;
      OK_Dapat := (Aktif_OK and Jenis_OK);
    end;

  if OK_Dapat then
    begin
      if qryTunjOtsus.Locate('GOLONGANKD',GolKd,[]) then
        result := qryTunjOtsus.FieldByName('JUMLAH').AsFloat
      else  result := 0;
    end
  else
    result := 0;
end;

//function TdmGaji.GetTunjDT(GolKd:string):double;
function TdmGaji.GetTunjDT(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
var Aktif_OK, Jenis_OK, OK_Dapat:Boolean;
begin
  Aktif_OK := False;
  Jenis_OK := False;

  if (IsRapel) then AktifKd:= '2';
  
  if qryTunjDT.Active then qryTunjDT.Requery
  else qryTunjDT.Open;

  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;

  {if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_DT').AsBoolean;
  if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_DT').AsBoolean;

  OK_Dapat := (Aktif_OK and Jenis_OK);}

  if ((JenisGajiKd='UDT')or(JenisGajiKd='UDW')) then
    begin
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_DT').AsBoolean;
      OK_Dapat := Jenis_OK;
    end
  else
    begin
      if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_DT').AsBoolean;
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_DT').AsBoolean;
      OK_Dapat := (Aktif_OK and Jenis_OK);
    end;

  if OK_Dapat then
    begin
      if qryTunjDT.Locate('GOLONGANKD',GolKd,[]) then
        result := qryTunjDT.FieldByName('JUMLAH').AsFloat
      else  result := 0;
    end
  else
    result := 0;
end;

//function TdmGaji.GetTunjanganTDT(GolKd:string):double;
function TdmGaji.GetTunjanganTDT(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
var Aktif_OK, Jenis_OK, OK_Dapat:Boolean;
begin
  Aktif_OK := False;
  Jenis_OK := False;

  if (IsRapel) then AktifKd:= '2';
  
  if qryTunjDT.Active then qryTunjDT.Requery
  else qryTunjDT.Open;

  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;

  {if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_DT').AsBoolean;
  if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_DT').AsBoolean;

  OK_Dapat := (Aktif_OK and Jenis_OK);}

  if ((JenisGajiKd='UDT')or(JenisGajiKd='UDW')) then
    begin
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_DT').AsBoolean;
      OK_Dapat := Jenis_OK;
    end
  else
    begin
      if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Tunj_DT').AsBoolean;
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Tunj_DT').AsBoolean;
      OK_Dapat := (Aktif_OK and Jenis_OK);
    end;

  if OK_Dapat then
    begin
      if qryTunjDT.Locate('GOLONGANKD',GolKd,[]) then
        result := qryTunjDT.FieldByName('JUMLAH').AsFloat
      else  result := 0;
    end
  else
    result := 0;
end;

function TdmGaji.GetTunjanganAskes(GolKd:string):double;
begin
  result := 0;
end;
function TdmGaji.GetTunjKerja(GolKd:string):double;
begin
  result := 0;
end;
function TdmGaji.GetTPP(GolKd:string):double;
begin
  result := 0;
end;
//POTONGANPOTONGAN
//function TdmGaji.GetIWP(nilai:double; Aktif_Kd:string):double;
function TdmGaji.GetIWP(nilai:double; JenisGajiKD, Aktif_Kd:string; IsRapel: Boolean=False):double;
begin

  if (IsRapel) then Aktif_Kd:= '2';
  Result:=0;
   if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;

  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;

  if ((qryAktif.Locate('Aktif_Kd',Aktif_Kd,[])) and (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, []))) then
  begin
    qryParam.Close;
    qryParam.Parameters[0].Value:= GModule.Tahun;
    qryParam.Open;
    if (qryJenisGaji.FieldByName('Pot_IWP').AsBoolean) then
      begin
        if qryAktif.FieldByName('Pot_Pensiun').AsBoolean then
          Result := nilai * qryParam.FieldByName('Iuran_Pensiun').AsFloat;
        if qryAktif.FieldByName('Pot_Askes').AsBoolean then
          Result := Result + nilai * qryParam.FieldByName('Askes').AsFloat;
        if qryAktif.FieldByName('Pot_HariTua').AsBoolean then
          Result := Result + nilai * qryParam.FieldByName('Tunj_Hari_Tua').AsFloat;
      end;
  end;
end;

//function TdmGaji.GetTaperum(GolKd:string):double;
function TdmGaji.GetTaperum(GolKd, JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
var Aktif_OK, Jenis_OK, OK_Dapat:Boolean;
begin
  Aktif_OK := False;
  Jenis_OK := False;

  if (IsRapel) then AktifKd:= '2';

  GolKd:=LeftStr(GolKd,Pos('/',GolKD)-1);
  if qryTaperum.Active then qryTaperum.Requery
  else qryTaperum.Open;

  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;

  {if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Pot_Taperum').AsBoolean;
  if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Pot_Taperum').AsBoolean;

  OK_Dapat := (Aktif_OK and Jenis_OK);}

  if ((JenisGajiKd='UDT')or(JenisGajiKd='UDW')) then
    begin
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Pot_Taperum').AsBoolean;
      OK_Dapat := Jenis_OK;
    end
  else
    begin
      if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('Pot_Taperum').AsBoolean;
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('Pot_Taperum').AsBoolean;
      OK_Dapat := (Aktif_OK and Jenis_OK);
    end;

  if OK_Dapat then
    begin
      if qryTaperum.Locate('GOLONGANKD',GolKd,[]) then
        result := qryTaperum.FieldByName('JUMLAH').AsFloat
      else  result := 0;
    end
  else
    result := 0;
end;
function TdmGaji.GetSewaRumah:double;
begin
  result := 0;
end;
function TdmGaji.GetPotonganPangan:double;
begin
  result := 0;
end;
function TdmGaji.GetPOtonganKorpri:double;
begin
  result := 0;
end;
function TdmGaji.GetKelebihanGaji:double;
begin
  result := 0;
end;
function TdmGaji.GetHutangLebih:double;
begin
  result := 0;
end;
//LAIN-LAIN
function TdmGaji.GetPembulatan:double;
begin
  result := 0;
end;
//function TdmGaji.GetPPH(Netto:double;JmlPTKP,JmlAnak:integer;pribadi:boolean):double;
function TdmGaji.GetPPH(Netto:double;JmlPTKP,JmlAnak:integer;pribadi:boolean; JenisGajiKD, AktifKD:string; IsRapel: Boolean=False):double;
var oldround:TFPURoundingMode;
    Aktif_OK, Jenis_OK, OK_Dapat:Boolean;
begin

  Aktif_OK := False;
  Jenis_OK := False;

  if (IsRapel) then AktifKd:= '2';
  
  result:=0;

  if qryAktif.Active then qryAktif.Requery
  else qryAktif.Open;
  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else qryJenisGaji.Open;

  {if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('PPh').AsBoolean;
  if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('PPh').AsBoolean;

  OK_Dapat := (Aktif_OK and Jenis_OK);}

  if ((JenisGajiKd='UDT')or(JenisGajiKd='UDW')) then
    begin
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('PPh').AsBoolean;
      OK_Dapat := Jenis_OK;
    end
  else
    begin
      if (qryAktif.Locate('Aktif_kd', AktifKD, [])) then Aktif_OK := qryAktif.FieldByName('PPh').AsBoolean;
      if (qryJenisGaji.Locate('Jenis_kd', JenisGajiKd, [])) then Jenis_OK := qryJenisGaji.FieldByName('PPh').AsBoolean;
      OK_Dapat := (Aktif_OK and Jenis_OK);
    end;

  if OK_Dapat then
    begin
      qryParam.Close;
      qryParam.Parameters[0].Value:= GModule.Tahun;
      qryParam.Open;
      if pribadi then
        result:=qryParam.FieldByName('PTKP_Pribadi').AsFloat;
      if JmlPTKP>0 then
        result:=result+qryParam.FieldByName('PTKP_SI').AsFloat*JmlPTKP;
      //if result>qryParam.FieldByName('PTKP_Anak_Max').AsInteger  then
      //result:=qryParam.FieldByName('PTKP_Anak_Max').AsInteger;

  //----------------------------------------------------------------------------
  {if JmlAnak>0 then
  begin
    if JmlAnak>qryParam.FieldByName('PTKP_Anak_Max').AsInteger then
        JmlAnak:=qryParam.FieldByName('PTKP_Anak_Max').AsInteger;
    result:=result+JmlAnak*qryParam.FieldByName('PTKP_Anak').AsFloat;
  end;}
  //----------------------------------------------------------------------------

                                  //ShowMessage(FloatToStr(Result));
      Netto:=Netto-Result;     //ShowMessage(FormatFloat('#,##0', Netto));
      Result:=Netto/1000;         //ShowMessage(FormatFloat('#,##0', Result));
      Result:=Frac(Result)*1000;   //ShowMessage(FormatFloat('#,##0', Result));
      Netto:=Netto-Result;        //ShowMessage(FormatFloat('#,##0', Netto));
      Result:=0;
      if Netto>qryParam.FieldByName('Tunj_Pajak_3_Max').AsFloat then
        begin
          Result:=Result+(Netto-qryParam.FieldByName('Tunj_Pajak_3_Max').AsFloat)*qryParam.FieldByName('Tunj_Pajak_4').AsFloat;
          Netto:=qryParam.FieldByName('Tunj_Pajak_3_Max').AsFloat;
        end;

      if Netto>qryParam.FieldByName('Tunj_Pajak_2_Max').AsFloat then
        begin
          Result:=Result+(Netto-qryParam.FieldByName('Tunj_Pajak_2_Max').AsFloat)*qryParam.FieldByName('Tunj_Pajak_3').AsFloat;
          Netto:=qryParam.FieldByName('Tunj_Pajak_2_Max').AsFloat;
        end;
      if Netto>qryParam.FieldByName('Tunj_Pajak_1_Max').AsFloat then
        begin
          Result:=Result+(Netto-qryParam.FieldByName('Tunj_Pajak_1_Max').AsFloat)*qryParam.FieldByName('Tunj_Pajak_2').AsFloat;
          Netto:=qryParam.FieldByName('Tunj_Pajak_1_Max').AsFloat;
        end;
      if Netto>0 then
        begin
          Result:=Result+Netto*qryParam.FieldByName('Tunj_Pajak_1').AsFloat;
        end;
      oldround:=GetroundMode();
      setroundMode(rmUp);
      Result:=Round(Result/12);
      setroundMode(oldround);
  end;
end;

// Khusus Rapel

function TdmGaji.GetDataGaji(sNIP, sBulan, sTahun, sField: String): Variant;
begin
  Result:= 0;
  TempData.Close;
  TempData.SQL.Text:= 'select ' + sField + ' from pegawai_gaji where jenis=0 and nip=' + QuotedStr(sNIP) +
      ' and bulan=' + QuotedStr(sBulan) + ' and tahun=' + QuotedStr(sTahun);
  try
    TempData.Open;
    Result:= TempData.FieldByName(sField).Value;
  except
    Result:= 0;
  end;
end;

// 2011

function TdmGaji.GetPTKPJanuari(sNIP: String; nDefault: Integer): Integer;
var strSQL: String;
begin
  Result:= nDefault;
  strSQL:= 'SELECT TOP 1 PTKP FROM PEGAWAI_GAJI WHERE ' + //BULAN=''01'' AND
            ' TAHUN = ' + QuotedStr(GModule.Tahun) +
            ' and NIP=' + QuotedStr(sNIP) + ' AND Jenis=0 ' +
            ' ORDER BY BULAN ';
  TempData.Close;
  TempData.SQL.Text:= strSQL;
  TempData.Open;
  if (TempData.IsEmpty) then  exit;
  Result:= TempData.FieldByName('PTKP').AsInteger;
  TempData.Close;
end;

function TdmGaji.GetMaxPensiun(GuruKd: String): Integer;
begin
  try
    if (qryGuru.Active) then qryGuru.Requery
    else qryGuru.Open;
    if (qryGuru.Locate('GuruKd', GuruKd, [loPartialKey])) then
      Result:= qryGuru.FieldByName('Max_Pensiun').AsInteger
    else Result:= 0;
  except
    Result:= 0;
  end;
end;

function TdmGaji.FixedTglBUP(Tgl: TDateTime): TDateTime;
var D, M, Y: integer;
begin
  D:= 1;
  M:= MonthOf(Tgl);
  Y:= YearOf(Tgl);
  if (M=12) then
    begin
      M:= 1; Y:= Y+1;
    end
  else M:= M+1;
  Result:= EncodeDate(Y, M, D);
end;

function TdmGaji.GetTglBUP(TglLahir: TDateTime; MaxPensiun: Integer): TDateTime;
var R: TDateTime;
begin
  R:= IncYear(TglLahir, MaxPensiun);
  Result:= FixedTglBUP(R);
end;

function TdmGaji.ApakahSudahPensiun(TglLahir, TglProses: TDateTime; GuruKd: String): Boolean;
var P: Integer;
    TglBUP: TDateTime;
begin
  P:= GetMaxPensiun(GuruKd);
  TglBUP:= GetTglBUP(TglLahir, P);
  //Result:= (TglProses>TglBUP);
  Result:= (MonthOf(TglProses)=MonthOf(TglBUP)) and (YearOf(TglProses)=YearOf(TglBUP));
end;

function TdmGaji.ApakahSudahPensiun2(TglBUP, TglProses: TDateTime): Boolean;
var M1: Integer;
    BUP, xProses: TDateTime;
begin
  M1:= MonthOf(TglBUP);
  //M2:= MonthOf(TglProses);
  //Y1:= YearOf(TglBUP);
  //Y2:= YearOf(TglProses);
  if (M1=1) then
    BUP:= RecodeDateTime(TglBUP, YearOf(TglBUP)-1, 12, 1, 0, 0, 0, 0)
  else
    BUP:= RecodeDateTime(TglBUP, YearOf(TglBUP), MonthOf(TglBUP)-1, 1, 0, 0, 0, 0);
  xProses:= RecodeDateTime(TglProses, YearOf(TglProses), MonthOf(TglProses), 1, 0, 0, 0, 0);
  //ShowMessage(DateToStr(BUP) + '--->' + DateToStr(xProses));
  Result:= (BUP<=xProses);
  {if (Y1>Y2) then
    begin
      if (M2=12) then
        begin
          if (M1=1) then Result:= True
          else Result:= False;
        end
      else Result:= False;
    end
  else
    begin
      if (Y1<Y2) then Result:= True
      else
        begin
          if (M1=1) then Result:= True
          else Result:= (M1-1<=M2);
        end;
      //Result:= (Y1<Y2) or ((M1<=M2) and (Y1=Y2));
    end; }
end;

// end 2011

procedure TdmGaji.DataModuleCreate(Sender: TObject);
begin
  qryParam.Close;
  qryStruktur.Open;
  qryGajiPOkok.Open;
  qryFungsional.Open;
  qryTaperum.Open;
  qryStatPeg.Open;
  //qryJenisGaji.Open;
  qryGuru.Open;
end;

end.

