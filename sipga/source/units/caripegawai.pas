unit CariPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, Grids, DBGrids, StrUtils, ADODB, DBCtrls, DateUtils,
  SMDBGrid;

type
  TfrmCariPegawai = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    eCari: TEdit;
    btnCari: TButton;
    DSCari: TDataSource;
    btnOK: TButton;
    btnCancel: TButton;
    qryAktif: TADOQuery;
    LbStatus: TLabel;
    CoStatus: TComboBox;
    Label3: TLabel;
    LbJumlah: TLabel;
    DBNavigator1: TDBNavigator;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    coCP: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure eCariKeyPress(Sender: TObject; var Key: Char);
    procedure btnOKClick(Sender: TObject);
    procedure CoStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    WW: String;
    BuatRapel, RapelSusulan, BuatSKPP: Boolean;
    BulanGaji, SJenis: String;
    RJenis: Integer;
  end;

//function CariPegawaiDlg(Where:String='';BLNGJ:String='';IsRapel:Boolean= False): String;  // Result = nip pegawai
function CariPegawaiSKPPDlg(Where:String=''): String;
function CariPegawaiDlg(GJenis: Integer; Where:String='';BLNGJ:String=''): String;
function CariRapelPegawaiDlg(BLN1, BLN2, THN1, THN2:String; RJenis: Integer; Where:String=''; IsSusulan: Boolean = False): String;

var
  frmCariPegawai: TfrmCariPegawai;

const
      PegawaiQueryCari = 'select a.nip, a.nama, b.golongankd, a.sts_pegawaikd, ' +
	                    'pangkat_golongan = case when b.uraian = null then b.golongankd ' +
	                    'else b.uraian + '' (Golongan '' + b.golongankd + '')'' end, ' +
	                    'c.unitkd, c.unitnm, d.aktif_kd, d.uraian as aktif_nm  ' +
                      'from pegawai a inner join tblgolongan b on ' +
	                    'a.golongankd = b.golongankd inner join ' +
	                    'tblunit c on a.unitkd = c.unitkd inner join  ' +
	                    'tblSTS_Aktif d on a.aktif_kd = d.aktif_kd  ' +
                      'left outer join SKPP s on s.nip=a.nip ' +
                      'where (s.nip is null) <strWhere> ' +
                      'order by c.Unitkd, a.sts_pegawaikd desc, d.aktif_kd asc, ' +
                      '(case a.jbt_strukturkd when ''9999'' then ''zzz'' when ''BUP'' then ''0'' ' +
                      'when ''WABUP'' then ''1'' else a.jbt_strukturkd end)asc, ' +
                      'b.golongankd desc';
      GajiQueryCari = 'select a.nip, a.nama, b.golongankd, a.sts_pegawaikd, ' +
	                    'pangkat_golongan = case when b.uraian = null then b.golongankd ' +
	                    'else b.uraian + '' (Golongan '' + b.golongankd + '')'' end, ' +
	                    'c.unitkd, c.unitnm, d.aktif_kd, d.uraian as aktif_nm  ' +
                      'from pegawai a inner join tblgolongan b on ' +
	                    'a.golongankd = b.golongankd inner join ' +
	                    'tblunit c on a.unitkd = c.unitkd inner join  ' +
	                    'tblSTS_Aktif d on a.aktif_kd = d.aktif_kd  ' +
                      'left outer join (select nip from ViewGaji where <gbulan> )gj on a.nip=gj.nip ' +
                      'where (gj.nip is null) <strWhere> ' +
                      'order by c.Unitkd, a.sts_pegawaikd desc, d.aktif_kd asc, ' +
                      '(case a.jbt_strukturkd when ''9999'' then ''zzz'' when ''BUP'' then ''0'' ' +
                      'when ''WABUP'' then ''1'' else a.jbt_strukturkd end)asc, ' +
                      'b.golongankd desc';

      RapelQueryCari = 'select a.nip, a.nama, b.golongankd, a.sts_pegawaikd, ' +
                      'pangkat_golongan = case when b.uraian = null then b.golongankd  ' +
                      'else b.uraian + '' (Golongan '' + b.golongankd + '')''end,  ' +
                      'c.unitkd, c.unitnm, d.aktif_kd, d.uraian as aktif_nm  ' +
                      'from  ' +
                      '(select pgw.nip, pgw.nama,  ' +
                      'pgw.sts_pegawaikd,  ' +
                      'pgw.golongankd, ' +
                      'pgw.unitkd,  ' +
                      'pgw.aktif_kd  ' +
                      'from  ' +
                      'pegawai pgw left outer join ' +
                      '(select nip from pegawai_gaji_rapel where <rbulan> )gj on pgw.nip = gj.nip ' +
                      'where (gj.nip is null) <strWhere> ' +
                      ') a   ' +
                      'inner join tblgolongan b on ' +
                      'a.golongankd = b.golongankd inner join ' +
                      'tblunit c on a.unitkd = c.unitkd inner join ' +
                      'tblSTS_Aktif d on a.aktif_kd = d.aktif_kd ' +
                      'order by a.nip';
      SusulanQueryCari = 'select a.nip, a.nama, b.golongankd, a.sts_pegawaikd, ' +
	                    'pangkat_golongan = case when b.uraian = null then b.golongankd ' +
	                    'else b.uraian + '' (Golongan '' + b.golongankd + '')'' end, ' +
	                    'c.unitkd, c.unitnm, d.aktif_kd, d.uraian as aktif_nm  ' +
                      'from pegawai a inner join tblgolongan b on ' +
	                    'a.golongankd = b.golongankd inner join ' +
	                    'tblunit c on a.unitkd = c.unitkd inner join  ' +
	                    'tblSTS_Aktif d on a.aktif_kd = d.aktif_kd  ' +
                      'left outer join (select nip from ViewGaji where <rbulan> and jenis=0)gj on a.nip=gj.nip ' +
                      'left outer join (select nip from pegawai_gaji_rapel where <rbulan> and jenis=19)rp on a.nip=rp.nip ' +
                      'where (gj.nip is null) and (rp.nip is null) <strWhere> ' +
                      'order by c.Unitkd, a.sts_pegawaikd desc, d.aktif_kd asc, ' +
                      '(case a.jbt_strukturkd when ''9999'' then ''zzz'' when ''BUP'' then ''0'' ' +
                      'when ''WABUP'' then ''1'' else a.jbt_strukturkd end)asc, ' +
                      'b.golongankd desc';

