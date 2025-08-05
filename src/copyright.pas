unit copyright;

interface

function CopyrightNote(username: string): string;

implementation

function CopyrightNote(username: string): string;
begin
  CopyrightNote := 'Velar Currency System - Copyright (c) 2025 by ' + username + '. All rights reserved.';
end;

end.
