unit PilihSubPddk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TfrmPilihSub = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    btnOK: TButton;
    btnBatal: TButton;
    Label1: TLabel;
    eCari: TEdit;
    btnCari: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure PilihSubPendidikanDlg(AdoPgw: TADOQuery);

var
  frmPilihSub: TfrmPilihSub;

implementation

{$R *.dfm}

uses PegawaiModule;

procedure PilihSubPendidikanDlg(AdoPgw: TADOQuery);
var Mr: TModalResult;
begin
  if not (AdoPgw.Active) then exit;
  if not (AdoPgw.State in[dsInsert, dsEdit]) then exit;
  if (frmPilihSub=nil) then frmPilihSub:= TfrmPilihSub.Create(nil);
  Mr:= frmPilihSub.ShowModal;
  if (Mr=mrOK) then
    begin
      AdoPgw.FieldByName('SUB_UNIT').AsInteger:= DMPegawai.SubPddk.FieldByName('SUB_UNIT').AsInteger;
      AdoPgw.FieldByName('SUB').AsInteger:= DMPegawai.SubPddk.FieldByName('SUB').AsInteger;
    end;
  frmPilihSub.Free;
  frmPilihSub:= nil;
end;

procedure TfrmPilihSub.btnOKClick(Sender: TObject);
begin
  if not (DMPegawai.SubPddk.Active) then exit;
  if (DMPegawai.SubPddk.IsEmpty) then exit;
  ModalResult:= mrOK;
end;

procedure TfrmPilihSub.FormCreate(Sender: TObject);
begin
  DMPegawai.SubPddk.Filtered:= False;
  if (DMPegawai.SubPddk.Active) then DMPegawai.SubPddk.Requery()
  else DMPegawai.SubPddk.Open;
end;

procedure TfrmPilihSub.btnCariClick(Sender: TObject);
begin
  if (eCari.Text='') then
    DMPegawai.SubPddk.Filtered:= False
  else
    begin
      DMPegawai.SubPddk.Filter:= 'NM_SUB LIKE ' + QuotedStr('%' + eCari.Text + '%');
      DMPegawai.SubPddk.Filtered:= True;
    end;
end;

procedure TfrmPilihSub.eCariChange(Sender: TObject);
begin
  btnCari.Click;
end;

end.
