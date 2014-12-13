unit _FMUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, //uApp,
  DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SMDBGrid;

type
  TfrmUser = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    qrySKPD: TADOQuery;
    dsSKPD: TDataSource;
    SKPDLook: TDBLookupComboBox;
    qryUser: TADOQuery;
    dsUser: TDataSource;
    qryUserPWD: TStringField;
    DBNavigator1: TDBNavigator;
    btnClose: TButton;
    PGC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    qryUserSKPD: TStringField;
    qryUserAKSESSUB: TStringField;
    qryUserStatus: TStringField;
    Label2: TLabel;
    txtUser: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    tmpPwd: TDBEdit;
    txtPWD: TDBEdit;
    ckALL: TDBCheckBox;
    ckAktif: TDBCheckBox;
    ckSub: TDBCheckBox;
    RGName2: TDBRadioGroup;
    RGName: TDBRadioGroup;
    grdUser: TSMDBGrid;
    qryUseruserid: TStringField;
    qryUserusernm: TStringField;
    qryUsergroupid: TStringField;
    qryUserdatecreated: TDateTimeField;
    qryUserdisabled: TBooleanField;
    qryUserpasswd: TStringField;
    qryUserAllUnit: TBooleanField;
    qryUserUnitID: TIntegerField;
    qryUserSubUnitID: TIntegerField;
    qryUserIsAPBDGranted: TBooleanField;
    qryUserIsSPDGranted: TBooleanField;
    qryUserIsSPMGranted: TBooleanField;
    qryUserIsSP2DGranted: TBooleanField;
    qryUserIsAKGranted: TBooleanField;
    qryUserIsSTSGranted: TBooleanField;
    qryUserIsSPPGranted: TBooleanField;
    qryUserIsSPJGranted: TBooleanField;
    qryUserGROUP_ID: TSmallintField;
    qryUserUNITKD: TStringField;
    qryUserACCESSSUB_UNIT: TBooleanField;
    qryGroup: TADOQuery;
    qryUserGROUP: TStringField;
    qryGroupGROUP_ID: TSmallintField;
    qryGroupGROUPNAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryUserAfterEdit(DataSet: TDataSet);
    procedure qryUserAfterInsert(DataSet: TDataSet);
    procedure qryUserBeforePost(DataSet: TDataSet);
    procedure ckALLClick(Sender: TObject);
    procedure RGNameChange(Sender: TObject);
    procedure RGName2Change(Sender: TObject);
    procedure qrySKPDBeforeScroll(DataSet: TDataSet);
    procedure qryUserAfterPost(DataSet: TDataSet);
    procedure qryUserAfterCancel(DataSet: TDataSet);
    procedure qryUserCalcFields(DataSet: TDataSet);
    procedure qrySKPDAfterScroll(DataSet: TDataSet);
    procedure PGCChange(Sender: TObject);
    procedure grdUserDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure ManagementControls;
    function QuerySKPD: String;
    function QueryUser: String;
    procedure ManageCheckbok;
  public
    { Public declarations }
  end;

procedure MngUserDlg;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

uses GlobalModule;

procedure MngUserDlg;
begin
  if (GModule.UserGroupId>2) or (GModule.UserGroupId<1) then
    begin
      MessageDlg('Hanya User Administrator Yang Boleh Membuka Form Management User.', mtWarning, [mbOK], 0);
      exit;
    end;
  if (frmUser=nil) then frmUser:= TfrmUser.Create(nil);
  frmUser.ShowModal;
  frmUser:= nil;
end;

procedure TfrmUser.ManagementControls;
begin
  tmpPWD.Visible:= not (qryUser.State in[dsInsert, dsEdit]);
  txtPWD.Visible:= (qryUser.State in[dsInsert, dsEdit]);
end;

function TfrmUser.QuerySKPD: String;
var S: String;
begin
  if (GModule.UserGroupId=1) then
    S:= 'select top 1 unitkd=''-'', unitnm=''Semua SKPD'' from tblUnit ' +
        ' union ' +
        ' select unitkd, unitnm from tblUnit ' +
        ' order by unitkd'
  else
    begin
      if (GModule.IsAccessSub) then
        S:= 'select * from tblunit where unitkd like ' + QuotedStr(GModule.UnitKd + '%') + ' '
      else
        S:= 'select * from tblunit where unitkd = ' + QuotedStr(GModule.UnitKd) + ' ';
      S:= S + ' order by unitkd';
    end;
  Result:= S;
