unit _Export;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, ComCtrls, DBCtrls,
  ImgList, StrUtils;

type
  PTData = ^TWhere;
  TWhere = Record
    OptIndex: Integer;
    WhereGaji: String;
end;

type
  TfrmExport = class(TForm)
    Panel1: TPanel;
    qryGajiEx: TADOQuery;
    dsGajiEx: TDataSource;
    qryJnsGaji: TADOQuery;
    qryRapelEx: TADOQuery;
    dsRapelEx: TDataSource;
    SaveEx: TSaveDialog;
    Panel3: TPanel;
    Label1: TLabel;
    PGC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    qryPegawai: TADOQuery;
    dsPegawai: TDataSource;
    DBGrid1: TDBGrid;
    btnExpPegawai: TButton;
    btnCancel1: TButton;
    tvRapel: TTreeView;
    Panel10: TPanel;
    Panel11: TPanel;
    btnCancel3: TButton;
    btnExpRapel: TButton;
    Splitter1: TSplitter;
    tvGaji: TTreeView;
    Splitter2: TSplitter;
    Panel8: TPanel;
    btnCancel2: TButton;
    btnExpGaji: TButton;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    dsJnsGaji: TDataSource;
    qryBulanGaji: TADOQuery;
    qryJnsGajiJenis: TSmallintField;
    qryJnsGajiJenisNM: TStringField;
    qryJnsRapel: TADOQuery;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    dsJnsRapel: TDataSource;
    qryBulanRapel: TADOQuery;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    ImageList1: TImageList;
    Label2: TLabel;
    JmlPegawai: TLabel;
    JmlGaji: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    JmlRapel: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qryJnsGajiCalcFields(DataSet: TDataSet);
    procedure qryJnsRapelCalcFields(DataSet: TDataSet);
    procedure qryJnsGajiAfterOpen(DataSet: TDataSet);
    procedure qryJnsGajiAfterClose(DataSet: TDataSet);
    procedure qryJnsRapelAfterOpen(DataSet: TDataSet);
    procedure qryJnsRapelAfterClose(DataSet: TDataSet);
    procedure tvGajiChange(Sender: TObject; Node: TTreeNode);
    procedure qryPegawaiAfterOpen(DataSet: TDataSet);
    procedure qryGajiExAfterOpen(DataSet: TDataSet);
    procedure qryRapelExAfterOpen(DataSet: TDataSet);
    procedure tvRapelChange(Sender: TObject; Node: TTreeNode);
    procedure btnExpPegawaiClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateMenuGaji;
    procedure UpdateMenuRapel;
    function AddExtention(sFile, DefEx: String): String;
  public
    { Public declarations }
  end;

procedure ExportDlg;

var
  frmExport: TfrmExport;

implementation

{$R *.dfm}

uses GlobalModule;

procedure ExportDlg;
begin
  if (frmExport=nil) then frmExport:=TfrmExport.Create(nil);
  frmExport.ShowModal;
  frmExport:=nil;
end;

procedure TfrmExport.UpdateMenuGaji;
var tnJenis: TTreeNode;
    PData: PTData;
    Cp: String;
