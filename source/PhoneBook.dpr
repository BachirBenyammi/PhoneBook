program PhoneBook;

uses
  Forms,
  Windows,Dialogs, Controls,
  UMain in 'UMain.pas' {mainForm},
  USplash in 'USplash.pas' {SplashForm},
  UReq in 'UReq.pas' {FormReq},
  UConfig in 'UConfig.pas';

{$R *.res}
{$R db.res}
begin
  ShowWindow(Application.Handle, SW_Hide);
  Application.ShowMainForm:=False;
  Application.Initialize;
  if not ExistDatabase then
    if MessageDlg('No database exists, Do you want to create it ?', mtinformation,
      [mbYes, mbNo], 0) = mrYes then
       if not Createdb then
         begin
           ShowMessage('Database created faild !!');
           Exit;
         end
       else
         ShowMessage('Database created succsessfuly !!')
    else
      Exit;
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  Application.Title := 'PhoneBook - BENYAMMI Bachir';
  Application.CreateForm(TmainForm, mainForm);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
