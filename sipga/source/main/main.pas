unit MAin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, ComCtrls, DB, ADODB, RxGIF;

type
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    FileMenu: TMenuItem;
    Logout1: TMenuItem;
    N7: TMenuItem;
    SettingTandaTangan1: TMenuItem;
    UserManajemen1: TMenuItem;
    UbahPassword1: TMenuItem;
    N1: TMenuItem;
    N23: TMenuItem;
    FileExitItem: TMenuItem;
    WindowMenu: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpMenu: TMenuItem;
    HelpContentsItem: TMenuItem;
    HelpSearchItem: TMenuItem;
    HelpHowToUseItem: TMenuItem;
    N3: TMenuItem;
    HelpAboutItem: TMenuItem;
    SpeedBar: TPanel;
    lblTA: TLabel;
    GL1: TMenuItem;
    lblModule: TLabel;
    SKPD1: TMenuItem;
    Urusan1: TMenuItem;
    N2: TMenuItem;
    Golongan1: TMenuItem;
    JabatanStruktural1: TMenuItem;
    JabatanFungsional1: TMenuItem;
    GajiPokok1: TMenuItem;
    Pegawai1: TMenuItem;
    N5: TMenuItem;
    Status1: TMenuItem;
    Parameter1: TMenuItem;
    Proses1: TMenuItem;
    GajiBulanan1: TMenuItem;
    RapelGaji1: TMenuItem;
    Report1: TMenuItem;
    N4: TMenuItem;
    KekuranganGaji1: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    unjanganUmum1: TMenuItem;
    aperum1: TMenuItem;
    unjanganOtsus1: TMenuItem;
    unjanganDaerahTertinggal1: TMenuItem;
    N10: TMenuItem;
    unjanganResikoKerja1: TMenuItem;
    KodeGuruLamaKerja1: TMenuItem;
    JenisGaji1: TMenuItem;
    StatusAktif1: TMenuItem;
    N11: TMenuItem;
    SKPP1: TMenuItem;
    N12: TMenuItem;
    ExportImport1: TMenuItem;
    Export1: TMenuItem;
    Import1: TMenuItem;
    GajiTerusan1: TMenuItem;
    qrySKPD: TADOQuery;
    Panel1: TPanel;
    Monitoring1: TMenuItem;
    PegawaiPensiun1: TMenuItem;
    N13: TMenuItem;
    AnakDewasaU211: TMenuItem;
    AnakDewasaU212: TMenuItem;
    N14: TMenuItem;
    KandidatKGB1: TMenuItem;
    Gaji1: TMenuItem;
    Induk1: TMenuItem;
    erusan1: TMenuItem;
    Gaji131: TMenuItem;
    UDW1: TMenuItem;
    UDT1: TMenuItem;
    lbTitle: TLabel;
    Image1: TImage;
    N15: TMenuItem;
    GajiSusulan1: TMenuItem;
    Rapel1: TMenuItem;
    KenaikanGajiPokok1: TMenuItem;
    N16: TMenuItem;
    unjJabStruktur1: TMenuItem;
    unjJabFunsional1: TMenuItem;
    unjUmum1: TMenuItem;
    unjBeras1: TMenuItem;
    N17: TMenuItem;
    KenaikanCPNSPNS1: TMenuItem;
    KenaikanGajiBerkalaKGB1: TMenuItem;
    PerubahanStatusSipil1: TMenuItem;
    KenaikanGolongan1: TMenuItem;
    Panel2: TPanel;
    StBarUser: TPanel;
    StBarDB: TPanel;
    Laporan1: TMenuItem;
    RealisasiGajiIndukBUD1: TMenuItem;
    N18: TMenuItem;
    KomposisiPegawai1: TMenuItem;
    KomposisiGuru1: TMenuItem;
    KomposisiFungsionalDINKES1: TMenuItem;
    N19: TMenuItem;
    SeluruhPegawai1: TMenuItem;
    N20: TMenuItem;
    Pergolongan1: TMenuItem;
    Askes1: TMenuItem;
    Pajak1: TMenuItem;
    SKPD2: TMenuItem;
    BPKAD1: TMenuItem;
    SKPD3: TMenuItem;
    BPKAD2: TMenuItem;
    N21: TMenuItem;
    RekapitulasiGaji1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure UbahPassword1Click(Sender: TObject);
    procedure FileExitItemClick(Sender: TObject);
    procedure UserManajemen1Click(Sender: TObject);
    procedure SKPD1Click(Sender: TObject);
    procedure Urusan1Click(Sender: TObject);
    procedure Golongan1Click(Sender: TObject);
    procedure GajiPokok1Click(Sender: TObject);
    procedure JabatanStruktural1Click(Sender: TObject);
    procedure JabatanFungsional1Click(Sender: TObject);
    procedure Pegawai1Click(Sender: TObject);
    procedure Status1Click(Sender: TObject);
    procedure Parameter1Click(Sender: TObject);
    procedure Report1Click(Sender: TObject);
    procedure JenisGaji1Click(Sender: TObject);
    procedure unjanganUmum1Click(Sender: TObject);
    procedure unjanganResikoKerja1Click(Sender: TObject);
    procedure unjanganOtsus1Click(Sender: TObject);
    procedure unjanganDaerahTertinggal1Click(Sender: TObject);
    procedure aperum1Click(Sender: TObject);
    procedure KodeGuruLamaKerja1Click(Sender: TObject);
    procedure StatusAktif1Click(Sender: TObject);
    procedure GajiBulanan1Click(Sender: TObject);
    procedure RapelGaji1Click(Sender: TObject);
    procedure KekuranganGaji1Click(Sender: TObject);
    procedure SKPP1Click(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure Import1Click(Sender: TObject);
    procedure GajiTerusan1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Induk1Click(Sender: TObject);
    procedure erusan1Click(Sender: TObject);
    procedure Gaji131Click(Sender: TObject);
    procedure UDW1Click(Sender: TObject);
    procedure UDT1Click(Sender: TObject);
    procedure KenaikanGajiPokok1Click(Sender: TObject);
    procedure unjJabStruktur1Click(Sender: TObject);
    procedure unjJabFunsional1Click(Sender: TObject);
    procedure unjUmum1Click(Sender: TObject);
    procedure unjBeras1Click(Sender: TObject);
    procedure KenaikanCPNSPNS1Click(Sender: TObject);
    procedure KenaikanGajiBerkalaKGB1Click(Sender: TObject);
    procedure PerubahanStatusSipil1Click(Sender: TObject);
    procedure KenaikanGolongan1Click(Sender: TObject);
    procedure GajiSusulan1Click(Sender: TObject);
    procedure PegawaiPensiun1Click(Sender: TObject);
    procedure KandidatKGB1Click(Sender: TObject);
    procedure AnakDewasaU211Click(Sender: TObject);
    procedure AnakDewasaU212Click(Sender: TObject);
    procedure SeluruhPegawai1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RekapitulasiGaji1Click(Sender: TObject);
  private
    { Private declarations }
    procedure MDIChildClose;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses GlobalModule, _loginf, _chgpasswd, _FMUser, //_usr_rightf,
  _skpd, urusan,
  _golongan, _fungsional, _struktural, _gajipokok, _pegawai, _Status,
  _Parameter, ReportFrm, _jenisgaji, _TunjUmum, _Taperum, _tunjDT,
  _TunjOtsus, _guru, _aktif, _proses, _rapel, _Kekurangan, _Export, _Import, _Terusan,
  FGajiInduk, FRapelan, FMonitoringPensiun, FMonitorKGB, FMonitoringAnakU21,
  FMonitoringAnakU21Plus, FReportBUD, FSKPP, FRekapGaji;

{$R *.dfm}

Procedure TMainForm.MDIChildClose;
var
  i:integer;

begin
  For I:=0 To MDIChildCount-1 do
    MDIChildren[i].Free;
end;


procedure TMainForm.FormCreate(Sender: TObject);
begin
  GModule.LoginDlg('sa','supersa'); ///
end;

procedure TMainForm.FormShow(Sender: TObject);
var Judul: String;
begin
  qrySKPD.Close;
  StBarUser.Caption:= 'User: '+GModule.UserNm;
  StBarDB.Caption:= 'Database: '+ Gmodule.SetDB.ServerName + '\' + GModule.SetDB.Catalog;
  GModule.OpenSQL('SELECT * FROM tblTahun WHERE (Tahun='''+GModule.Tahun+''')');
  If GModule.FQuery.IsEmpty then
  begin
    GModule.FQuery.Append;
    GModule.FQuery.FieldByName('Tahun').AsString:=GModule.Tahun;
    try
      GModule.FQuery.Post;
    except
      on e:exception do
      begin
         showmessage('Tidak dapat menambah tahun anggaran' + #13#10 + e.Message);
         GModule.Tahun:='';
      end;
    end;
  end;
  Caption:= 'Sistem Informasi Pengelolaan Gaji (SIPGA) TA : ' + GModule.Tahun;
  lblTA.Caption:= '';   
  lblModule.Caption:= '';
  Judul:= 'Sistem Informasi Pengelolaan Gaji Pegawai Negeri Sipil';
  if (Not (GModule.IsAllSKPD)) then
    begin
      qrySKPD.Open;
      if (qrySKPD.Locate('unitkd', GModule.UnitKd, [])) then
        begin
          Judul:= Judul + #13#10 + qrySKPD.FieldByName('UnitNm').AsString;
        end;
    end;
  Judul:= Judul + #13#10 + 'Kabupaten Tangerang' + #13#10 + 'Tahun Anggaran ' + GModule.Tahun;
  lbTitle.Caption:= Judul;
  WindowState:= wsMaximized;
  GModule.UpdateParameter(GModule.Tahun);

  N21.Visible:= (GModule.UserGroupId=1); //or ((GModule.UnitKd='1.01.01') and (GModule.UserGroupId=2)));
  RekapitulasiGaji1.Visible:= (GModule.UserGroupId=1); //or ((GModule.UnitKd='1.01.01') and (GModule.UserGroupId=2)));
end;

procedure TMainForm.Logout1Click(Sender: TObject);
begin
  MDIChildClose;
  LoginDlg;
end;

procedure TMainForm.UbahPassword1Click(Sender: TObject);
begin
   ChgPasswdDlg;

end;

procedure TMainForm.FileExitItemClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.UserManajemen1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Manajemen User"', mtWarning, [mbOK], 0);
      exit;
    end;
   {With TfrmUR.Create(Nil) do
   begin
     showmodal;
     free;
   end;
    }
   MngUserDlg;
end;

procedure TMainForm.SKPD1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "SKPD"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  SKPDDlg;
end;

procedure TMainForm.Urusan1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
  begin
      MessageDlg('Hanya administrator yang dapat membuka form "Urusan"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  UrusanDlg;

end;

procedure TMainForm.Golongan1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Golongan"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  GolonganDlg;

end;

procedure TMainForm.GajiPokok1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Gaji Pokok"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  GajiPokokDlg;
end;

procedure TMainForm.JabatanStruktural1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Jabatan Struktural"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  StrukturalDlg;
end;

procedure TMainForm.JabatanFungsional1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Tunjangan Fungsional"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  FungsionalDlg;
end;

procedure TMainForm.Pegawai1Click(Sender: TObject);
begin
  MDIChildClose;
  PegawaiDlg;
end;

procedure TMainForm.Status1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Status Pegawai"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  StatusDlg;
end;

procedure TMainForm.Parameter1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
  begin
      MessageDlg('Hanya administrator yang dapat membuka form "Parameter"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  ParameterDlg;
end;

procedure TMainForm.Report1Click(Sender: TObject);
begin
  MDIChildClose;
  TfrmFastReport.Create(Nil);
end;

procedure TMainForm.JenisGaji1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
  begin
      MessageDlg('Hanya administrator yang dapat membuka form "Jenis Gaji"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  JenisGajiDlg;
end;

procedure TMainForm.unjanganUmum1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Tunjangan Umum"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  TunjUmumDlg;

end;

procedure TMainForm.unjanganResikoKerja1Click(Sender: TObject);
begin
  //if not gmodule.IsAdmin then exit;
  //MDIChildClose;
  //TunjResikoDlg;

end;

procedure TMainForm.unjanganOtsus1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Tunjangan Otsus"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  TunjOtsusDlg;
end;

procedure TMainForm.unjanganDaerahTertinggal1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Tunjangan Daerah Tertinggal"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  TunjDTDlg;

end;

procedure TMainForm.aperum1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Taperum"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  TaperumDlg;

end;

procedure TMainForm.KodeGuruLamaKerja1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Kode Guru"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  GuruDlg;

end;

procedure TMainForm.StatusAktif1Click(Sender: TObject);
begin
  if not gmodule.IsAdmin then
    begin
      MessageDlg('Hanya administrator yang dapat membuka form "Status Aktif"', mtWarning, [mbOK], 0);
      exit;
    end;
  MDIChildClose;
  AktifDlg;
end;

procedure TMainForm.GajiBulanan1Click(Sender: TObject);
begin
  MDIChildClose;
  prosesdlg;
end;

procedure TMainForm.RapelGaji1Click(Sender: TObject);
begin
  MDIChildClose;
  Rapeldlg;
end;

procedure TMainForm.KekuranganGaji1Click(Sender: TObject);
begin
  MDIChildClose;
  Kekurangandlg;
end;

procedure TMainForm.SKPP1Click(Sender: TObject);
begin
  MDIChildClose;
  SKPPDlg;
end;

procedure TMainForm.Export1Click(Sender: TObject);
begin
//  MDIChildClose;
  //ExportDlg;
  //ShowMessage('Masih dalam perbaikan.');
end;

procedure TMainForm.Import1Click(Sender: TObject);
begin
  //MDIChildClose;
  //ImportDlg;
  //ShowMessage('Masih dalam perbaikan.');
end;

procedure TMainForm.GajiTerusan1Click(Sender: TObject);
begin
  MDIChildClose;
  TerusanDlg;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
  Application.Terminate;
end;

procedure TMainForm.Induk1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiIndukDlg(0);
end;

procedure TMainForm.erusan1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiIndukDlg(6);
end;

procedure TMainForm.Gaji131Click(Sender: TObject);
begin
  MDIChildClose;
  GajiIndukDlg(1);
end;

procedure TMainForm.UDW1Click(Sender: TObject);
begin
  MDIChildClose;               
  GajiIndukDlg(2);
end;

procedure TMainForm.UDT1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiIndukDlg(3);
end;

procedure TMainForm.KenaikanGajiPokok1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(10);
end;

procedure TMainForm.unjJabStruktur1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(11);
end;

procedure TMainForm.unjJabFunsional1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(12);
end;

procedure TMainForm.unjUmum1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(13);
end;

procedure TMainForm.unjBeras1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(14);
end;

procedure TMainForm.KenaikanCPNSPNS1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(15);
end;

procedure TMainForm.KenaikanGajiBerkalaKGB1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(16);
end;

procedure TMainForm.PerubahanStatusSipil1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(17);
end;

procedure TMainForm.KenaikanGolongan1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(18);
end;

procedure TMainForm.GajiSusulan1Click(Sender: TObject);
begin
  MDIChildClose;
  GajiRapelDlg(19);
end;

procedure TMainForm.PegawaiPensiun1Click(Sender: TObject);
begin
  MDIChildClose;
  MonitoringPensiunDlg;
end;

procedure TMainForm.KandidatKGB1Click(Sender: TObject);
begin
  MDIChildClose;
  MonitoringKGBDlg;
end;

procedure TMainForm.AnakDewasaU211Click(Sender: TObject);
begin
  MDIChildClose;
  MonitoringAnakU21Dlg;
end;

procedure TMainForm.AnakDewasaU212Click(Sender: TObject);
begin
  MDIChildClose;
  MonitoringAnakU21PlusDlg;
end;

procedure TMainForm.SeluruhPegawai1Click(Sender: TObject);
begin
  ShowReportBUD(TMenuItem(Sender).Tag);
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  MDIChildClose;
end;

procedure TMainForm.RekapitulasiGaji1Click(Sender: TObject);
begin
  MDIChildClose;
  RekapGajiDlg;
end;

end.
