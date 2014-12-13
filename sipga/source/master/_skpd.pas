unit _skpd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, ExtCtrls, DB, ADODB,
  Mask, SMDBGrid;

type
  TfrmSKPD = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsSKPD: TDataSource;
    SKPD: TADOQuery;
    Properti: TADOQuery;
    dsProperti: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBNavigator2: TDBNavigator;
    Label11: TLabel;
    edtCari: TEdit;
    SMDBGrid1: TSMDBGrid;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure btnPrintClick(Sender: TObject);
    procedure SKPDBeforePost(DataSet: TDataSet);
    procedure PropertiAfterInsert(DataSet: TDataSet);
    procedure SKPDAfterOpen(DataSet: TDataSet);
    procedure SKPDAfterClose(DataSet: TDataSet);
    procedure edtCariChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    procedure RequerySKPD;
  public
    { Public declarations }

  end;

Procedure SKPDDlg;

var
  frmSKPD: TfrmSKPD;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}

Procedure SKPDDlg;
begin
  With TfrmSKPD.Create(Nil) do
  begin
    //if SKPD.Active then
    //  SKPD.Requery()
    //else
    //  SKPD.Open;
  end;
end;

procedure TfrmSKPD.RequerySKPD;
begin
  SKPD.Close;
  SKPD.Filtered:= False;
  if (edtCari.Text<>'') then
    begin
      SKPD.Filter:= '(UnitKd like ' + QuotedStr(edtCari.Text + '%') + ') or ' +
          '(UnitNm Like ' + QuotedStr('%' + edtCari.Text + '%') + ') or ' +
          '(ShortUnitNm Like ' + QuotedStr('%' + edtCari.Text + '%') + ')';
      SKPD.Filtered:= True;
    end;
  SKPD.Open;
end;

procedure TfrmSKPD.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSKPD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

{procedure TfrmSKPD.btnPrintClick(Sender: TObject);
begin
  OpenReportSQL(gmodule.Path+'rpt-rka\tblUrusan.rpt',GModule.DaerahNm,'', '');
end;}

procedure TfrmSKPD.SKPDBeforePost(DataSet: TDataSet);
begin
  SKPD.FieldByName('UnitKd').Value:=SKPD.FieldByName('UrusanKd').AsString+'.'+
      SKPD.FieldByName('NoUrut').AsString;
end;

procedure TfrmSKPD.PropertiAfterInsert(DataSet: TDataSet);
begin
   properti.FieldByName('Tahun').Value:=GModule.Tahun;
end;

procedure TfrmSKPD.SKPDAfterOpen(DataSet: TDataSet);
begin
  Properti.Open;
end;

procedure TfrmSKPD.SKPDAfterClose(DataSet: TDataSet);
begin
  Properti.Close;
end;

procedure TfrmSKPD.edtCariChange(Sender: TObject);
begin
  RequerySKPD;
end;

procedure TfrmSKPD.FormCreate(Sender: TObject);
var strSQL: String;
begin
  strSQL:= GModule.GetFilterSKPD;
  if (strSQL<>'') then strSQL:= ' where ' + strSQL;
  strSQL:= 'select * from tblUnit ' + strSQL;
  strSQL:= strSQL + ' order by unitkd ';
  SKPD.Close;
  SKPD.SQL.Text:= strSQL;
  RequerySKPD;
end;

end.

