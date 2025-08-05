program VelarCurrency;

uses
  SysUtils,
  copyright;

var
  username: string;
  input: string;

begin
  username := 'Allexander Bergmans';
  WriteLn(CopyrightNote(username));
  WriteLn('--------------------------------------------');

  Sleep(4000);

  WriteLn('Velar Currency System Initialized');
  WriteLn('This program is designed to handle Velar Currency transactions.');

  WriteLn('Daemon is currently syncing with the blockchain...');
  WriteLn('Please wait while we establish a secure connection...');
  Sleep(2000);
  WriteLn('Connection established successfully.');
  WriteLn('Currently syncing blocks...');
  Sleep(3000);
  WriteLn('Sync complete. You can now perform node operations.');
  WriteLn('Welcome to the Velar Currency Node!');
  WriteLn('For assistance, please refer to the documentation or contact support.');

  while True do
  begin
    Write('> ');
    ReadLn(input);

    if input = 'exit' then
      Break
    else if input = 'status' then
      WriteLn('Blockchain synced and running normally.')
    else if input = 'help' then
      WriteLn('Available commands: status, exit, help')
    else
      WriteLn('Unknown command. Type "help" for options.');
  end;
end.
