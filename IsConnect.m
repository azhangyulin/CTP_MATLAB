function isconnect = IsConnect()
global md td
isconnect = ~isempty(md) && ~isempty(td);
end
