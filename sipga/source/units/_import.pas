unit _Import;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DBCtrls,
  ImgList;

type
  TfrmImport = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    qryImport: TADOQuery;
    dsImport: TDataSource;
    Label1: TLabel;
    eFile: TEdit;
    OpenEx: TOpenDialog;
    btnOpen: TButton;
    Label2: TLabel;
    LbJenis: TLabel;
    qryPegawai: TADOQuery;
    qryJenis: TADOQuery;
    qryGaji: TADOQuery;
    Panel5: TPanel;
    Label4: TLabel;
    Panel7: TPanel;
    DBNav: TDBNavigator;
    btnTutup: TButton;
    btnImport: TButton;
    PBProses: TProgressBar;
    LbImported: TLabel;
    LbJumlah: TLabel;
    Memo1: TMemo;
    dsJenis: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    dsGaji: TDataSource;
    ckPGWSaja: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure qryImportAfterOpen(DataSet: TDataSet);
    procedure qryImportAfterClose(DataSet: TDataSet);
    procedure btnImportClick(Sender: TObject);
    procedure qryJenisAfterClose(DataSet: TDataSet);
    procedure qryJenisAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    JnsData: Integer;
    procedure EnableImport;
    procedure UpdateCaption;
    procedure EnableProses(V: Boolean);
  public
    { Public declarations }
  end;

procedure ImportDlg;

var
  frmImport: TfrmImport;

implementation

{$R *.dfm}

uses GlobalModule;

procedure ImportDlg;
begin
  if (frmImport=nil) then frmImport:=TfrmImport.Create(nil);
  frmImport.ShowModal;
  frmImport:=nil;
end;

procedure TfrmImport.UpdateCaption;
var Jns: Integer;
    C: String;
begin
  LbJenis.Caption:= '';
  ckPGWSaja.Visible:= False;
  if not(qryImport.Active) then exit;
  if (qryImport.IsEmpty) then exit;
  Jns:= qryImport.FieldByName('ExpOption').AsInteger;
  if (Jns=100) then
    C:= 'Master Pegawai'
  else
    begin
      case Jns of
      -1  : C:= 'Semua Daftar Gaji (Standar, Terusan, Gaji-13, UDT / UDW)';
      -2  : C:= 'Semua Daftar Rapel dan Kekurangan Gaji';
      0   : C:= 'Gaji Induk (Standar)';
      1   : C:= 'Gaji 13';
      2   : C:= 'Uang Duka Wafat (UDW)';
      3   : C:= 'Uang Duka Tewas (UDT)';
      6   : C:= 'Gaji Terusan';
      10  : C:= 'Rapel Gaji Pokok';
      11  : C:= 'Rapel Tunj. Struktural';
      12  : C:= 'Rapel Tunj. Fungsional';
      13  : C:= 'Rapel Tunj. Umum';
      14  : C:= 'Rapel Tunj. Beras';
      15  : C:= 'Rapel Kekurangan Gaji';
      else  C:= 'Jenis Tidak Diketahui';
      end;
    end;
  JnsData:= Jns;
  LbJenis.Caption:= C;
  ckPGWSaja.Visible:= (JnsData<>100);
end;

procedure TfrmImport.EnableImport;
begin
  if not(qryImport.Active) then
    btnImport.Enabled:= False
  else
    btnImport.Enabled:= not(qryImport.IsEmpty);
end;

procedure TfrmImport.EnableProses(V: Boolean);
begin
  Panel3.Enabled:= V;
  btnImport.Enabled:= V;
  btnTutup.Enabled:= V;
  btnOpen.Enabled:= V;
  DBNav.Enabled:= V;
  ckPGWSaja.Enabled:= V;
end;

procedure TfrmImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmImport.FormShow(Sender: TObject);
begin
  {try
    qryPegawai.Open;
  except
  end; }
  EnableImport;
  UpdateCaption;
end;

