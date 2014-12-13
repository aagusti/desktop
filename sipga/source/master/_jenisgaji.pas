unit _JenisGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  Mask;

type
  TfrmJenisGaji = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsJenisGaji: TDataSource;
    JenisGaji: TADOQuery;
    DBGrid1: TDBGrid;
    JenisGajiJenis_KD: TStringField;
    JenisGajiUraian: TStringField;
    JenisGajiGaji_Pokok: TBooleanField;
    JenisGajiTunj_Anak: TBooleanField;
    JenisGajiTunj_Istri: TBooleanField;
    JenisGajiTunj_Struktural: TBooleanField;
    JenisGajiTunj_Fungsional: TBooleanField;
    JenisGajiTunj_Beras: TBooleanField;
    JenisGajiTunj_Umum: TBooleanField;
    JenisGajiTunj_Umum_Tambah: TBooleanField;
    JenisGajiTunj_Otsus: TBooleanField;
    JenisGajiTunj_DT: TBooleanField;
    JenisGajiTunj_Askes: TBooleanField;
    JenisGajiTunj_Kerja: TBooleanField;
    JenisGajiTunj_PP: TBooleanField;
    JenisGajiPot_IWP: TBooleanField;
    JenisGajiPot_Taperum: TBooleanField;
    JenisGajiPot_SewaRumah: TBooleanField;
    JenisGajiPot_Pangan: TBooleanField;
    JenisGajiPot_Korpri: TBooleanField;
    JenisGajiPot_Gaji: TBooleanField;
    JenisGajiPot_Hutang: TBooleanField;
    JenisGajiPembulatan: TBooleanField;
    JenisGajiPPh: TBooleanField;
    JenisGajiAccress: TBCDField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JenisGajiAfterOpen(DataSet: TDataSet);
    procedure JenisGajiBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure JenisGajiDlg;

var
  frmJenisGaji: TfrmJenisGaji;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure JenisGajiDlg;
begin
  With TfrmJenisGaji.Create(Nil) do
  begin
    if JenisGaji.Active then
      JenisGaji.Requery()
    else
      JenisGaji.Open;
    ShowModal;
  end;
end;

procedure TfrmJenisGaji.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmJenisGaji.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmJenisGaji.JenisGajiAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  JenisGaji do
  begin

    for I:= 0 to FieldCount - 1 do
    begin
      if (Fields[i].DataType = ftFloat) then
      begin
        TFloatField(Fields[i]).EditFormat := '0.0';
        TFloatField(Fields[i]).DisplayFormat := '#,0.0';
      end
      else  if (Fields[i].DataType = ftInteger) then
      begin
        TIntegerField(Fields[i]).EditFormat := '0';
        TIntegerField(Fields[i]).DisplayFormat := '#,0';
      end;
      if (UpperCase(Fields[i].FieldName) = 'POSTED') then
        TBooleanField(Fields[i]).DisplayValues := 'POSTED';

    end;
  end;

end;

procedure TfrmJenisGaji.JenisGajiBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

end.

