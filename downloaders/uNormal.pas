unit uNormal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdHTTP, System.Zip,
  ActiveX, IdSSLOpenSSL, AdvMetroProgressBar;

type
  TDownload = class;

  Tfrmnormaldownloader = class(TForm)
    lblprogress: TLabel;
    pb1: TAdvMetroProgressBar;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    link, path, extractpath: string;
    extract, error: Boolean;
  end;

  TDownload = class(TThread)
  private
    httpclient: TIdHTTP;
    url: string;
    filename: string;
    maxprogressbar: integer;
    progressbarstatus: integer;
    procedure ExtractZip(ZipFile: string; ExtractPath: string);
    procedure idhttp1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure idhttp1WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure UpdateProgressBar;
    procedure SetMaxProgressBar;
  protected
    procedure Execute; override;
  public
    constructor Create(CreateSuspended: boolean; aurl, afilename: string);
    destructor Destroy; override;
  end;

var
  frmnormaldownloader: Tfrmnormaldownloader;

implementation

{$R *.dfm}

{ TDownload }

constructor TDownload.Create(CreateSuspended: boolean; aurl, afilename: string);
begin
  inherited Create(CreateSuspended);
  httpclient := TIdHTTP.Create(nil);
  httpclient.OnWorkBegin := idhttp1WorkBegin;
  httpclient.OnWork := idhttp1Work;
  url := aurl;
  filename := afilename;
end;

procedure TDownload.idhttp1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  progressbarstatus := AWorkCount;
  Queue(UpdateProgressBar);

end;

procedure TDownload.idhttp1WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  maxprogressbar := AWorkCountMax;
  Queue(SetMaxProgressBar);
end;

procedure TDownload.Execute;
var
  Stream: TMemoryStream;
begin
  Stream := TMemoryStream.Create;
  try
    httpclient.Get(url, Stream);
    Stream.SaveToFile(filename);
  finally
    Stream.Free;
    if frmnormaldownloader.extract = true then
    begin
      frmnormaldownloader.Caption := 'Done Downloading. Extracting Files...';
      Sleep(2000);
      ExtractZip(frmnormaldownloader.path, frmnormaldownloader.extractpath);
    end
    else
    begin
      frmnormaldownloader.Caption := 'Done.';
      frmnormaldownloader.error := False;
      frmnormaldownloader.Close;
    end;
  end;
end;

procedure TDownload.ExtractZip(ZipFile, ExtractPath: string);
begin
  if TZipFile.IsValid(ZipFile) then
  begin
    TZipFile.ExtractZipFile(ZipFile, ExtractPath);
    DeleteFile(ZipFile);
    frmnormaldownloader.Caption := 'Done.';
    frmnormaldownloader.error := False;
    frmnormaldownloader.Close;
  end
  else
  begin
    frmnormaldownloader.Caption := 'Error.';
    frmnormaldownloader.error := True;
    frmnormaldownloader.Close;
  end;
end;

procedure TDownload.UpdateProgressBar;
var
  total: Real;
begin
  frmnormaldownloader.pb1.Position := progressbarstatus;
  frmnormaldownloader.Caption := 'Downloading...';
  if maxprogressbar > 0 then
  begin
    total := progressbarstatus / maxprogressbar * 100;
    total := Round(total);
    frmnormaldownloader.lblprogress.Caption := FloatToStr(total) + ' %';
  end;
end;

procedure TDownload.SetMaxProgressBar;
begin
  frmnormaldownloader.pb1.Max := maxprogressbar;
end;

destructor TDownload.Destroy;
begin
  FreeAndNil(httpclient);
  inherited Destroy;
end;

procedure Tfrmnormaldownloader.FormShow(Sender: TObject);
var
  DownloadThread: TDownload;
begin
  pb1.Position := 0;
  lblprogress.Caption := '';
  DownloadThread := TDownload.Create(true, link, path);
  DownloadThread.FreeOnTerminate := true;
  DownloadThread.Start;
end;

end.