procedure TfrmImport.btnOpenClick(Sender: TObject);
var F: String;
begin
  F:= '';
  OpenEx.FileName:= '';
  if (OpenEx.Execute) then F:= OpenEx.FileName;
  if (F='') then exit;
  eFile.Text:= F;
  qryImport.Close;
  ckPGWSaja.Checked:= False;
  try
    qryImport.LoadFromFile(F);
    qryImport.Open;
    Memo1.Clear;
  except
    on Ex: Exception do
      begin
        MessageDlg('Error...!!!' + #13#10 + eX.Message + #13#10 + #13#10 +
          'File gaji tidak dapat dibuka.', mtError, [mbOK], 0);
        Memo1.Lines.Add('Error : ' + Ex.Message + ';');
      end;
  end;
end;

procedure TfrmImport.qryImportAfterOpen(DataSet: TDataSet);
begin
  EnableImport;
  UpdateCaption;
  LbJumlah.Caption:= 'Jumlah Data : ' + IntToStr(qryImport.RecordCount);
  LbImported.Caption:= 'Berhasil Diimport : 0';
  qryPegawai.Open;
end;

procedure TfrmImport.qryImportAfterClose(DataSet: TDataSet);
begin
  EnableImport;
  UpdateCaption;
  LbJumlah.Caption:= 'Jumlah Data : 0';
  LbImported.Caption:= 'Berhasil Diimport : 0';
  qryPegawai.Close;
end;

procedure TfrmImport.btnImportClick(Sender: TObject);
const jGaji = 'select * from pegawai_gaji_jenis';
      tmGaji = 'select * from pegawai_gaji where nip=''0000''';
      jRapel = 'select * from pegawai_rapel_jenis';
      dGaji = 'select * from pegawai_gaji where jenis=:jenis ' +
                          'and bulan=:bulan and tahun=:tahun';
      tmRapel = 'select * from pegawai_gaji_rapel where nip=''0000''';
      dRapel = 'select * from pegawai_gaji_rapel where ' +
                          'jenis=:jenis and tm_bulan=:tm_bulan and tm_tahun=:tm_tahun ' +
                          'and bulan=:bulan and tahun=:tahun';
var I, N, F, SuksGJ, SuksPGW, ErGJ, ErPGW: Integer;
    Fld, slFields, SS, sData: String;
    ImError: Boolean;
    IsRapel, B, PegawaiSaja: Boolean;