implementation

{$R *.dfm}

uses GlobalModule;

function CariPegawaiSKPPDlg(Where:String=''): String;
var MR: TModalResult;
    R, W: String;
begin
  if (Where <> '') then W:= ' and ' + Where
  else W:= Where;
  frmCariPegawai:= TfrmCariPegawai.Create(nil);
  frmCariPegawai.BuatRapel:= False;
  frmCariPegawai.BuatSKPP:= True;
  R:= '';
  if (not GMOdule.IsAllSKPD) then
    begin
      if (GModule.IsAccessSub) then R:= '(a.UnitKd Like ' + QuotedStr(GModule.UnitKd + '%') + ') '
      else R:= '(a.UnitKd = ' + QuotedStr(GModule.UnitKd) + ') ';
    end;
  if (R<>'') then W:= W + ' and ' + R;
  frmCariPegawai.WW:= W;
  Mr:= frmCariPegawai.ShowModal;
  if (Mr=mrOK) then Result:= GModule.BQuery.FieldByName('NIP').AsString
  else Result:= '';
  frmCariPegawai.Free;
  frmCariPegawai:=nil;
end;

function CariPegawaiDlg(GJenis: Integer; Where:String='';BLNGJ:String=''): String;
var MR: TModalResult;
    B, R, W: String;
