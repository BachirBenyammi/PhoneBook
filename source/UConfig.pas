unit UConfig;

interface

uses windows, SysUtils, Forms, Classes, Dialogs;

  function ExistDatabase: Boolean;
  function Createdb:boolean;
  function bddPath: string;
  function AppPath: string;
  function CntString: string;

implementation

function AppPath: string;
var
  str: string;
begin
  str := ExtractFilePath(Application.ExeName);
  if str[length(str)] <> '\' then
    str := str + '\';
  result := str;
end;

function ExistDatabase: Boolean;
begin
  result := FileExists(bddPath);
end;

function CntString: string;
begin
  result := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + bddPath + ';Persist Security Info=False';
end;

function bddPath: string;
begin
  result := AppPath + 'base\base.mdb';
end;

function Createdb: boolean;
var
  ResStream : TResourceStream;
  FileStream : TFileStream;
  bddDir: string;
begin
  bddDir := ExtractFilePath(bddPath);
  if not DirectoryExists(bddDir) then
    if not CreateDir(bddDir) then
      begin
        Result := false;
        Exit;
      end;
  ResStream:=TResourceStream.Create(hInstance, 'db', RT_RCDATA);
  try
    FileStream:=TFileStream.Create(bddPath, fmCreate);
    try
      FileStream.CopyFrom(ResStream, 0);
    finally
      FileStream.Free;
    end;
  finally
    ResStream.Free;
  end;
  result := FileExists(bddPath);
end;

end.
