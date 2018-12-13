unit Contacts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShellApi,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TCont = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label3MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cont: TCont;

implementation

{$R *.dfm}

procedure TCont.FormCreate(Sender: TObject);
begin
  Label1.Caption := 'Программу выполнили студенты КузГТУ, группы ПИб-152: '
                   + #13 + #13
                   +'и ' + #13 + #13
                   +'в рамках курсовой работы.';
end;

procedure TCont.Label2Click(Sender: TObject);
begin
  ShellExecute(application.Handle,'Open','https://vk.com/g_night',Nil,Nil,SW_SHOWDEFAULT);
  label2.Font.Color := clPurple;
end;

procedure TCont.Label2MouseLeave(Sender: TObject);
begin
  Label2.Font.Style:=Label2.Font.Style-[fsUnderLine];
end;

procedure TCont.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label2.Font.Style:=Label2.Font.Style+[fsUnderline];
end;

procedure TCont.Label3Click(Sender: TObject);
begin
  ShellExecute(application.Handle,'Open','https://vk.com/id92615969',Nil,Nil,SW_SHOWDEFAULT);
  label3.Font.Color := clPurple;
end;

procedure TCont.Label3MouseLeave(Sender: TObject);
begin
  Label3.Font.Style:=Label3.Font.Style-[fsUnderLine];
end;

procedure TCont.Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label3.Font.Style:=Label3.Font.Style+[fsUnderline];
end;

end.