end;

function TfrmUser.QueryUser: String;
begin
  Result:= 'select * from tblUser where unitkd=:unitkd ' +
      'and (userid<>' + QuotedStr(GModule.UserId) + ' ' +
      'and userid<>' + QuotedStr('sa') + ') ';
end;

procedure TfrmUser.ManageCheckbok;
begin
  if (qryUser.State in[dsInsert, dsEdit]) then
    begin
      if (qryUser.FieldByName('ALLUNIT').AsBoolean) then
        begin
          ckSub.Checked:= True;
          ckSub.Enabled:= False;
        end
      else
        begin
          if (RGName.Visible) then
            ckSub.Enabled:= ((RGName.ItemIndex>0) and (RGName.ItemIndex<3))
          else if (RGName2.Visible) then
            ckSub.Enabled:= (RGName2.ItemIndex<2)
          else ckSub.Enabled:= False;
        end;
    end
  else
    ckSub.Enabled:= True;
end;

procedure TfrmUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (qryUser.State in[dsInsert, dsEdit]) then qryUser.Cancel;
  Action:= caFree;
end;

procedure TfrmUser.FormShow(Sender: TObject);
begin
  ManagementControls;
end;

procedure TfrmUser.FormCreate(Sender: TObject);
begin
  qryGroup.Close;
  qrySKPD.Close;
  qryUser.Close;
  qrySKPD.SQL.Text:= QuerySKPD;
  qryUser.SQL.Text:= QueryUser;
  try
    qryGroup.Open;
    qrySKPD.Open;
    qryUser.Open;
  except
  end;
  ckAll.Visible:= (GModule.UserGroupId=1);
  SKPDLook.KeyValue:= GModule.UnitKd;
  PGC.ActivePageIndex:= 0;
end;

procedure TfrmUser.qryUserAfterEdit(DataSet: TDataSet);
begin
  Dataset.FieldByName('Passwd').AsString:= Decript(Dataset.FieldByName('Passwd').AsString);
  ManagementControls;
  ManageCheckbok;
  PGC.ActivePageIndex:= 1;
end;

procedure TfrmUser.qryUserAfterInsert(DataSet: TDataSet);
begin
  ManagementControls;
  Dataset.FieldByName('ALLUNIT').AsBoolean:= False;
  Dataset.FieldByName('GROUP_ID').AsInteger:= 2;
  Dataset.FieldByName('DISABLED').AsBoolean:= False;
  Dataset.FieldByName('ACCESSSUB_UNIT').AsBoolean:= False;
  ManageCheckbok;
  PGC.ActivePageIndex:= 1;
end;

