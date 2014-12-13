unit _ExportGapo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, TFlatGaugeUnit, Buttons, DB, ADODB;

type
  TfrmExportGaji = class(TForm)
    Panel1: TPanel;
    TreeView1: TTreeView;
    Panel2: TPanel;
    ProgressImport: TFlatGauge;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dsGajiPokok: TDataSource;
    GajiPokok: TADOQuery;
    dsGolongan: TDataSource;
    Golongan: TADOQuery;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cGolKd: String;
    cMKG: Integer;
  end;

procedure ExportGapokDlg(CurGolKd: String; CurMKG: Integer);

var
  frmExportGaji: TfrmExportGaji;

implementation

{$R *.dfm}

uses GlobalModule;

procedure ExportGapokDlg(CurGolKd: String; CurMKG: Integer);
begin
  With TfrmExportGaji.Create(Nil) do
    begin
      cGolKd:= CurGolKd;
      cMKG:= CurMKG;
      ShowModal;
      Free;
    end;
end;

procedure TfrmExportGaji.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
