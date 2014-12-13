unit _Parameter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  Mask;

type
  TfrmParameter = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsParameter: TDataSource;
    Parameter: TADOQuery;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label10: TLabel;
    DBEdit20: TDBEdit;
    Label1: TLabel;
    DBEdit21: TDBEdit;
    Label18: TLabel;
    DBEdit22: TDBEdit;
    Label19: TLabel;
    DBEdit23: TDBEdit;
    Label20: TLabel;
    DBEdit24: TDBEdit;
    Label21: TLabel;
    DBEdit25: TDBEdit;
    Label22: TLabel;
    DBEdit26: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit27: TDBEdit;
    DBCheckBox1: TDBCheckBox;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ParameterAfterOpen(DataSet: TDataSet);
    procedure ParameterBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure ParameterDlg;

var
  frmParameter: TfrmParameter;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure ParameterDlg;
begin
  With TfrmParameter.Create(Nil) do
  begin
    Parameter.Close;
    Parameter.Parameters[0].Value:= GModule.Tahun;
    Parameter.Open;
    ShowModal;
  end;
end;

procedure TfrmParameter.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmParameter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmParameter.ParameterAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  Parameter do
  begin

    for I:= 0 to FieldCount - 1 do
    begin
      if (Fields[i].DataType = ftFloat) then
      begin
        TFloatField(Fields[i]).EditFormat := '#0.#0';
        TFloatField(Fields[i]).DisplayFormat := '#,#0.#0';
      end
      else  if (Fields[i].DataType = ftInteger) then
      begin
        TIntegerField(Fields[i]).EditFormat := '#0';
        TIntegerField(Fields[i]).DisplayFormat := '#,0';
      end;
      if (UpperCase(Fields[i].FieldName) = 'POSTED') then
        TBooleanField(Fields[i]).DisplayValues := 'POSTED';

    end;
  end;

  TFloatField(Parameter.FieldByName('Iuran_pensiun')).DisplayFormat:= '';                                    
  TFloatField(Parameter.FieldByName('Iuran_pensiun')).EditFormat:= '';
  TFloatField(Parameter.FieldByName('Askes')).DisplayFormat:= '';
  TFloatField(Parameter.FieldByName('Askes')).EditFormat:= '';
  TFloatField(Parameter.FieldByName('Tunj_Hari_Tua')).DisplayFormat:= '';
  TFloatField(Parameter.FieldByName('Tunj_Hari_Tua')).EditFormat:= '';
end;

procedure TfrmParameter.ParameterBeforePost(DataSet: TDataSet);
begin
  Parameter.FieldByName('Operator').AsString:=GMOdule.UserID;
  Parameter.FieldByName('Tgl_Ubah').AsDateTime:=Now;
end;

end.