label akhiri;
begin
  if (not qryImport.Active) then exit;
  if (not qryPegawai.Active) then exit;
  if not(MessageDlg('Import Semua Data ???', mtConfirmation, [mbYes, mbNo], 0)=IDYES) then exit;
  PegawaiSaja:= (ckPGWSaja.Checked) or (JnsData = 100);
  DBGrid1.SetFocus;
  Memo1.Clear;
  Memo1.Lines.Add('Import Started');
  Memo1.Lines.Add('==============');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Jumlah Data = ' + IntToStr(qryImport.RecordCount));
  Memo1.Lines.Add('');
  if (PegawaiSaja) then
    begin
      Memo1.Lines.Add('Sukses Import = 0');
      Memo1.Lines.Add('Error Import = 0');
    end
  else
    begin
      Memo1.Lines.Add('Sukses Import Pegawai = 0');
      Memo1.Lines.Add('Error Import Pegawai = 0');
      Memo1.Lines.Add('----------------------------------------------');
      case JnsData of
      -1, 0, 1, 2, 3, 6 :
          begin
            Memo1.Lines.Add('Sukses Import Gaji = 0');
            Memo1.Lines.Add('Error Import Gaji = 0');
            sData:= 'Gaji';
          end;
      -2, 10,11,12,13,14,15 :
        begin
          Memo1.Lines.Add('Sukses Import Rapel = 0');
          Memo1.Lines.Add('Error Import Rapel = 0');
          sData:= 'Rapel';
        end;
      else
        begin
          Memo1.Lines.Add('');
          Memo1.Lines.Add('');
        end;
      end;
    end;
  qryJenis.Close;
  ImError:= False;
  SuksGJ:= 0;
  SuksPGW:= 0;
  ErGJ:= 0;
  ErPGW:= 0;
  SS:= '';
  PBProses.Min:= 0;
  PBProses.Max:= qryImport.RecordCount;
  PBProses.Position:= 0;
  LbImported.Caption:= '';
  EnableProses(False);
  if (not ImError) then
    begin
      if (JnsData=100) then
        begin
          qryImport.First;
          while not qryImport.Eof do
            begin
              F:= qryPegawai.FieldCount;
              qryPegawai.Edit;
              for I:= 0 to F - 1 do
                begin
                  Fld:= qryPegawai.Fields[I].FieldName;
                  try
                    if ((UpperCase(Fld)<>'NIP') and (qryImport.FindField(Fld)<>nil)) then
                          qryPegawai.Fields[I].Value:= qryImport.FieldByName(Fld).Value;
                  except end;
                end;
              try
                qryPegawai.Post;
                SuksPGW:= SuksPGW + 1;
              except
                begin
                  ErPGW:= ErPGW + 1;
                end;
              end;
              Memo1.Lines[5]:= 'Sukses Import = ' + IntToStr(SuksPGW);
              Memo1.Lines[6]:= 'Error Import = ' + IntToStr(ErPGW);
              PBProses.Position:= PBProses.Position + 1;
              LbImported.Caption:= 'Berhasil Diimport : ' + IntToStr(SuksPGW);
              Application.ProcessMessages;
              qryImport.Next;
            end;
        end
      else
        begin
          qryJenis.Close;
          case JnsData of
            -1  : begin
                    qryJenis.SQL.Text:= jGaji;
                    qryGaji.SQL.Text:= dGaji;
                    IsRapel:= False;
                  end;
            -2  : begin
                    qryJenis.SQL.Text:= jRapel;
                    qryGaji.SQL.Text:= dRapel;
                    IsRapel:= True;
                  end;
            0,1,2,3,6  :
                        begin
                          qryJenis.SQL.Text:= jGaji + ' where jenis=' + IntToStr(JnsData);
                          qryGaji.SQL.Text:= dGaji;
                          IsRapel:= False;
                        end;
            10,11,12,13,14,15 :
                  begin
                    qryJenis.SQL.Text:= jRapel + ' where jenis=' + IntToStr(JnsData);
                    qryGaji.SQL.Text:= dRapel;
                    IsRapel:= True;
                  end;
            else goto akhiri;
          end;
          try
            qryJenis.Open;
            qryImport.First;
            while not qryImport.Eof do
              begin
                qryJenis.Requery;
                ImError:= False;
                if (not PegawaiSaja) then
                  begin
                    if (IsRapel) then
                      begin
                        slFields:= 'jenis;tm_bulan;tm_tahun;bulan;tahun';
                        B:= qryJenis.Locate(slFields, VarArrayOf([IntToStr(qryImport.FieldByName('Jenis').AsInteger),
                          qryImport.FieldByName('TM_Bulan').AsString,
                          qryImport.FieldByName('TM_Tahun').AsString,
                          qryImport.FieldByName('Bulan').AsString,
                          qryImport.FieldByName('Tahun').AsString]), []);
                      end
                    else
                      begin
                        slFields:= 'jenis;bulan;tahun';
                        B:= qryJenis.Locate(slFields, VarArrayOf([IntToStr(qryImport.FieldByName('Jenis').AsInteger),
                          qryImport.FieldByName('Bulan').AsString,
                          qryImport.FieldByName('Tahun').AsString]), []);
                      end;
                    if (not B) then
                      begin
                        qryJenis.Append;
                        qryJenis.FieldByName('Jenis').AsInteger:= qryImport.FieldByName('jenis').AsInteger;
                        qryJenis.FieldByName('Bulan').AsString:= qryImport.FieldByName('Bulan').AsString;
                        qryJenis.FieldByName('Tahun').AsString:= qryImport.FieldByName('Tahun').AsString;
                        if (IsRapel) then
                          begin
                            qryJenis.FieldByName('TM_Bulan').AsString:= qryImport.FieldByName('TM_Bulan').AsString;
                            qryJenis.FieldByName('TM_Tahun').AsString:= qryImport.FieldByName('TM_Tahun').AsString;
                          end;
                        try
                          qryJenis.Post;
                          SuksGJ:= SuksGJ + 1;
                        except
                          begin
                            ErGJ:= ErGJ + 1;
                            ImError:= True;
                          end;
                        end;
                      end;
                  end;
                if (not ImError) then
                  begin
                    F:= qryPegawai.FieldCount;
                    qryPegawai.Edit ;
                    for I:= 0 to F - 1 do
                      begin
                        Fld:= qryPegawai.Fields[I].FieldName;
                        if ((UpperCase(Fld)<>'NIP') and (qryImport.FindField(Fld)<>nil)) then
                          qryPegawai.Fields[I].Value:= qryImport.FieldByName(Fld).Value;
                      end;
                    try
                      qryPegawai.Post;
                      SuksPGW:= SuksPGW + 1;
                    except
                      ErPGW:= ErPGW + 1;
                    end;
                    if (not PegawaiSaja) then
                      begin
                        N:= qryGaji.FieldCount;
                        if (IsRapel) then
                          B:= qryGaji.Locate(slFields + ';nip', VarArrayOf([IntToStr(qryImport.FieldByName('Jenis').AsInteger),
                            qryImport.FieldByName('TM_Bulan').AsString,
                            qryImport.FieldByName('TM_Tahun').AsString,
                            qryImport.FieldByName('Bulan').AsString,
                            qryImport.FieldByName('Tahun').AsString,
                            qryImport.FieldByName('nip').AsString]), [])
                        else
                          B:= qryGaji.Locate(slFields + ';nip', VarArrayOf([IntToStr(qryImport.FieldByName('Jenis').AsInteger),
                            qryImport.FieldByName('Bulan').AsString,
                            qryImport.FieldByName('Tahun').AsString,
                            qryImport.FieldByName('nip').AsString]), []);
                        if (B) then
                          qryGaji.Edit
                        else
                          qryGaji.Append;
                        for I:= 0 to N - 1 do
                          begin
                            Fld:= qryGaji.Fields[I].FieldName;
                            if (qryImport.FindField(Fld)<>nil) then
                              qryGaji.FieldByName(Fld).Value:= qryImport.FieldByName(Fld).Value;
                          end;
                        try
                          qryGaji.Post;
                          SuksGJ:= SuksGJ + 1;
                        except
                          ErGJ:= ErGJ + 1;
                        end;
                      end;
                    if (PegawaiSaja) then
                      begin
                        Memo1.Lines[5]:= 'Sukses Import = ' + IntToStr(SuksPGW);
                        Memo1.Lines[6]:= 'Error Import = ' + IntToStr(ErPGW);
                        LbImported.Caption:= 'Berhasil Diimport : ' + IntToStr(SuksPGW);
                      end
                    else
                      begin
                        Memo1.Lines[5]:= 'Sukses Import Pegawai = ' + IntToStr(SuksPGW);
                        Memo1.Lines[6]:= 'Error Import Pegawai = ' + IntToStr(ErPGW);
                        Memo1.Lines[8]:= 'Sukses Import ' + sData + ' = ' + IntToStr(SuksGJ);
                        Memo1.Lines[9]:= 'Error Import ' + sData + ' = ' + IntToStr(ErGJ);
                        LbImported.Caption:= 'Berhasil Import Pegawai : ' + IntToStr(SuksPGW) +
                            '; Berhasil Import ' + sData + ' : ' + IntToStr(SuksGJ);
                      end;
                    PBProses.Position:= PBProses.Position + 1;
                    Application.ProcessMessages;
                    qryImport.Next;
                  end;
              end;
          except
            begin
              Memo1.Lines.Add('======================');
              if (IsRapel) then
                Memo1.Lines.Add('Erro Buka Data Rapel')
              else
                Memo1.Lines.Add('Erro Buka Data Gaji');
            end;
          end;
        end;
    end;
  akhiri:
  //if (Er=0) then
  //  MessageDlg('Import berhasil (' + IntToStr(Suks) + ')', mtInformation, [mbOK], 0)
  //else
  //  MessageDlg('Import berhasil (' + IntToStr(Suks) + ')' + #13 +
  //            'Import Error (' + IntToStr(Er) + ')', mtWarning, [mbOK], 0);
  MessageDlg('Import Selesai.', mtInformation, [mbOK], 0);
  Memo1.Lines.Add('');
  Memo1.Lines.Add('==============');
  Memo1.Lines.Add('Import Finish');
  //PBProses.Position:= 0;
  EnableProses(True);
end;

procedure TfrmImport.qryJenisAfterClose(DataSet: TDataSet);
begin
  qryGaji.Close;
end;

procedure TfrmImport.qryJenisAfterOpen(DataSet: TDataSet);
begin
  if (qryGaji.Active) then qryGaji.Requery()
  else qryGaji.Open;
end;

end.
