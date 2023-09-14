{$DEFINE FPC}
{$mode delphi}

unit DFun.Null;

interface

uses
{$IFDEF FPC}
  SysUtils;
{$ELSE}
  System.Classes,
  System.SysUtils;
{$ENDIF}

type
  INull = interface
  ['{20928069-739E-4EB9-A959-BA6FEE0055EE}']
  end;

  Null = class
    class var Value: INull;
  end;

  TNull = class(TInterfacedObject, INull)
  end;

implementation

initialization
  Null.Value := TNull.Create;

end.
