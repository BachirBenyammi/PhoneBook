unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids,
  ComCtrls, Menus, Buttons, ActnList, ToolWin, ImgList, clipbrd, ShellApi,
  DBTables, IniFiles;

Const
  WM_MYMESSAGE=WM_USER+100;
  LN_Letters : array [0..25] of char = ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                                        'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                                        'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                                        'Y', 'Z');
                                        
  Msg_No_Record_Found = 'There are no actual records';
  Msg_Save_Changes = 'Do you want to save changes ?';
  Msg_Del_Record = 'Do you want to delete the record ?';
  Msg_Del_Class = 'Do you want to delete the class ?';
  Msg_Exit = 'Do you want to exit ';
  State_Browse = 'Browsing';
  State_Edit = 'Editing';
  State_Insert = 'Inserting';
  sb_Modified = 'modif';
  sb_Total = 'Total: ';
  sb_Record = 'Record: ';
  sb_Mode = 'Op.: ';

type
  TmainForm = class(TForm)
    tbContacts: TADOTable;
    dsContacts: TDataSource;
    MainMenu: TMainMenu;
    MMFile: TMenuItem;
    MMLine: TMenuItem;
    MMHelp: TMenuItem;
    ActList: TActionList;
    ActionFirst: TAction;
    ActionNext: TAction;
    ActionPrior: TAction;
    ActionLast: TAction;
    ActionInsert: TAction;
    ActionDelete: TAction;
    ActionEdit: TAction;
    ActionPost: TAction;
    ActionCancel: TAction;
    tbClass: TADOTable;
    dSClass: TDataSource;
    ImgList: TImageList;
    Stb: TStatusBar;
    MMBrowse: TMenuItem;
    First1: TMenuItem;
    Prior1: TMenuItem;
    Next1: TMenuItem;
    Last1: TMenuItem;
    MMRecord: TMenuItem;
    Insert1: TMenuItem;
    Delete1: TMenuItem;
    Edit2: TMenuItem;
    Post1: TMenuItem;
    Cancel1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    CoolBar1: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton6: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    PanelInfos: TPanel;
    PageControl: TPageControl;
    TabInfos: TTabSheet;
    LabName: TLabel;
    LabAdr: TLabel;
    LabHome: TLabel;
    LabMobile: TLabel;
    LabWork: TLabel;
    LabFax: TLabel;
    LabClass: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    TabNotes: TTabSheet;
    DBMemo2: TDBMemo;
    ActionExit: TAction;
    ActionTop: TAction;
    ActionAbout: TAction;
    MMExit: TMenuItem;
    MMStayOnTop: TMenuItem;
    About2: TMenuItem;
    ActionHide: TAction;
    MMWindow: TMenuItem;
    MMInfos: TMenuItem;
    MMNotes: TMenuItem;
    Bevel1: TBevel;
    MMHide: TMenuItem;
    ActionCopyAll: TAction;
    PanelLetters: TPanel;
    SP25: TSpeedButton;
    SP24: TSpeedButton;
    SP23: TSpeedButton;
    SP22: TSpeedButton;
    SP21: TSpeedButton;
    SP20: TSpeedButton;
    SP19: TSpeedButton;
    SP18: TSpeedButton;
    SP17: TSpeedButton;
    SP16: TSpeedButton;
    SP15: TSpeedButton;
    SP14: TSpeedButton;
    SP13: TSpeedButton;
    SP12: TSpeedButton;
    SP26: TSpeedButton;
    SP11: TSpeedButton;
    SP10: TSpeedButton;
    SP7: TSpeedButton;
    SP6: TSpeedButton;
    SP5: TSpeedButton;
    SP4: TSpeedButton;
    SP3: TSpeedButton;
    SP2: TSpeedButton;
    SP1: TSpeedButton;
    ADOQuery: TADOQuery;
    ToolBar3: TToolBar;
    ActionFind: TAction;
    PMenu: TPopupMenu;
    PMShow: TMenuItem;
    PPAbout: TMenuItem;
    N2: TMenuItem;
    ToolButton7: TToolButton;
    ToolButton2: TToolButton;
    Exit2: TMenuItem;
    sbAll: TSpeedButton;
    ActionInfos: TAction;
    ActionNotes: TAction;
    TabClasses: TTabSheet;
    DBEdit8: TDBEdit;
    LabClasses: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ActionInsertClass: TAction;
    ActionDeleteClass: TAction;
    ActionEditClass: TAction;
    ActionPostClass: TAction;
    ActionCancelClass: TAction;
    ActionClasses: TAction;
    MMClasses: TMenuItem;
    ActionPreviewAll: TAction;
    MMCopyAll: TMenuItem;
    ActionPreviewLetter: TAction;
    ActionPreviewRecord: TAction;
    CurrentRecord1: TMenuItem;
    CurrentLetter1: TMenuItem;
    AllRecords1: TMenuItem;
    MMPreview: TMenuItem;
    cbClasses: TDBLookupListBox;
    ActionPreviewClass: TAction;
    CurrentClass1: TMenuItem;
    ToolButton8: TToolButton;
    PMPreview: TPopupMenu;
    AllRecords2: TMenuItem;
    CurrentClass2: TMenuItem;
    CurrentLetter2: TMenuItem;
    CurrentRecord2: TMenuItem;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton16: TToolButton;
    SP9: TSpeedButton;
    SP8: TSpeedButton;
    PanelFind: TPanel;
    gbFind: TGroupBox;
    EditFind: TEdit;
    BtnFind: TBitBtn;
    cbFields: TComboBox;
    cbChois: TComboBox;
    ActionPrintRecord: TAction;
    ActionPrintLetter: TAction;
    ActionPrintAll: TAction;
    ActionPrintClass: TAction;
    MMPrint: TMenuItem;
    AllRecords3: TMenuItem;
    PrintCurrentClass1: TMenuItem;
    CurrentLetter3: TMenuItem;
    PrintCurrentRecord1: TMenuItem;
    ToolButton17: TToolButton;
    PMPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ToolButton18: TToolButton;
    LabFunction: TLabel;
    LabNotes: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    LabEmail: TLabel;
    cbClass: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dsContactsDataChange(Sender: TObject; Field: TField);
    procedure dsContactsStateChange(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure cbClassEnter(Sender: TObject);
    procedure cbClassExit(Sender: TObject);
    procedure SP28Click(Sender: TObject);
    procedure PMShowClick(Sender: TObject);
    procedure sbAllClick(Sender: TObject);
    procedure EditFindEnter(Sender: TObject);
    procedure ActionFirstExecute(Sender: TObject);
    procedure ActionNextExecute(Sender: TObject);
    procedure ActionPriorExecute(Sender: TObject);
    procedure ActionLastExecute(Sender: TObject);
    procedure ActionInsertExecute(Sender: TObject);
    procedure ActionDeleteExecute(Sender: TObject);
    procedure ActionEditExecute(Sender: TObject);
    procedure ActionPostExecute(Sender: TObject);
    procedure ActionCancelExecute(Sender: TObject);
    procedure ActionExitExecute(Sender: TObject);
    procedure ActionTopExecute(Sender: TObject);
    procedure ActionAboutExecute(Sender: TObject);
    procedure ActionHideExecute(Sender: TObject);
    procedure ActionCopyAllExecute(Sender: TObject);
    procedure ActionFindExecute(Sender: TObject);
    procedure ActionInfosExecute(Sender: TObject);
    procedure ActionNotesExecute(Sender: TObject);
    procedure Preview;
    procedure Print;    
    procedure ShowHide;
    procedure InitialSysTray;
    procedure ChangeMode(Mode: boolean);
    procedure ExecuteSQL(Query : string);
    procedure TrayMessage(var Msg: TMessage); message WM_MYMESSAGE;
    Procedure WMHotkey(Var msg:TWMHotkey);message WM_HOTKEY;
    procedure ActionInsertClassExecute(Sender: TObject);
    procedure ActionDeleteClassExecute(Sender: TObject);
    procedure ActionEditClassExecute(Sender: TObject);
    procedure ActionPostClassExecute(Sender: TObject);
    procedure ActionCancelClassExecute(Sender: TObject);
    procedure ActionClassesExecute(Sender: TObject);
    procedure EditFindKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure ActionPreviewAllExecute(Sender: TObject);
    procedure ActionPreviewLetterExecute(Sender: TObject);
    procedure ActionPreviewRecordExecute(Sender: TObject);
    procedure ActionPreviewClassExecute(Sender: TObject);
    procedure EditFindExit(Sender: TObject);
    procedure cbClassesEnter(Sender: TObject);
    procedure cbClassesExit(Sender: TObject);
    procedure cbFieldsEnter(Sender: TObject);
    procedure cbFieldsExit(Sender: TObject);
    procedure Initialise;
    procedure CurrentClass;
    procedure CurrentRecord;
    procedure CurrentLetter;
    procedure AllRecords;
    procedure ActionPrintAllExecute(Sender: TObject);
    procedure ActionPrintLetterExecute(Sender: TObject);
    procedure ActionPrintRecordExecute(Sender: TObject);
    procedure ActionPrintClassExecute(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Change(Sender: TObject);
    procedure cbClassesClick(Sender: TObject);
  end;

var
  mainForm: TmainForm;
  PNotifyStruc: PNotifyIconData;
  Search : string = '*';

implementation

uses USplash, UReq, Math, UConfig;

{$R *.dfm}

procedure TMainForm.Initialise;
var
  iniPath: string;
  ini: TIniFile;
  Mode : boolean;
begin
  cbFields.Clear;
  cbChois.Clear;
  iniPath := AppPath + 'config.ini';
  ini := TIniFile.Create(iniPath);
  with ini do
    try
      Mode := ReadBool('General','Mode', false);
      case Mode of
        false: BiDiMode := bdLeftToRight;
        true: BiDiMode := bdRightToLeft;
      end;
      Font.Charset := ReadInteger('General','Charset', Font.Charset);
      Application.Title := ReadString('General','Title', Application.Title);

      ActionFirst.Caption := ReadString('Action','ActionFirst', ActionFirst.Caption);
      ActionNext.Caption := ReadString('Action','ActionNext', ActionNext.Caption);
      ActionPrior.Caption := ReadString('Action','ActionPrior', ActionPrior.Caption);
      ActionLast.Caption := ReadString('Action','ActionLast', ActionLast.Caption);
      ActionInsert.Caption := ReadString('Action','ActionInsert', ActionInsert.Caption);
      ActionDelete.Caption := ReadString('Action','ActionDelete', ActionDelete.Caption);
      ActionEdit.Caption := ReadString('Action','ActionEdit', ActionEdit.Caption);
      ActionPost.Caption := ReadString('Action','ActionPost', ActionPost.Caption);
      ActionCancel.Caption := ReadString('Action','ActionCancel', ActionCancel.Caption);
      ActionTop.Caption := ReadString('Action','ActionTop', ActionTop.Caption);
      ActionAbout.Caption := ReadString('Action','ActionAbout', ActionAbout.Caption);
      ActionHide.Caption := ReadString('Action','ActionHide', ActionHide.Caption);
      ActionCopyAll.Caption := ReadString('Action','ActionCopyAll', ActionCopyAll.Caption);
      ActionPreviewAll.Caption := ReadString('Action','ActionPreviewAll', ActionPreviewAll.Caption);
      ActionPreviewLetter.Caption := ReadString('Action','ActionPreviewLetter', ActionPreviewLetter.Caption);
      ActionPreviewRecord.Caption := ReadString('Action','ActionPreviewRecord', ActionPreviewRecord.Caption);
      ActionPreviewClass.Caption := ReadString('Action','ActionPreviewClass', ActionPreviewClass.Caption);
      ActionFind.Caption := ReadString('Action','ActionFind', ActionFind.Caption);
      ActionInfos.Caption := ReadString('Action','ActionInfos', ActionInfos.Caption);
      ActionClasses.Caption := ReadString('Action','ActionClasses', ActionClasses.Caption);
      ActionNotes.Caption := ReadString('Action','ActionNotes', ActionNotes.Caption);
      ActionPrintAll.Caption := ReadString('Action','ActionPrintAll', ActionPrintAll.Caption);
      ActionPrintLetter.Caption := ReadString('Action','ActionPrintLetter', ActionPrintLetter.Caption);
      ActionPrintRecord.Caption := ReadString('Action','ActionPrintRecord', ActionPrintRecord.Caption);
      ActionPrintClass.Caption := ReadString('Action','ActionPrintClass', ActionPrintClass.Caption);

      cbFields.Items.Add(ReadString('Field','Name', 'Name'));
      cbFields.Items.Add(ReadString('Field','Function', 'Function'));
      cbFields.Items.Add(ReadString('Field','Email', 'Email'));
      cbFields.Items.Add(ReadString('Field','Adresse', 'Adresse'));
      cbFields.Items.Add(ReadString('Field','Notes', 'Notes'));
      cbFields.Items.Add(ReadString('Field','Home', 'Home'));
      cbFields.Items.Add(ReadString('Field','Mobile', 'Mobile'));
      cbFields.Items.Add(ReadString('Field','Work', 'Work'));
      cbFields.Items.Add(ReadString('Field','Fax', 'Fax'));

      cbChois.Items.Add(ReadString('Option','Started', 'Started with'));
      cbChois.Items.Add(ReadString('Option','Contain', 'Contain'));
      cbChois.Items.Add(ReadString('Option','Exact', 'Exact'));
      gbFind.Caption := ReadString('Option','cbFind', gbFind.Caption);
      EditFind.Text := ReadString('Option','Find', EditFind.Text);

      MMFile.Caption := ReadString('Menu','File', MMFile.Caption);
      MMBrowse.Caption := ReadString('Menu','Browse', MMBrowse.Caption);
      MMRecord.Caption := ReadString('Menu','Record', MMRecord.Caption);
      MMPreview.Caption := ReadString('Menu','Preview', MMPreview.Caption);
      MMPrint.Caption := ReadString('Menu','Print', MMPrint.Caption);
      MMWindow.Caption := ReadString('Menu','Window', MMWindow.Caption);
      MMHelp.Caption := ReadString('Menu','Help', MMHelp.Caption);

      LabName.Caption := ReadString('Lable','LabName', LabName.Caption);
      LabFunction.Caption := ReadString('Lable','LabFunction', LabFunction.Caption);
      LabEmail.Caption := ReadString('Lable','LabEmail', LabEmail.Caption);
      LabAdr.Caption := ReadString('Lable','LabAdr', LabAdr.Caption);
      LabHome.Caption := ReadString('Lable','LabHome', LabHome.Caption);
      LabMobile.Caption := ReadString('Lable','LabMobile', LabMobile.Caption);
      LabWork.Caption := ReadString('Lable','LabWork', LabWork.Caption);
      LabFax.Caption := ReadString('Lable','LabFax', LabFax.Caption);
      LabClass.Caption := ReadString('Lable','LabClass', LabClass.Caption);
      LabNotes.Caption := ReadString('Lable','LabNotes', LabNotes.Caption);
    finally
      ini.Free;
    end;
  cbFields.ItemIndex := 0;
  cbChois.ItemIndex := 0;
  Caption := Application.Title;
  PMShow.Caption := Caption;
  TabInfos.Caption := ActionInfos.Caption;
  TabNotes.Caption := ActionNotes.Caption;
  TabClasses.Caption :=  ActionClasses.Caption;
  LabClasses.Caption := LabClass.Caption;
end;

procedure TmainForm.InitialSysTray;
var
  hinte: string;
  j: integer;
begin           
  New(PNotifyStruc);
  PNotifyStruc^.cbSize := SizeOf(PNotifyStruc^);
  PNotifyStruc^.Wnd := Handle;
  PNotifyStruc^.uID := 1;
  PNotifyStruc^.uFlags := NIF_ICON or NIF_TIP or NIF_MESSAGE;
  PNotifyStruc^.uCallbackMessage := WM_MYMESSAGE;
  PNotifyStruc^.hIcon := Icon.Handle;
  hinte := Application.Title;
  for j := 0 to length(hinte) - 1 do
    PNotifyStruc^.szTip[j] := hinte[j + 1];
  PNotifyStruc^.szTip[length(hinte)] := #0;
  Shell_NotifyIcon(NIM_ADD,PNotifyStruc);
end;

procedure TMainForm.TrayMessage(var Msg: TMessage);
var
  Mouse :TPoint;
begin
  case Msg.LParam of
    WM_RBUTTONDOWN:
      begin
        GetCursorPos(Mouse);
        SetForegroundWindow(Handle);
        PMenu.Popup(Mouse.x,Mouse.y);
      end;
    WM_LBUTTONDOWN:
      ShowHide
  end;
end;

procedure TmainForm.WMHotkey(Var msg:TWMHotkey);
Begin
  ShowHide
end;

procedure TmainForm.Preview;
begin
  if ADOQuery.RecordCount < 1 then
    begin
      MessageDlg(Msg_No_Record_Found, mtinformation, [mbOK],0);
      Exit;
    end;
  FormReq := TFormReq.Create(Application);
  try
    FormReq.QuickRep1.Preview;
  finally
    FormReq.Free
  end;
end;

procedure TmainForm.Print;
begin
  if ADOQuery.RecordCount < 1 then
    begin
      MessageDlg(Msg_No_Record_Found, mtinformation, [mbOK],0);
      Exit;
    end;
  FormReq := TFormReq.Create(Application);
  try
    FormReq.QuickRep1.Print;
  finally
    FormReq.Free
  end;
end;

procedure TmainForm.ExecuteSQL(Query : string);
begin
  with ADOQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add(Query);
      Open;
    end;
end;

procedure TmainForm.ShowHide;
begin
  case Visible of
    true:
      begin
        ADOQuery.Close;
        Visible := false;
        PMShow.Enabled := true;
      end;
    false:
      begin
        if length(ADOQuery.SQL.Text) = 0 then
          AllRecords
        else
          ADOQuery.Open;
        Visible := true;
        PMShow.Enabled := false;
        ShowWindow(Application.Handle, SW_Hide);
      end;
  end;
end;

procedure TmainForm.FormCreate(Sender: TObject);
var
  i: integer;
begin
  tbContacts.ConnectionString := cntString;
  tbClass.ConnectionString := cntString;
  ADOQuery.ConnectionString := cntString;
  tbContacts.Active := true;
  tbClass.Active := true;
  RegisterHotkey(Handle, 1, Mod_Control + Mod_Alt, 38);
  RegisterHotkey(Handle, 2, Mod_Control + Mod_Alt, 40);
  Icon := Application.Icon;
  //ImgList.GetIcon(18,Icon);
  Initialise;
  InitialSysTray;
  for i:= 1 to SizeOf(LN_Letters) do
    TSpeedButton(FindComponent('SP' + IntToStr(i))).Caption := LN_Letters[i-1];
//  PageControl.ActivePageIndex := 0;
end;

procedure TmainForm.dsContactsDataChange(Sender: TObject; Field: TField);
begin
  with ADOQuery do
    begin
      Stb.Panels[2].Text := sb_Total + inttostr((tbContacts.RecordCount));
      Stb.Panels[3].Text := sb_Record + inttostr(RecNo) + '/' + IntToStr(RecordCount);
      if Modified then
        Stb.Panels[1].Text := sb_Modified
      else
        Stb.Panels[1].Text := '';
      case State of
        dsBrowse:
            ChangeMode(false);
        dsInsert, dsEdit:
            ChangeMode(true);
      end;
      ActionPreviewLetter.Enabled := (ADOQuery.RecordCount > 0 );
      ActionPreviewRecord.Enabled := (ADOQuery.RecNo > 0);
      ActionPreviewClass.Enabled := (ADOQuery.RecordCount > 0);
      ActionPreviewAll.Enabled := (tbContacts.RecordCount > 0);
      TabNotes.Highlighted := (ADOQuery.FieldByName('Notes').Value <> '');
    end;
end;

procedure TmainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  with ADOQuery do
    if Modified then
      if (MessageDlg(Msg_Save_Changes, mtConfirmation,
        [mbYes, mbNo], 0) = mrYes) then
          Post
      else
          Cancel;
  ADOQuery.Close;
  Visible := false;
  CanClose := false;
end;

procedure TmainForm.dsContactsStateChange(Sender: TObject);
var
  Stat: string;
begin
  with ADOQuery do
    begin
      case State of
        dsBrowse: Stat := State_Browse;
        dsInsert: Stat := State_Insert;
        dsEdit: Stat := State_Edit;
      else
        Stat := '';
      end;
      Stb.Panels[0].Text := sb_Mode + Stat;
    end;
end;

procedure TmainForm.ChangeMode(Mode: boolean);
var
  i: integer;
begin
  if Mode then
    begin
      for i:= 1 to 7 do
        with TDBEdit(FindComponent('DBEdit' + inttostr(i))) do
          begin
            Color := clWindow;
            ReadOnly := false;
          end;
      for i:= 1 to 2 do
        with TDBMemo(FindComponent('DBMemo' + inttostr(i))) do
          begin
            Color := clWindow;
            ReadOnly := false;
          end;
      cbClass.Color := clWindow;
      cbClass.ReadOnly := false;
      ActionFirst.Enabled := false;
      ActionPrior.Enabled := false;
      ActionNext.Enabled := false;
      ActionLast.Enabled := false;
      ActionDelete.Enabled := false;
      ActionEdit.Enabled := false;
      ActionPost.Enabled := true;
      ActionCancel.Enabled := true;
    end
  else
    begin
      for i:= 1 to 7 do
        with TDBEdit(FindComponent('DBEdit' + inttostr(i))) do
          begin
            Color := clSilver;
            ReadOnly := true;
          end;
      for i:= 1 to 2 do
        with TDBMemo(FindComponent('DBMemo' + inttostr(i))) do
          begin
            Color := clSilver;
            ReadOnly := true;
          end;
      cbClass.Color := clSilver;
      cbClass.ReadOnly := true;
      with ADOQuery do
      if (RecNo > 1) and (RecNo < RecordCount) then
        begin
          ActionFirst.Enabled := true;
          ActionPrior.Enabled := true;
          ActionNext.Enabled := true;
          ActionLast.Enabled := true;
        end
      else if (RecNo = 1) and (RecordCount > 1) then
        begin
          ActionFirst.Enabled := false;
          ActionPrior.Enabled := false;
          ActionNext.Enabled := true;
          ActionLast.Enabled := true;
        end
      else if (RecNo > 1) and (RecNo = RecordCount) then
        begin
          ActionFirst.Enabled := true;
          ActionPrior.Enabled := true;
          ActionNext.Enabled := false;
          ActionLast.Enabled := false;
        end
      else
        begin
          ActionFirst.Enabled := false;
          ActionPrior.Enabled := false;
          ActionNext.Enabled := false;
          ActionLast.Enabled := false;
        end;
      if ADOQuery.RecordCount > 0 then
        begin
          ActionEdit.Enabled := true;
          ActionDelete.Enabled := true;
        end
      else
        begin
          ActionEdit.Enabled := false;
          ActionDelete.Enabled := false;
        end;
      ActionPost.Enabled := false;
      ActionCancel.Enabled := false;
    end;
end;

procedure TmainForm.ActionFirstExecute(Sender: TObject);
begin
  ADOQuery.First
end;

procedure TmainForm.ActionNextExecute(Sender: TObject);
begin
  ADOQuery.Next
end;

procedure TmainForm.ActionPriorExecute(Sender: TObject);
begin
  ADOQuery.Prior
end;

procedure TmainForm.ActionLastExecute(Sender: TObject);
begin
  ADOQuery.Last
end;

procedure TmainForm.ActionInsertExecute(Sender: TObject);
begin
  ADOQuery.Insert;
  PageControl.ActivePageIndex := 0;
  DBEdit1.SetFocus;
end;

procedure TmainForm.ActionDeleteExecute(Sender: TObject);
begin
  if (MessageDlg(Msg_Del_Record, mtConfirmation,
      [mbYes, mbCancel], 0) = mrYes) then
    ADOQuery.Delete
end;

procedure TmainForm.ActionEditExecute(Sender: TObject);
begin
  ADOQuery.Edit;
  case PageControl.ActivePageIndex of
    0: DBEdit1.SetFocus;
    1: DBMemo2.SetFocus;
  else
    begin
      PageControl.ActivePageIndex := 0;
      DBEdit1.SetFocus;
    end;
  end;
end;

procedure TmainForm.ActionPostExecute(Sender: TObject);
begin
  ADOQuery.Post
end;

procedure TmainForm.ActionCancelExecute(Sender: TObject);
begin
  ADOQuery.Cancel
end;

procedure TmainForm.DBEdit1Enter(Sender: TObject);
begin
  with Sender as TDBEdit do
    Color := clYellow;
end;

procedure TmainForm.DBEdit1Exit(Sender: TObject);
begin
  with Sender as TDBEdit do
    if ReadOnly then
      Color := clSilver
    else
      Color := clWindow
end;

procedure TmainForm.DBMemo1Enter(Sender: TObject);
begin
  with Sender as TDBMemo do
    Color := clYellow;
end;

procedure TmainForm.DBMemo1Exit(Sender: TObject);
begin
  with Sender as TDBMemo do
    if ReadOnly then
      Color := clSilver
    else
      Color := clWindow
end;

procedure TmainForm.cbClassEnter(Sender: TObject);
begin
  with Sender as TDBLookupComboBox do
    Color := clYellow;
end;

procedure TmainForm.cbClassExit(Sender: TObject);
begin
  with Sender as TDBLookupComboBox do
    if ReadOnly then
      Color := clSilver
    else
      Color := clWindow
end;

procedure TmainForm.ActionExitExecute(Sender: TObject);
begin
  if MessageDlg(Msg_Exit + Application.Title + ' ?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    Application.Terminate
end;

procedure TmainForm.ActionTopExecute(Sender: TObject);
begin
  with Sender as TAction do
    begin
      Checked := not Checked;
        if Checked then
          FormStyle := fsStayOnTop
        else
          FormStyle := fsNormal;
    end;
end;

procedure TmainForm.ActionAboutExecute(Sender: TObject);
begin
  SplashForm := TSplashForm.Create(Application);
  try
    SplashForm.BtnClose.Visible := true;;
    SplashForm.ShowModal;
  finally
    SplashForm.Free
  end;
end;

procedure TmainForm.ActionHideExecute(Sender: TObject);
begin
  ShowHide;
end;

procedure TmainForm.ActionCopyAllExecute(Sender: TObject);
var
  RecordStr: TStringList;
begin
  RecordStr := TStringList.Create;
  try
     RecordStr.Add(LabName.Caption + DBEdit1.Text);
     RecordStr.Add(LabFunction.Caption + DBEdit2.Text);
     RecordStr.Add(LabEmail.Caption + DBEdit7.Text);
     RecordStr.Add(LabAdr.Caption);
     RecordStr.Add(DBMemo1.Text);
     RecordStr.Add(LabHome.Caption + DBEdit3.Text);
     RecordStr.Add(LabMobile.Caption + DBEdit4.Text);
     RecordStr.Add(LabWork.Caption +  DBEdit5.Text);
     RecordStr.Add(LabFax.Caption + DBEdit6.Text);
     RecordStr.Add(LabClass.Caption + cbClass.Text);
     RecordStr.Add(TabNotes.Caption);
     RecordStr.Add(DBMemo2.Text);
     Clipboard.AsText := RecordStr.Text;
  finally
    RecordStr.Free
  end;
end;

procedure TmainForm.SP28Click(Sender: TObject);
begin
  with Sender as TSpeedButton do
    Search := Caption;
  ExecuteSQL('SELECT * From tbContacts, tbClass WHERE Name like "' + Search + '%"' + ' AND Class = idClass ORDER BY Name');
end;

procedure TmainForm.ActionFindExecute(Sender: TObject);
var
  chois, Field: string;
begin
  case cbFields.ItemIndex of
    0: Field := 'Name';
    1: Field := 'Function';
    2: Field := 'Email';
    3: Field := 'Adresse';
    4: Field := 'Notes';
    5: Field := 'Home';
    6: Field := 'Mobile';
    7: Field := 'Work';
    8: Field := 'Fax';
  end;
    case cbChois.ItemIndex of
      0: chois := '"' + EditFind.Text + '%"';
      1: chois := '"%' + EditFind.Text + '%"';
      2: chois := '"' + EditFind.Text + '"';
    end;
  ExecuteSQL('SELECT * FROM tbContacts WHERE ' + Field + ' LIKE ' + chois + ' AND Class = idClass');
  EditFind.Clear;
end;

procedure TmainForm.PMShowClick(Sender: TObject);
begin
  ShowHide
end;

procedure TmainForm.sbAllClick(Sender: TObject);
begin
  AllRecords;
end;

procedure TmainForm.EditFindEnter(Sender: TObject);
begin
  with EditFind do
    begin
      Clear;
      Color := clYellow;
    end;
end;

procedure TmainForm.ActionInfosExecute(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  ActionNotes.Checked := false;
  ActionInfos.Checked := true;
  ActionClasses.Checked := false;
end;

procedure TmainForm.ActionNotesExecute(Sender: TObject);
begin
  PageControl.ActivePageIndex := 1;
  ActionNotes.Checked := true;
  ActionInfos.Checked := false;
  ActionClasses.Checked := false;
end;

procedure TmainForm.ActionInsertClassExecute(Sender: TObject);
begin
  tbClass.Insert;
  DBEdit8.SetFocus;
end;

procedure TmainForm.ActionDeleteClassExecute(Sender: TObject);
begin
  if (MessageDlg(Msg_Del_Class, mtConfirmation,
      [mbYes, mbCancel], 0) = mrYes) then
  tbClass.Delete
end;

procedure TmainForm.ActionEditClassExecute(Sender: TObject);
begin
  tbClass.Edit;
  DBEdit8.SetFocus;
end;

procedure TmainForm.ActionPostClassExecute(Sender: TObject);
begin
  tbClass.Post
end;

procedure TmainForm.ActionCancelClassExecute(Sender: TObject);
begin
  tbClass.Cancel
end;

procedure TmainForm.ActionClassesExecute(Sender: TObject);
begin
  PageControl.ActivePageIndex := 2;
  ActionNotes.Checked := false;
  ActionInfos.Checked := false;
  ActionClasses.Checked := true;
end;

procedure TmainForm.EditFindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ActionFindExecute(nil)
end;

procedure TmainForm.FormDestroy(Sender: TObject);
begin
  UnRegisterHotkey(Handle, 1);
  UnRegisterHotkey(Handle, 2);
  if (PNotifyStruc <> NIL) then
    begin
      Shell_NotifyIcon(NIM_DELETE,PNotifyStruc);
      Dispose(PNotifyStruc);
    end;  
end;

procedure TmainForm.ActionPreviewAllExecute(Sender: TObject);
begin
  AllRecords;
  Preview;
end;

procedure TmainForm.ActionPreviewLetterExecute(Sender: TObject);
begin
  CurrentLetter;
  Preview
end;

procedure TmainForm.ActionPreviewRecordExecute(Sender: TObject);
begin
  CurrentRecord;
  Preview;
end;

procedure TmainForm.ActionPreviewClassExecute(Sender: TObject);
begin
  CurrentClass;
  Preview;
end;

procedure TmainForm.EditFindExit(Sender: TObject);
begin
  EditFind.Color := clWindow
end;

procedure TmainForm.cbClassesEnter(Sender: TObject);
begin
  cbClasses.Color := clYellow;
end;

procedure TmainForm.cbClassesExit(Sender: TObject);
begin
  cbClasses.Color := clWindow;
end;

procedure TmainForm.cbFieldsEnter(Sender: TObject);
begin
  with Sender as TComboBox do
    Color := clYellow;
end;

procedure TmainForm.cbFieldsExit(Sender: TObject);
begin
  with Sender as TComboBox do
    Color := clWindow;
end;

procedure TmainForm.AllRecords;
begin
  Search := '*';
  ExecuteSQL('SELECT * From tbContacts, tbClass where Class = idClass ORDER BY Name');
end;

procedure TmainForm.CurrentLetter;
begin
 ExecuteSQL('SELECT * From tbContacts, tbClass WHERE Name like "' + Search + '%"' +' AND Class = idClass ORDER BY Name');
end;

procedure TmainForm.CurrentRecord;
var
  id: integer;
begin
  id := ADOQuery.Fields[0].Value;
  ExecuteSQL('SELECT * From tbContacts, tbClass WHERE id = ' + inttostr(id) + ' AND Class = idClass');
end;

procedure TmainForm.CurrentClass;
var
  idClass: integer;
begin
  idClass := tbClass.Fields[0].Value;
  ExecuteSQL('SELECT * From tbContacts, tbClass WHERE Class=' + inttostr(idClass) +' AND Class = idClass ORDER BY Name');
end;

procedure TmainForm.ActionPrintAllExecute(Sender: TObject);
begin
  AllRecords;
  Print;
end;

procedure TmainForm.ActionPrintLetterExecute(Sender: TObject);
begin
  CurrentLetter;
  Print
end;

procedure TmainForm.ActionPrintRecordExecute(Sender: TObject);
begin
  CurrentRecord;
  Print;
end;

procedure TmainForm.ActionPrintClassExecute(Sender: TObject);
begin
  CurrentClass;
  Print;
end;

procedure TmainForm.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['-', '0'..'9', #37, #39, #46, #8]) then
    key := #0
end;

procedure TmainForm.DBEdit3Change(Sender: TObject);
begin
  with Sender as TDBEdit do
    if length(Text) <= 12 then
    
end;

procedure TmainForm.cbClassesClick(Sender: TObject);
var
  idClass: integer;
begin
  idClass := tbClass.Fields[0].Value;
  ExecuteSQL('SELECT * From tbContacts WHERE Class=' + inttostr(idClass) + ' ORDER BY Name');
end;

end.