procedure TfrmUser.qryUserBeforePost(DataSet: TDataSet);
begin
  if (SKPDLook.KeyValue = null) then
    Dataset.FieldByName('UnitKd').AsString:= '-'
  else
    Dataset.FieldByName('UnitKd').AsString:= SKPDLook.KeyValue;
  if (Dataset.FieldByName('ALLUNIT').AsBoolean) then
    begin
      Dataset.FieldByName('UnitKd').AsString:= '-';
      Dataset.FieldByName('ACCESSSUB_Unit').AsBoolean:= True;
    end
  else
    begin
      if ((Dataset.FieldByName('UnitKd').AsString='-') and
        (Dataset.FieldByName('GROUP_ID').AsInteger>1)) then
        begin
          MessageDlg('Silahkan Tentukan SKPD.' + #13 + 'Proses Dibatalkan.', mtWarning, [mbOK], 0);
          Abort;
        end;
    end;
  Dataset.FieldByName('Passwd').AsString:= Encript(Dataset.FieldByName('Passwd').AsString);
end;

procedure TfrmUser.ckALLClick(Sender: TObject);
begin
  ManageCheckbok;
end;

procedure TfrmUser.RGNameChange(Sender: TObject);
begin
  if (not RGName.Visible) then exit;
  if (qryUser.State in[dsInsert, dsEdit]) then
    begin
      case RGName.ItemIndex of
      0 : qryUser.FieldByName('ALLUNIT').AsBoolean:= True;
      1 : qryUser.FieldByName('ALLUNIT').AsBoolean:= False;
      2 :
          begin
            qryUser.FieldByName('ALLUNIT').AsBoolean:= False;
            qryUser.FieldByName('ACCESSSUB_UNIT').AsBoolean:= False;
          end;
      else
        begin
          qryUser.FieldByName('ALLUNIT').AsBoolean:= False;
          qryUser.FieldByName('ACCESSSUB_UNIT').AsBoolean:= False;
        end;
      end;
      ManageCheckbok;
    end;
end;

procedure TfrmUser.RGName2Change(Sender: TObject);
begin
  if (not RGName2.Visible) then exit;
  if (qryUser.State in[dsInsert, dsEdit]) then
    begin
      case RGName.ItemIndex of
      0 : qryUser.FieldByName('ALLUNIT').AsBoolean:= False;
      1 :
          begin
            qryUser.FieldByName('ALLUNIT').AsBoolean:= False;
            qryUser.FieldByName('ACCESSSUB_UNIT').AsBoolean:= False;
          end;
      else
        begin
          qryUser.FieldByName('ALLUNIT').AsBoolean:= False;
          qryUser.FieldByName('ACCESSSUB_UNIT').AsBoolean:= False;
        end;
      end;
      ManageCheckbok;
    end;
end;

procedure TfrmUser.qrySKPDBeforeScroll(DataSet: TDataSet);
begin
  if (qryUser.State in[dsInsert, dsEdit]) then qryUser.Cancel;
end;

procedure TfrmUser.qryUserAfterPost(DataSet: TDataSet);
begin
  ManagementControls;
  ManageCheckbok;
end;

procedure TfrmUser.qryUserAfterCancel(DataSet: TDataSet);
begin
  ManagementControls;
  ManageCheckbok;
end;

procedure TfrmUser.qryUserCalcFields(DataSet: TDataSet);
begin
Dataset.FieldByName('PWD').AsString:= Decript(Dataset.FieldByName('Passwd').AsString);
  if (Dataset.FieldByName('DISABLED').AsBoolean) then
    Dataset.FieldByName('Status').AsString:= 'Tdk Aktif'
  else Dataset.FieldByName('Status').AsString:= 'Aktif';
  if (Dataset.FieldByName('UnitKd').AsString = '-') or
    (Dataset.FieldByName('Group_Id').AsInteger = 1) or
    (Dataset.FieldByName('ALLUNIT').AsBoolean) then
    Dataset.FieldByName('SKPD').AsString:= '-'
  else
    Dataset.FieldByName('SKPD').AsString:= Dataset.FieldByName('UnitKd').AsString;

  if (qryGroup.Locate('Group_Id', Dataset.FieldByName('Group_Id').AsInteger, [])) then
    Dataset.FieldByName('Group').AsString:= qrygroup.FieldByName('GROUPNAME').AsString
  else
    Dataset.FieldByName('Group').AsString:= '-';
  {case Dataset.FieldByName('Group_Id').AsInteger of
  1 : Dataset.FieldByName('Group').AsString:= 'Super Administrator';
  2 : Dataset.FieldByName('Group').AsString:= 'Administrator SKPD';
  3 : Dataset.FieldByName('Group').AsString:= 'Operator SKPD';
  else Dataset.FieldByName('Group').AsString:= 'Guest';
  end; }
  if (Dataset.FieldByName('ACCESSSUB_UNIT').AsBoolean) then
    Dataset.FieldByName('AKSESSUB').AsString:= 'Yes'
  else
    Dataset.FieldByName('AKSESSUB').AsString:= 'No'; 
end;

procedure TfrmUser.qrySKPDAfterScroll(DataSet: TDataSet);
begin
  RGName.Visible:= ((Dataset.FieldByName('UnitKd').AsString='-') and
      (GModule.UserGroupId=1));
  RGName2.Visible:= not((Dataset.FieldByName('UnitKd').AsString='-') and
      (GModule.UserGroupId=1));
end;

procedure TfrmUser.PGCChange(Sender: TObject);
begin
  if (qryUser.State in[dsInsert, dsEdit]) then
    begin
      if (PGC.ActivePageIndex<>1) then PGC.ActivePageIndex:= 1;
    end;
end;

procedure TfrmUser.grdUserDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (gdSelected in State) then
    begin
      if (not qryUser.FieldByName('Disabled').AsBoolean) then
        grdUser.Canvas.Brush.Color:= clWhite
      else
        grdUser.Canvas.Brush.Color:= clRed;
    end;
  grdUser.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
