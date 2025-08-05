unit commands;

interface

function HandleCommand(const input: string): Boolean;

implementation

uses
  SysUtils;

function HandleCommand(const input: string): Boolean;
var
  cmd: string;
begin
  cmd := LowerCase(input);
  HandleCommand := False; // default: keep running

  if cmd = 'exit' then
  begin
    HandleCommand := True;  // signal to exit loop
  end
  else if cmd = 'status' then
  begin
    WriteLn('Blockchain synced and running normally.');
  end
  else if cmd = 'help' then
  begin
    WriteLn('Available commands: status, exit, help');
  end
  else
  begin
    WriteLn('Unknown command. Type "help" for options.');
  end;
end;


end.