begin
  if (Where <> '') then W:= ' and ' + Where
  else W:= Where;
  frmCariPegawai:= TfrmCariPegawai.Create(nil);
  frmCariPegawai.BuatRapel:= False;
  frmCariPegawai.BuatSKPP:= False;
  B:= ' (bulan=''' + BLNGJ + ''' and tahun=''' + GModule.Tahun + ''') ';
  B:= B + ' and (jenis=' + IntToStr(GJenis) + ') ';
  frmCariPegawai.BulanGaji:= B;
  R:= '';
  if (not GMOdule.IsAllSKPD) then
    begin
      if (GModule.IsAccessSub) then R:= '(a.UnitKd Like ' + QuotedStr(GModule.UnitKd + '%') + ') '
      else R:= '(a.UnitKd = ' + QuotedStr(GModule.UnitKd) + ') ';
    end;
  if (R<>'') then W:= W + ' and ' + R;
  frmCariPegawai.WW:= W;
  Mr:= frmCariPegawai.ShowModal;
  if (Mr=mrOK) then Result:= GModule.BQuery.FieldByName('NIP').AsString
  else Result:= '';
  frmCariPegawai.Free;
  frmCariPegawai:=nil;
end;

function CariRapelPegawaiDlg(BLN1, BLN2, THN1, THN2:String; RJenis: Integer; Where:String=''; IsSusulan: Boolean = False): String;
var MR: TModalResult;
    B, R, W: String;
begin
  if (Where <> '') then W:= ' and ' + Where
  else W:= Where;
  frmCariPegawai:= TfrmCariPegawai.Create(nil);
  frmCariPegawai.BuatRapel:= True;
  frmCariPegawai.BuatSKPP:= False;
  if (not IsSusulan) then
    begin
      B:= ' (TM_BULAN=''' + BLN1 + ''' ';
      B:= B + ' AND TM_TAHUN=''' + THN1 + ''' ';
      B:= B + ' AND BULAN=''' + BLN2 + ''' ';
      B:= B + ' AND TAHUN=''' + THN2 + ''') ';
      B:= B + ' and (jenis=' + IntToStr(RJenis) + ') ';
    end
  else
    begin
      B:= ' (bulan=''' + BLN2 + ''' and tahun=''' + THN2 + ''') ';
      //B:= B + ' and (jenis=' + IntToStr(RJenis) + ') ';
    end;
  R:= '';
  if (not GMOdule.IsAllSKPD) then
    begin
      if (GModule.IsAccessSub) then
        begin
          if (RJenis=19) then
            R:= '(A.UnitKd Like ' + QuotedStr(GModule.UnitKd + '%') + ') '
          else
            R:= '(PGW.UnitKd Like ' + QuotedStr(GModule.UnitKd + '%') + ') ';
        end
      else
        begin
          if (RJenis=19) then
            R:= '(a.UnitKd = ' + QuotedStr(GModule.UnitKd) + ') '
          else
            R:= '(PGW.UnitKd = ' + QuotedStr(GModule.UnitKd) + ') ';
        end;
    end;
  if (R<>'') then W:= W + ' and ' + R;
  frmCariPegawai.SJenis:= ' and (Jenis=' + IntToStr(RJenis) + ') ';
  frmCariPegawai.RJenis:= RJenis;
  frmCariPegawai.BulanGaji:= B;
  frmCariPegawai.WW:= W;
  frmCariPegawai.RapelSusulan:= IsSusulan;
  Mr:= frmCariPegawai.ShowModal;
  if (Mr=mrOK) then Result:= GModule.BQuery.FieldByName('NIP').AsString
  else Result:= '';
  frmCariPegawai.Free;
  frmCariPegawai:=nil;
end;

procedure TfrmCariPegawai.FormShow(Sender: TObject);
begin
  CoStatus.Clear;
  CoStatus.Items.Add('Semua Status');
  CoStatus.ItemIndex:=0;
  GModule.BQuery.Close;
  GModule.BQuery.Filtered:= False;
  GModule.BQuery.SQL.Text:= CariQry;
  if (BuatRapel) then
    begin
      if (RapelSusulan) then
        GModule.BQuery.SQL.Text:= SusulanQueryCari
      else GModule.BQuery.SQL.Text:= RapelQueryCari;
      if (BulanGaji<>'') then
        GModule.BQuery.SQL.Text:= StringReplace(GModule.BQuery.SQL.Text, '<rbulan>', BulanGaji, [rfReplaceAll])
      else
        GModule.BQuery.SQL.Text:= StringReplace(GModule.BQuery.SQL.Text, '<rbulan>', ' 1=1 ', [rfReplaceAll]);
      if (WW<>'') then
        GModule.BQuery.SQL.Text:= StringReplace(GModule.BQuery.SQL.Text, '<strWhere>', WW, [rfReplaceAll])
      else
        GModule.BQuery.SQL.Text:= StringReplace(GModule.BQuery.SQL.Text, '<strWhere>', ' 1=1 ', [rfReplaceAll]);
    end
  else
    begin
      if (not BuatSKPP) then
        begin
          GModule.BQuery.SQL.Text:= GajiQueryCari;
          if (BulanGaji<>'') then
            GModule.BQuery.SQL.Text:= StringReplace(GModule.BQuery.SQL.Text, '<gbulan>', BulanGaji, [rfReplaceAll])
          else
            GModule.BQuery.SQL.Text:= StringReplace(GModule.BQuery.SQL.Text, '<gbulan>', ' 1=1 ', [rfReplaceAll]);
        end
      else
        GModule.BQuery.SQL.Text:= PegawaiQueryCari;
      if (WW<>'') then
        GModule.BQuery.SQL.Text:= StringReplace(GModule.BQuery.SQL.Text, '<strWhere>', WW, [rfReplaceAll])
      else
        GModule.BQuery.SQL.Text:= StringReplace(GModule.BQuery.SQL.Text, '<strWhere>', '  ', [rfReplaceAll]);

    end;

  //ShowMessage(GModule.BQuery.SQL.Text);
  
  GModule.BQuery.Open;

  if (qryAktif.Active) then qryAktif.Requery()
  else qryAktif.Open;
  While not qryAktif.Eof do
  begin
    CoStatus.Items.Add(qryAktif.FieldByName('Uraian').AsString);
    qryAktif.Next;
  end;
  coCP.ItemIndex:= 0;
  CoStatus.Visible:= not BuatSKPP;
  LbStatus.Visible:= not BuatSKPP;
  btnCariClick(nil);
end;

procedure TfrmCariPegawai.btnCariClick(Sender: TObject);
var F, S, C:String;
begin
  F:= '';
  GModule.BQuery.Filtered:=False;
  if (not BuatSKPP) then
    begin
      if ((CoStatus.Text<>'')AND(UPPERCASE(CoStatus.Text)<>'SEMUA STATUS')) then
        F:= '(Aktif_Nm = ' + QuotedStr(CoStatus.Text) + ')'
      else
        F:='';
    end;
  S:='';
  if (eCari.Text<>'') then
    begin
      S:= '(NIP LIKE ' + QuotedStr('%' + eCari.Text + '%') + ') ' +
            ' or (nama LIKE ' + QuotedStr('%' + eCari.Text + '%') + ') or (golongankd = ' +  QuotedStr(eCari.Text) + ') or (' +
            'unitkd = ' + QuotedStr(eCari.Text) + ') ';
    end;
  C:= '';
  if (coCP.ItemIndex>0) then
    begin
      if (coCP.ItemIndex=1) then
        C:= '(sts_pegawaikd=''C'') '
      else C:= '(sts_pegawaikd=''P'') ';
    end;
  if (C<>'') then
    begin
      if (F<>'') then F:= F + ' and ' + C
      else F:= C;
    end;
  if (F<>'') then
    begin
      if (S<>'') then
        GModule.BQuery.Filter:= F + ' AND ' + S
      else
        GModule.BQuery.Filter:= F;
      GModule.BQuery.Filtered:=True;
    end
  else
    begin
      if (S<>'') then
        begin
          GModule.BQuery.Filter:= S;
          GModule.BQuery.Filtered:=True;
        end;
    end;
  LbJumlah.Caption:= IntToStr(GModule.BQuery.RecordCount);
end;

procedure TfrmCariPegawai.eCariChange(Sender: TObject);
begin
  btnCari.Click;
end;

procedure TfrmCariPegawai.eCariKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) then btnCari.Click;
end;

procedure TfrmCariPegawai.btnOKClick(Sender: TObject);
begin
  if (GModule.BQuery.IsEmpty) then
    MessageDlg('Tidak ada pegawai yang dipilih.', mtWarning, [mbOK], 0)
  else
    ModalResult:= mrOK;
end;

procedure TfrmCariPegawai.CoStatusClick(Sender: TObject);
begin
  btnCari.Click;
end;

end.
