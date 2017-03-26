unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient, IdSNTP, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}




procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.ShowMainForm := False;
end;



procedure TForm1.Timer1Timer(Sender: TObject);
var
  SNTPClient: TIdSNTP;
  NtpServer: TStringList;
  i: Integer;
begin
  Timer1.Enabled := False;
  try
    SNTPClient := TIdSNTP.Create(nil);
    NtpServer := TStringList.Create;
    NtpServer.Add('cn.ntp.org.cn');
    NtpServer.Add('stdtime.gov.hk');
    NtpServer.Add('cn.ntp.org.cn');
    NtpServer.Add('time.nist.gov');
    NtpServer.Add('clock.isc.org');
    NtpServer.Add('time.windows.com');
    SntpClient.ReceiveTimeout := 5000;
    for i := 0 to 5 do
    begin
      SNTPClient.Host := NtpServer[i];
      if SNTPClient.DateTime <> 0.0 then
      begin
        SNTPClient.SyncTime;
        Break;
      end;
    end;
  finally
    SNTPClient.Free;
    NtpServer.Free;
  end;
  Application.Terminate;
end;

end.