begin
  tvGaji.Items.Clear;
  qryJnsGaji.Close;
  try
    qryJnsGaji.Open;
  except
    on Ex: Exception do
      begin
        MessageDlg('Error...!!!' + #13 + Ex.Message, mtError, [mbOK], 0);
        Exit;
      end;
  end;
  if (qryJnsGaji.IsEmpty) then exit;
  if not(qryBulanGaji.Active) then exit;
  New(PData);
  PData.WhereGaji:= '';
  PData.OptIndex:= -1;
  tnJenis:= tvGaji.Items.AddObject(nil, 'ALL', PData);
  tnJenis.StateIndex:= 1;
  tnJenis.ImageIndex:= 0;
  qryJnsGaji.First;
  while not qryJnsGaji.Eof do
    begin
      tnJenis:= tvGaji.Items.Add(tnJenis, qryJnsGaji.FieldByName('JenisNM').AsString);
      tnJenis.StateIndex:= 0;
      tnJenis.ImageIndex:= 0;
      if not(qryBulanGaji.IsEmpty) then
        begin
          New(PData);
          PData.WhereGaji:= ' where jenis=' + IntToStr(qryJnsGaji.FieldByName('Jenis').AsInteger) +
                  ' and unitkd=' + QuotedStr(GModule.UnitKd);;
          PData.OptIndex:= qryJnsGaji.FieldByName('Jenis').AsInteger; //- (qryJnsGaji.FieldByName('Jenis').AsInteger * 2);
          with (tvGaji.Items.AddChildObject(tnJenis, 'ALL', Pdata)) do
            begin
              StateIndex:= 1;
              ImageIndex:= 1;
            end;
          qryBulanGaji.First;
          while not qryBulanGaji.Eof do
            begin
              Cp:= GetNamaBulan(StrToInt(qryBulanGaji.FieldByName('bulan').AsString));
              Cp:= Cp + ' ' + qryBulanGaji.FieldByName('tahun').AsString;
              New(PData);
              PData.WhereGaji:= ' where jenis=' + IntToStr(qryBulanGaji.FieldByName('Jenis').AsInteger);
              PData.WhereGaji:= PData.WhereGaji + ' and bulan=' + qryBulanGaji.FieldByName('bulan').AsString;
              PData.WhereGaji:= PData.WhereGaji + ' and tahun=' + qryBulanGaji.FieldByName('tahun').AsString;
              PData.WhereGaji:= PData.WhereGaji + ' and unitkd=' + QuotedStr(GModule.UnitKd);
              PData.OptIndex:= qryBulanGaji.FieldByName('Jenis').AsInteger;
              with (tvGaji.Items.AddChildObject(tnJenis, Cp, Pdata)) do
                begin
                  StateIndex:= 1;
                  ImageIndex:= 1;
                end;
              qryBulanGaji.Next;
            end;
        end;
      qryJnsGaji.Next;
    end;
end;

procedure TfrmExport.UpdateMenuRapel;
var tnJenis: TTreeNode;
    PData: PTData;
    Cp: String;
begin
  tvRapel.Items.Clear;
  qryJnsRapel.Close;
  try
    qryJnsRapel.Open;
  except
    on Ex: Exception do
      begin
        MessageDlg('Error...!!!' + #13 + Ex.Message, mtError, [mbOK], 0);
        Exit;
      end;
  end;
  if (qryJnsRapel.IsEmpty) then exit;
  if not(qryBulanRapel.Active) then exit;
  New(PData);
  PData.WhereGaji:= '';
  PData.OptIndex:= -2;
  tnJenis:= tvRapel.Items.AddObject(nil, 'ALL', PData);
  tnJenis.StateIndex:= 1;
  tnJenis.ImageIndex:= 0;
  qryJnsRapel.First;
  while not qryJnsRapel.Eof do
    begin
      tnJenis:= tvRapel.Items.Add(tnJenis, qryJnsRapel.FieldByName('JenisNM').AsString);
      tnJenis.StateIndex:= 0;
      tnJenis.ImageIndex:= 0;
      if not(qryBulanGaji.IsEmpty) then
        begin
          New(PData);
          PData.WhereGaji:= ' where jenis=' + IntToStr(qryJnsRapel.FieldByName('Jenis').AsInteger) +
                    ' and unitkd=' + QuotedStr(GModule.UnitKd);
          PData.OptIndex:= qryJnsRapel.FieldByName('Jenis').AsInteger; //- (qryJnsRapel.FieldByName('Jenis').AsInteger * 2);
          with (tvRapel.Items.AddChildObject(tnJenis, 'ALL', Pdata)) do
            begin
              StateIndex:= 1;
              ImageIndex:= 1;
            end;
          qryBulanRapel.First;
          while not qryBulanRapel.Eof do
            begin
              Cp:= GetNamaBulan(StrToInt(qryBulanRapel.FieldByName('tm_bulan').AsString));
              Cp:= Cp + ' ' + qryBulanRapel.FieldByName('tm_tahun').AsString;
              Cp:= Cp + ' s/d ';
              Cp:= Cp + GetNamaBulan(StrToInt(qryBulanRapel.FieldByName('bulan').AsString));
              Cp:= Cp + ' ' + qryBulanRapel.FieldByName('tahun').AsString;
              New(PData);
              PData.WhereGaji:= ' where jenis=' + IntToStr(qryBulanRapel.FieldByName('Jenis').AsInteger);
              PData.WhereGaji:= PData.WhereGaji + ' and tm_bulan=' + qryBulanRapel.FieldByName('tm_bulan').AsString;
              PData.WhereGaji:= PData.WhereGaji + ' and tm_tahun=' + qryBulanRapel.FieldByName('tm_tahun').AsString;
              PData.WhereGaji:= PData.WhereGaji + ' and bulan=' + qryBulanRapel.FieldByName('bulan').AsString;
              PData.WhereGaji:= PData.WhereGaji + ' and tahun=' + qryBulanRapel.FieldByName('tahun').AsString;
              PData.WhereGaji:= PData.WhereGaji + ' and unitkd=' + QuotedStr(GModule.UnitKd);
              PData.OptIndex:= qryBulanRapel.FieldByName('Jenis').AsInteger;
              with (tvRapel.Items.AddChildObject(tnJenis, Cp, PData)) do
                begin
                  StateIndex:= 1;
                  ImageIndex:= 1;
                end;
              qryBulanRapel.Next;
            end;
        end;
      qryJnsRapel.Next;
    end;
end;

function TfrmExport.AddExtention(sFile, DefEx: String): String;
var P, S, E:String;
begin
  Result:= sFile;
  S:= ExtractFileName(sFile);
  P:= ExtractFilePath(sFile);
  if (S='') then exit;
  if (P='') then exit;
  if (DefEx='') then exit;
  E:= DefEx;
  if (Copy(E, 0, 1)<>'.') then E:= '.' + E;
  if (Copy(S, Length(S)-Length(E)+1, Length(E))=E) then
    Exit
  else
    S:= S + E;
  Result:= P + S;
end;

procedure TfrmExport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmExport.FormShow(Sender: TObject);
begin
  JmlPegawai.Caption:= '0';
  qryPegawai.Close;
  try
    qryPegawai.Parameters[0].Value:= GModule.UnitKd;
    qryPegawai.Open;
  except
    on Ex: Exception do
      MessageDlg('Error...!!!' + #13 + Ex.Message, mtError, [mbOK], 0);
  end;
  UpdateMenuGaji;
  UpdateMenuRapel;
  PGC.ActivePageIndex:= 0;
end;

procedure TfrmExport.qryJnsGajiCalcFields(DataSet: TDataSet);
begin
  case Dataset.FieldByName('Jenis').AsInteger of
  0: Dataset.FieldByName('JenisNm').AsString:= 'Gaji Standar';
  1: Dataset.FieldByName('JenisNm').AsString:= 'Gaji 13';
  2: Dataset.FieldByName('JenisNm').AsString:= 'Uang Duka Wafat (UDW)';
  3: Dataset.FieldByName('JenisNm').AsString:= 'Uang Duka Tewas (UDT)';
  6: Dataset.FieldByName('JenisNm').AsString:= 'Gaji Terusan';
  else Dataset.FieldByName('JenisNm').AsString:= 'Invalid Data Gaji';
  end;
end;

procedure TfrmExport.qryJnsRapelCalcFields(DataSet: TDataSet);
begin
  case Dataset.FieldByName('Jenis').AsInteger of
  10: Dataset.FieldByName('JenisNm').AsString:= 'Gaji Pokok';
  11: Dataset.FieldByName('JenisNm').AsString:= 'Tunj. Struktural';
  12: Dataset.FieldByName('JenisNm').AsString:= 'Tunj. Fungsional';
  13: Dataset.FieldByName('JenisNm').AsString:= 'Tunj. Umum';
  14: Dataset.FieldByName('JenisNm').AsString:= 'Tunj. Beras';
  15: Dataset.FieldByName('JenisNm').AsString:= 'Kekurangan Gaji';
  else Dataset.FieldByName('JenisNm').AsString:= 'Invalid Data Rapel';
  end;
end;

procedure TfrmExport.qryJnsGajiAfterOpen(DataSet: TDataSet);
begin
  qryBulanGaji.Open;
end;

procedure TfrmExport.qryJnsGajiAfterClose(DataSet: TDataSet);
begin
  qryBulanGaji.Close;
end;

procedure TfrmExport.qryJnsRapelAfterOpen(DataSet: TDataSet);
begin
  qryBulanRapel.Open;
end;

procedure TfrmExport.qryJnsRapelAfterClose(DataSet: TDataSet);
begin
  qryBulanRapel.Close;
end;

procedure TfrmExport.tvGajiChange(Sender: TObject; Node: TTreeNode);
var DT: PTData;
begin
  JmlGaji.Caption:= '0';
  qryGajiEx.Close;
  if (Node.StateIndex=1) then
    begin
      DT:= PTData(Node.Data);
      qryGajiEx.SQL.Text:= 'select *, ExpOption=' + IntToStr(DT.OptIndex) +
            ' from pegawai_gaji g ' + DT.WhereGaji + ' order by Jenis, ' +
            '(case when g.jbt_strukturkd like ''99%'' then ''ZZZZ'' ' +
            'when g.jbt_strukturkd = '''' then ''ZZZZ'' ' +
            'when g.jbt_strukturkd is null then ''ZZZZ'' ' +
            'when g.jbt_fungsikd = '''' then ''ZZZZ'' ' +
            'when g.jbt_fungsikd is null then ''ZZZZ'' ' +
            'else g.jbt_strukturkd end) asc, g.golongankd desc, ' +
            'g.STS_PEGAWAIKD DESC, g.TMT_PEGAWAI ASC, g.MASAKERJA DESC ';
      try
        qryGajiEx.Open;
      except
      end;
    end;
end;

procedure TfrmExport.qryPegawaiAfterOpen(DataSet: TDataSet);
begin
  JmlPegawai.Caption:= IntToStr(Dataset.RecordCount);
end;

procedure TfrmExport.qryGajiExAfterOpen(DataSet: TDataSet);
begin
  JmlGaji.Caption:= IntToStr(Dataset.RecordCount);
end;

procedure TfrmExport.qryRapelExAfterOpen(DataSet: TDataSet);
begin
  JmlRapel.Caption:= IntToStr(Dataset.RecordCount);
end;

procedure TfrmExport.tvRapelChange(Sender: TObject; Node: TTreeNode);
var DT: PTData;
begin
  JmlRapel.Caption:= '0';
  qryRapelEx.Close;
  if (Node.StateIndex=1) then
    begin
      DT:= PTData(Node.Data);
      qryRapelEx.SQL.Text:= 'select *, ExpOption=' + IntToStr(DT.OptIndex) +
            ' from pegawai_gaji_rapel g ' + DT.WhereGaji + ' order by Jenis, ' +
            '(case when g.jbt_strukturkd like ''99%'' then ''ZZZZ'' ' +
            'when g.jbt_strukturkd = '''' then ''ZZZZ'' ' +
            'when g.jbt_strukturkd is null then ''ZZZZ'' ' +
            'when g.jbt_fungsikd = '''' then ''ZZZZ'' ' +
            'when g.jbt_fungsikd is null then ''ZZZZ'' ' +
            'else g.jbt_strukturkd end) asc, g.golongankd desc, ' +
            'g.STS_PEGAWAIKD DESC, g.TMT_PEGAWAI ASC, g.MASAKERJA DESC ';
      try
        qryRapelEx.Open;
      except
      end;
    end;
end;

procedure TfrmExport.btnExpPegawaiClick(Sender: TObject);
var Tg, Extns: Integer;
    F: String;
    Q: TADOQuery;
begin
  Tg:= TButton(Sender).Tag;
  if ((Tg<1) or (Tg>3)) then exit;
  F:= '';
  case Tg of
  1: Q:= qryPegawai;
  2: Q:= qryGajiEx;
  3: Q:= qryRapelEx;
  else exit;
  end;
  if ((not Q.Active) or (Q.IsEmpty)) then
    begin
      MessageDlg('Tidak ada yang dapat diexport.', mtWarning, [mbOK], 0);
      exit;
    end
  else
    begin
      SaveEx.FileName:= '';
      if (SaveEx.Execute) then F:= SaveEx.FileName;
      if (F='') then exit;
      try
        Extns:= SaveEx.FilterIndex;
        if (Extns=0) then Extns:= 1;
        if (Extns=1) then
          begin
            F:= AddExtention(F, 'gaji');
            Q.SaveToFile(F, pfADTG);
          end
        else if (Extns=2) then
          begin
            F:= AddExtention(F, 'xml');
            Q.SaveToFile(F, pfXML);
          end
        else
          Q.SaveToFile(F, pfADTG);
        MessageDlg('Data telah diexport.', mtInformation, [mbOK], 0);
      except
        on Ex: Exception do
          MessageDlg('Error...!!!' + #13#10 + Ex.Message, mtWarning, [mbOK], 0);
      end;
    end;
end;

end.
