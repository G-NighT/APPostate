program APPostate;

uses
  Forms,
  MainForm in 'MainForm.pas' {MainFrm},
  Vcl.Themes,
  Vcl.Styles,
  Contacts in 'Contacts.pas' {Cont};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'APPostate';
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TMainFrm, MainFrm);
  Application.CreateForm(TCont, Cont);
  Application.Run;
end.
