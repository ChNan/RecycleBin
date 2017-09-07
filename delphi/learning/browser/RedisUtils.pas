unit RedisUtils;

interface

uses Redis;

type
  TRedisUtils = class
  private
    fConnection: IRedisConnection;
  public
    constructor Create(Host: string; Port: Integer); overload;
    function SetToRedis(Key: string; Value: string;TTL: Integer): string;
    function GetFromRedis(Key: string): string;
    function DelFromRedis(Key: string): string;
  end;

implementation

uses
  SysUtils;


{ָ��redis�˿�}
constructor TRedisUtils.Create(Host: string; Port: Integer);
begin
  fConnection := TRedis.getConnection(Host, Port)
end;


{ʵ������setex��ָ���˴洢ʱ��}
function TRedisUtils.SetToRedis(Key: string; Value: string; TTL: Integer): string;
var
  Query : string;
begin
  Query := 'setex ' + Key + ' ' + IntToStr(TTL) + ' ' + Value;
  Result := fConnection.ExecuteQuery(Query);
end;

{��redisȡֵ}
function TRedisUtils.GetFromRedis(Key: string): string;
var
  Query : string;
begin
  Query := 'get ' + Key;
  Result := fConnection.ExecuteQuery(Query);
end;

{��redisɾ��}
function TRedisUtils.DelFromRedis(Key: string): string;
var
  Query : string;
begin
  Query := 'del ' + Key;
  Result := fConnection.ExecuteQuery(Query);
end;

end.
