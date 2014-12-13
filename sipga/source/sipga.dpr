program SIPGA;



uses
  Forms,
  userver in 'units\userver.pas',
  GlobalModule in 'units\GlobalModule.pas' {GModule: TDataModule},
  _GajiDM in 'main\_GajiDM.pas' {dmGaji: TDataModule},
  PegawaiModule in 'units\PegawaiModule.pas' {DMPegawai: TDataModule},
  ReportsModule in 'units\ReportsModule.pas' {DMReports: TDataModule},
  MAin in 'main\Main.pas' {MainForm},
  _loginf in 'units\_loginf.pas' {FormLogin},
  dbCreate in 'units\dbCreate.pas' {frmDBCreate},
  _FMUser in 'units\_FMUser.pas' {frmUser},
  _chgpasswd in 'units\_chgpasswd.pas' {fChgPasswd},
  _usr_rightf in 'units\_usr_rightf.pas' {frmUR},
  _skpd in 'master\_skpd.pas' {frmSKPD},
  urusan in 'master\urusan.pas' {frmUrusan},
  _golongan in 'master\_golongan.pas' {frmGolongan},
  _fungsional in 'master\_fungsional.pas' {frmFungsional},
  _struktural in 'master\_struktural.pas' {frmStruktural},
  _gajipokok in 'master\_gajipokok.pas' {frmGajiPokok},
  _pegawai in 'main\_pegawai.pas' {frmPegawai},
  FRapelan in 'main\FRapelan.pas' {frmGajiRapel},
  _Status in 'master\_status.pas' {frmStatus},
  _Parameter in 'master\_parameter.pas' {frmParameter},
  FGajiInduk in 'main\FGajiInduk.pas' {frmGajiInduk},
  ReportFrm in 'FastReport\ReportFrm.pas' {frmFastReport},
  _jenisgaji in 'master\_jenisgaji.pas' {frmJenisGaji},
  _TunjUmum in 'master\_tunjumum.pas' {frmTunjUmum},
  _Taperum in 'master\_taperum.pas' {frmTaperum},
  _TunjOtsus in 'master\_tunjotsus.pas' {frmTunjOtsus},
  _tunjDT in 'master\_tunjDT.pas' {frmTunjDT},
  _guru in 'master\_guru.pas' {frmGuru},
  _aktif in 'master\_aktif.pas' {frmAktif},
  _proses in 'main\_proses.pas' {frmProses},
  _rapel in 'main\_rapel.pas' {frmRapel},
  CariPegawai in 'units\CariPegawai.pas' {frmCariPegawai},
  _tanggungan in 'main\_tanggungan.pas' {frmTanggungan},
  _Kekurangan in 'main\_Kekurangan.pas' {frmKurangGaji},
  _Export in 'units\_Export.pas' {frmExport},
  _Import in 'units\_Import.pas' {frmImport},
  _Terusan in 'main\_Terusan.pas' {frmTerusan},
  FMonitoringPensiun in 'main\FMonitoringPensiun.pas' {frmMonitorPensiun},
  FMonitorKGB in 'main\FMonitorKGB.pas' {frmMonitorKGB},
  FMonitoringAnakU21 in 'main\FMonitoringAnakU21.pas' {frmAnakU21},
  FMonitoringAnakU21Plus in 'main\FMonitoringAnakU21Plus.pas' {frmAnakU21Plus},
  FReportBUD in 'units\FReportBUD.pas' {frmReportBUD},
  FImportData in 'units\FImportData.pas' {frmImportPGW},
  FSKPP in 'main\FSKPP.pas' {frmSKPP},
  _ExportGapo in 'master\_ExportGapo.pas' {frmExportGaji},
  FRekapGaji in 'main\FRekapGaji.pas' {frmRekapGaji},
  FEditRekap in 'main\FEditRekap.pas' {frmEditRekap},
  FPrintRekapGaji in 'main\FPrintRekapGaji.pas' {frmPrintRekapGaji};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SIPGA';
  Application.CreateForm(TGModule, GModule);
  Application.CreateForm(TdmGaji, dmGaji);
  Application.CreateForm(TDMPegawai, DMPegawai);
  Application.CreateForm(TDMReports, DMReports);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.
