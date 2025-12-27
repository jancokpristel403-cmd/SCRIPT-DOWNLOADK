local Nbd = 0
local function toass(t,w)
Nbd = Nbd + w
if Nbd ~= 100 then
Strd = "🐤 " .. t .. " in Proggress, " .. Nbd .. "%"
else
Strd = "🐤 " .. t .. ", " .. Nbd .. "%"
end
return gg.toast(Strd)
end
local Saver_CallApi = {}
Saver_CallApi['Api'] = {}
Saver_CallApi['Api']['First'] = {}
Saver_CallApi['Api']['Last'] = {}
Saver_CallApi['Get'] = {'gg','os','io','table','debug','math','string'}
Saver_CallApi['Saver'] = {}
for i in ipairs(Saver_CallApi['Get']) do
API_Name = Saver_CallApi['Get'][i]
for v, z in pairs(_G[API_Name]) do
Saver_CallApi['Saver'][#Saver_CallApi['Saver']+1] = {API_Name,v}
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2]:match('_') and string.len(tostring(Saver_CallApi['Saver'][i][2])) > 12 then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2] ~= nil and Saver_CallApi['Saver'][i][1] ~= nil then
if string.len(tostring(Saver_CallApi['Saver'][i][2])) > 9 then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2] ~= nil and Saver_CallApi['Saver'][i][1] ~= nil then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
local APIList = Saver_CallApi['Api']['First']
local g = {}
g.vers = gg.VERSION
g.verr = gg["VERSION_INT"]
g.last = gg.getFile()
g.info = nil
g.cnf = gg["EXT_CACHE_DIR"] .. "/"
g.config = g.cnf .. gg.getFile():match("[^/]+$") .. ".cfg"
strongs = loadfile(g.config)
if strongs ~= nil then g.info = strongs() strongs = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", ""), false, false, false,false,false} end
local function nesiaP(a,b,c) return gg.prompt(a,b,c) end
gg.setVisible(false)
while true do
goto nes1
:: nes1 ::
g.prp = nesiaP({"📁 File : ", "📂 Outpath :","🐥 use Expired Date","🐥 use Password", "🐥 Change Name","🐥 Reduce time for Encrypt", "🐥 Inject Anti-Compiler ( Beta Test )"}, g.info, {'file','path','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
goto nes2
:: nes2 ::
if g.prp == nil then return end -- if
g.file = g.prp[1]
gg.saveVariable(g.prp, g.config)
g.loading,g.amr = loadfile(g.file)
if g.loading == nil then
gg.alert("🐣 Script can't be loaded. Please Fix First.")
print("🐣 Script can't be loaded. Please Fix First.\n\n" .. g.amr)
break
end -- if
local time_1 = os.time()
g.out = g.prp[2] .. "/"..g.file:match("[^/]+$"):gsub(".lua", "") .. ".[7.1].lua"
g.filename = g.file:match("[^/]+$"):gsub(".lua", "") .. ".[7.1].lua"
local function enc_str(c)
c = {c:byte(1,-1)}
c = table.concat(c, ',')
return 'string.char(table.unpack({' .. c .. '}))'
end
local function match(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = enc_str(bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
Motch = Match

--[[
local ownMy = { };for u , s in pairs(_G) do;if type(s) == 'function' then;ownMy[#ownMy +1] = s;end;if type(s) == 'table' then;for f , ff in pairs(s) do;if type(ff) == 'function' then;ownMy[#ownMy +1] = ff;end;if type(ff) == 'table' then;for uy , iu in pairs(ff) do;if type(iu) == 'function' then;ownMy[#ownMy +1] = iu;end;if type(iu) == 'table' then;for ye , oi in pairs(iu) do;if type(oi) == 'function' then;ownMy[#ownMy +1] = oi;end;if type(oi) == 'table' then;for uc , uv in pairs(oi) do;if type(uv) == 'function' then;ownMy[#ownMy +1] = uv;end;if type(uv) == 'table' then;for ok , oc in pairs(uv) do;if type(oc) == 'function' then;ownMy[#ownMy +1] = oc;end;if type(oc) == 'table' then;for ou , op in pairs(oc) do;ownMy[#ownMy +1] = op;end;end;end;end;end;end;end;end;end;end;end;end;end;local SF = os.clock();local SG = os.time();os.clock();os.time();trySS = { };for ss = 0, 10 do;for u , s in pairs(ownMy) do;if type(s) == 'function' then;TrySS = debug.getinfo(s).func;trySS[#trySS+1] = TrySS;trySS[#trySS+1] = TrySS;trySS[#trySS+1] = TrySS;os.clock();os.time();end;end;end;os.clock();os.time();trySS = { trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS, trySS };for ss = 0, 10 do;for u , s in pairs(ownMy) do;if type(s) == 'function' then;os.clock();os.time();debug.getinfo(s, '', trySS);os.clock();os.time();end;end;end;os.clock();os.time();os.clock();os.time();local AF = os.clock();os.clock();os.time();local AG = os.time();os.clock();os.time();os.clock();os.time();if os.difftime(AG, SG) > 6 then;gg.alert('🍂 Oh shit, here we go again.','','','');os.exit();while true do;_G, _ENV = nil, nil;break;end;return;end;;if os.difftime(AF, SF) > 6 then;gg.alert('🍂 Oh shit, here we go again.','','','');os.exit();while true do;_G, _ENV = nil, nil;break;end;return;end;;;;;
]]--
local Keamanan = ""
local Keamanan = match(Keamanan)
-- Key & Encrypting Function
local KEY_1 = { }
local KEY_2 = { }
local DEGGER_KEY = { [1] = { }, [2] = { } , [3] = { }, [4] = { }, [5] = { } , [6] = { } }
for U = 1, 25 do
DEGGER_KEY[1][U] = math.random(18,30)
DEGGER_KEY[2][U] = math.random(18,30)
DEGGER_KEY[3][U] = math.random(18,30)
KEY_1[U] = (DEGGER_KEY[1][U] + DEGGER_KEY[2][U] + DEGGER_KEY[3][U]) % 56
end
for U = 1, 25 do
DEGGER_KEY[4][U] = math.random(18,30)
DEGGER_KEY[5][U] = math.random(18,30)
DEGGER_KEY[6][U] = math.random(18,30)
KEY_2[U] = (DEGGER_KEY[4][U] + DEGGER_KEY[5][U] + DEGGER_KEY[6][U]) % 68
end
local HidroCoco = {}
local HiderKY = { }
local Hex = { } local Strongs = { }
for i = 0,255 do
Strongs[i] = string.char(i)
HiderKY[(255 - i)] = string.char(i)
end

local StringNumber = { [0] = string.char(65) , [1] = string.char(97) }
for u = 1, 25 do
StringNumber[#StringNumber+1] = string.char(u + 65)
StringNumber[#StringNumber+1] = string.char(u + 97)
end
EncryptStr ={}
EncryptStr[1] = function(c)
c = {c:byte(1,-1)}
for i in ipairs(c) do
c[i] = (c[i] + KEY_1[1] + KEY_1[2] - KEY_1[3] - KEY_1[4] - KEY_1[5]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] - KEY_1[6] + KEY_1[7] - KEY_1[8] + KEY_1[9] + KEY_1[10]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] + KEY_1[11] + KEY_1[12] - KEY_1[13] + KEY_1[14] - KEY_1[15]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] - KEY_1[16] + KEY_1[17] + KEY_1[18] + KEY_1[19] - KEY_1[20]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] + KEY_1[21] - KEY_1[22] - KEY_1[23] - KEY_1[24] + KEY_1[25]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
return "Il(lIl({" .. table.concat(c,',') .. "}), lI)"
end



EncryptStr[2] = function(c)
c = {c:byte(1,-1)}
for i in ipairs(c) do
c[i] = (c[i] - KEY_2[21] + KEY_2[22] + KEY_2[23] + KEY_2[24] - KEY_2[25]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] + KEY_2[16] - KEY_2[17] - KEY_2[18] - KEY_2[19] + KEY_2[20]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] - KEY_2[11] - KEY_2[12] + KEY_2[13] - KEY_2[14] + KEY_2[15]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] + KEY_2[6] - KEY_2[7] + KEY_2[8] - KEY_2[9] - KEY_2[10]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] - KEY_2[1] - KEY_2[2] + KEY_2[3] + KEY_2[4] + KEY_2[5]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
return "DD2({" .. table.concat(c,',') .. "})"
end

EncryptStr[3] = function(...)
c = ...
RealSTR = c
c = { }
RealSTR:gsub('.', function(e)
c[#c+1] = e
return ''
end)
local Str3_Key = { }
for u = 1, 12 do
Str3_Key[u] = math.random(1,#StringNumber)
end
local iNum = {Str3_Key[6] + Str3_Key[7] + Str3_Key[11], Str3_Key[8] + Str3_Key[9], Str3_Key[12]}
for u in ipairs(c) do
iNum[1] = (iNum[1] + iNum[2] + Str3_Key[1] ) % ( iNum[2] + Str3_Key[2] )
iNum[2] = (iNum[2] + Str3_Key[3] ) % ( Str3_Key[6] + iNum[3] )
c[u] = c[u]:byte()
c[u] = (c[u] + iNum[1] + Str3_Key[5] - Str3_Key[1] + Str3_Key[4] - iNum[2]) % 256
c[u] = tostring(c[u])
c[u] = c[u]:gsub('.', function(T)
return StringNumber[tonumber(T)]
end)
c[u] = '"' .. c[u] .. '"'
iNum[3] = iNum[3] * iNum[2] + iNum[1] - Str3_Key[3] - Str3_Key[5] + iNum[3] + iNum[1] + Str3_Key[5]
end
for u in ipairs(Str3_Key) do
Str3_Key[u] = StringNumber[Str3_Key[u]]
end
return 'BDS({["lI"] = {' .. table.concat(c, ',') .. '},"'..table.concat(Str3_Key, '') .. '"})'
end



Lag = {}
for e in ipairs(DEGGER_KEY) do
Lag[#Lag+1] = '{' .. table.concat(DEGGER_KEY[e], ',') .. '}'
end
THE_DEGGER_KEY = '{' .. table.concat(Lag, ',') .. '}'
local Keamanan = Keamanan .. ";;;Func['Degger'] = " ..THE_DEGGER_KEY
-- end key & enc function
local function match(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = EncryptStr[math.random(1,2)](bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
toass('Matching String',5)
io.input(g.file)
g.svStr = io.read("*a")
if g.svStr:match(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93}))) then
repeat
g.svStr = g.svStr:gsub(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93})), function(c)
c = load('return ' .. c)()
return enc_str(c)
end)
until g.svStr:match(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93}))) == nil
end
if g.svStr:match(string.char(table.unpack({37,91,37,91,46,45,37,93,93}))) then
repeat
g.svStr = g.svStr:gsub(string.char(table.unpack({37,91,37,91,46,45,37,93,93})), function(c)
c = load('return ' .. c)()
return enc_str(c)
end)
until g.svStr:match(string.char(table.unpack({37,91,37,91,46,45,37,93,93}))) == nil
end
toass('Checking Settings',20)
function Rand(l)
v = ''
a = {{65,90},{97,122},{48,57}}
for i = 1, l do
o=math.random(1,3)
v = v .. string.char(math.random(a[o][1], a[o][2]))
end
return v
end
if g.prp[3] == true then
g.settings2s = g.cnf .. gg.getFile():match("[^/]+$") .. "_set.date.cfg"
strongs = loadfile(g.settings2s)
if strongs ~= nil then g.settings2 = strongs() strongs = nil end
if g.settings2 == nil then g.settings2 = {os.date("%Y%m%d"), 'ℹ️ Script Expired !!'} end
g.Kemm =g.settings2
goto ex1
:: ex1 ::
g.settings2 = nesiaP({"⌚ Input the Date", "📝 Text of Expired"}, g.Kemm, {'number','text'})
goto ex2
:: ex2 ::
if g.settings2 == nil then goto ex1 end
gg.saveVariable(g.settings2, g.settings2s)
g.svStr = ([[;;if os.date("%Y%m%d") >= "]]) ..g.settings2[1]..([[" then print("]]) .. g.settings2[2] ..([[") return gg.alert("]]) .. g.settings2[2] ..([[") end;;;;]])..g.svStr 
end
if g.prp[4] == true then
g.settings3s = g.cnf .. gg.getFile():match("[^/]+$") .. "_set.pass.cfg"
strongs = loadfile(g.settings3s)
if strongs ~= nil then g.settings3 = strongs() strongs = nil end
if g.settings3 == nil then g.settings3 = {''} end
g.Kem = g.settings3
goto ex1
:: ex1 ::
g.settings3 = nesiaP({"🔐 Input the Password :"}, g.Kem, {'text'})
goto ex2
:: ex2 ::
if g.settings3 == nil then goto ex1 end
gg.saveVariable(g.settings3, g.settings3s)
g.svStr = ([[local BydzP = function(a);return gg.prompt({a}, {''}, {'text'});end
local BydzPass = function(Pass);pStr = ''
goto first
:: wrong ::
BydzGpass = BydzP('🔐 "' .. pStr .. '" is a Wrong Password !')
goto cekp
:: first ::
BydzGpass = BydzP('🔐 Input Password !')
goto cekp
:: cekp ::
if BydzGpass == nil then return false end;if BydzGpass[1] == Pass then;return true;elseif BydzGpass[1] ~= Pass and BydzGpass[1] ~= '' then;pStr = BydzGpass[1];goto wrong
end;end
Bydz2017.pass = BydzPass(']]) .. g.settings3[1] .. ([[')
if not Bydz2017.pass or Bydz2017.pass ~= true then return end
]])..g.svStr 
end
uiWk = "Encryption BydzNesia[7.0] Leaked"
myToast = "Encryption BydzNesia"
if g.prp[5] == true then
g.settings4s = g.cnf .. gg.getFile():match("[^/]+$") .. "_set.name.cfg"
strongs = loadfile(g.settings4s)
if strongs ~= nil then g.settings4 = strongs() strongs = nil end
if g.settings4 == nil then g.settings4 = {'',''} end
g.Keem = g.settings4
goto ex1
:: ex1 ::
g.settings4 = nesiaP({"📝 Write ur Name :","📝 Write toast ( ur name ) :"}, g.Keem, {'text', 'text'})
goto ex2
:: ex2 ::
if g.settings4 == nil then goto ex1 end
gg.saveVariable(g.settings4, g.settings4s)
uiWk = g.settings4[1]
myToast = g.settings4[2]
end
toass('Adding Security & Matching Strings',10)
g.svStr = 'local newTab = {_G["tostring"](_G["gg"]), _G["tostring"](_G["os"]), _G["tostring"](_G["io"]), _G["tostring"](_G["debug"]), _G["tostring"](_G["math"]), _G["tostring"](_G["table"])} ; for a in ipairs(newTab) do ; if string.match(newTab[a], "@") then ; return gg.alert("🐥 Choose ur Mama ?") ; end ; end ; if type(g) == "table" then return os.exit() end; ' .. g.svStr
g.file = g.out
local lasmKey = Rand(16)
local lasmAlert = ([["🐣 Don't dissamsemble this script !"]])
local lines = ";io.input(gg.getFile());if io.read('*a'):match('" .. lasmKey .. "') == nil then ; return gg.alert(" .. lasmAlert .. ") ; end ; " .. g.svStr
io.output(gg["EXT_CACHE_DIR"] .. "/ItsBYDZ.lua")
io.write(lines)
Lines = { }
for A in io.lines(gg["EXT_CACHE_DIR"] .. "/ItsBYDZ.lua") do
Lines[#Lines+1] = match(A)
end
lines = table.concat(Lines,'\n')
os.remove(gg["EXT_CACHE_DIR"] .. "/ItsBYDZ.lua")
g.svStr = lines
g.svStr = g.svStr:gsub("gg.getRangesList", function(c)
print(c)
return '_G[' ..EncryptStr[math.random(1,2)]("gg") .. "]["..EncryptStr[math.random(1,2)]("getRangesList").."]"
end)
toass('Matching GG API',10)
for a in ipairs(APIList) do
V = APIList[a]
if g.svStr:match(V[2]) ~= nil then
repeat
g.svStr = g.svStr:gsub(V[2], function(c)
return "_G["..EncryptStr[math.random(1,2)](V[1]).."]["..EncryptStr[math.random(1,2)](V[3]).."]"
end)
until g.svStr:match(V[2]) == nil
end
end

local asFar = "print%("
if g.svStr:match("print%(") ~= nil then
repeat
g.svStr = g.svStr:gsub("print%(", function(c)
return "_G["..EncryptStr[math.random(1,2)]('print').."]("
end)
until g.svStr:match("print%(") == nil
end
local asFar = "loadfile%("
if g.svStr:match("loadfile%(") ~= nil then
repeat
g.svStr = g.svStr:gsub("loadfile%(", function(c)
return "_G["..EncryptStr[math.random(1,2)]('loadfile').."]("
end)
until g.svStr:match("loadfile%(") == nil
end
os.remove(g.file)
Spammer= (';if nil then ({}).SOR=({}).SOR() ; ({}).SOR =nil ; end;'):rep(8)
toass('Making Decoder',10)
local Decoder = Keamanan .. " ; BydzSPMMZ local DG = { } DG['Strongs'] = { } for G = 0, 255 do DG['Strongs'][string.char(G)] = G end BydzSPMMZ BydzSPMMZ DG['Key'] = {} DG['Deger'] = Func['Degger'] BydzSPMMZ BydzSPMMZ for U = 1, 25 do DG['Key'][U] = (DG['Deger'][1][U] + DG['Deger'][2][U] + DG['Deger'][3][U]) % 56 end BydzSPMMZ DG['IIIII'] = function(...) BydzSPMMZ c = ... for a in ipairs(c) do BydzSPMMZ c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] - DG['Key'][21] + DG['Key'][22] + DG['Key'][23] + DG['Key'][24] - DG['Key'][25]) % 256 end c = string.char(table.unpack(c)) ac = { } c:gsub('.', function(s) ac[#ac+1] = s end) return ac end BydzSPMMZ DG['IIII'] = function(...) c = ... for a in ipairs(c) do c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] + DG['Key'][16] - DG['Key'][17] - DG['Key'][18] - DG['Key'][19] + DG['Key'][20]) % 256 end return DG['IIIII'](c) end BydzSPMMZ DG['III'] = function(...) c = ... for a in ipairs(c) do c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] - DG['Key'][11] - DG['Key'][12] + DG['Key'][13] - DG['Key'][14] + DG['Key'][15]) % 256 end return DG['IIII'](c) end BydzSPMMZ DG['II'] = function(...) c = ... BydzSPMMZ for a in ipairs(c) do c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] + DG['Key'][6] - DG['Key'][7] + DG['Key'][8] - DG['Key'][9] - DG['Key'][10]) % 256 end return DG['III'](c) end DG['lI'] = function(...) c = ... BydzSPMMZ for a in ipairs(c) do c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] - DG['Key'][1] - DG['Key'][2] + DG['Key'][3] + DG['Key'][4] + DG['Key'][5]) % 256 end return DG['II'](c) end BydzSPMMZ local lIl = DG['lI'] local lI = string.char() local ll = table local Il = ll.concat BydzSPMMZ local BD = { } BD['Ctl'] = DG['Strongs'] BD['Key'] = { } BD['Deger'] = DG['Deger'] BydzSPMMZ for U = 1, 25 do BD['Key'][U] = (BD['Deger'][4][U] + BD['Deger'][5][U] + BD['Deger'][6][U]) % 68 end BydzSPMMZ BD['lIlIlIl'] = function(...) c = ... return string.char(table.unpack(c)) end BD['lIlIlI'] = function(...) BydzSPMMZ c = ... for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] + BD['Key'][21] - BD['Key'][22] - BD['Key'][23] - BD['Key'][24] + BD['Key'][25]) % 256 end return BD['lIlIlIl'](c) end BydzSPMMZ BD['lIlIl'] = function(...) c = ... for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] - BD['Key'][16] + BD['Key'][17] + BD['Key'][18] + BD['Key'][19] - BD['Key'][20]) % 256 end return BD['lIlIlI'](c) end BydzSPMMZ BD['lIlI'] = function(...) c = ... BydzSPMMZ for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] + BD['Key'][11] + BD['Key'][12] - BD['Key'][13] + BD['Key'][14] - BD['Key'][15]) % 256 end return BD['lIlIl'](c) end BD['lIl'] = function(...) BydzSPMMZ c = ... for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] - BD['Key'][6] + BD['Key'][7] - BD['Key'][8] + BD['Key'][9] + BD['Key'][10]) % 256 end return BD['lIlI'](c) end BydzSPMMZ BD['lI'] = function(...) c = ... for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] + BD['Key'][1] + BD['Key'][2] - BD['Key'][3] - BD['Key'][4] - BD['Key'][5]) % 256 end return BD['lIl'](c) end local DD2 = BD['lI'] BydzSPMMZ local BS = { } local StringNumber = { [string.char(65)] = 0 , [string.char(97)] = 1} Lender = 1 for u = 1, 25 do Lender = Lender + 1 StringNumber[string.char(u + 65)] = Lender Lender = Lender + 1 StringNumber[string.char(u + 97)] = Lender end  BydzSPMMZ BS['lI'] = function(...) codes = ... BS['Key'] = { } BydzSPMMZ for u in codes[1]:gmatch('.') do u = StringNumber[u] BS['Key'][#BS['Key']+1] = u end local iNum = {BS['Key'][6] + BS['Key'][7] + BS['Key'][11], BS['Key'][8] + BS['Key'][9], BS['Key'][12]} local BydzSPC = codes['lI'] for u in ipairs(BydzSPC) do BydzSPMMZ iNum[1] = (iNum[1] + iNum[2] + BS['Key'][1] ) % ( iNum[2] + BS['Key'][2] ) iNum[2] = (iNum[2] + BS['Key'][3] ) % ( BS['Key'][6] + iNum[3] ) BydzSPMMZ BydzSPC[u] = BydzSPC[u]:gsub('.', function(T) return StringNumber[T] end) BydzSPC[u] = tonumber(BydzSPC[u]) BydzSPC[u] = (BydzSPC[u] - iNum[1] - BS['Key'][5] + BS['Key'][1] - BS['Key'][4] + iNum[2]) % 256 iNum[3] = iNum[3] * iNum[2] + iNum[1] - BS['Key'][3] - BS['Key'][5] + iNum[3] + iNum[1] + BS['Key'][5] end BydzSPMMZ return string.char(table.unpack(BydzSPC)) end local BDS = BS['lI'] BydzSPMMZ "
Decoder = Spammer:rep(4) .. Decoder:gsub('BydzSPMMZ', Spammer) .. ' ;  '
local function enc_str(c)
c = {c:byte(1,-1)}
c = table.concat(c, ',')
return 'string.char(' .. c .. ')'
end
local function Motch(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = enc_str(bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
toass('Comparing String',10)
g.svStr = ([[local A = '\n]]) .. uiWk .. ([[\n'
for i = 1,0 do local B = "]]) .. lasmKey .. ([[" ;end
return (function()
local _G,Bydz2017,Bydz2018,gg,os,io,math,table,debug,Bydz=_G,{},{},gg,os,io,math,table,debug,{}
local Func = {}
Func['Str'] = string
Func['char'] = Func['Str'].char
Func['Tab'] = table
Func['Degger'] = {}
Func['Pack'] = Func['Tab'].unpack
]]) .. Motch('_G["gg"]["setVisible"](false) ;; _G["gg"]["toast"]("'..myToast..'")') .. Decoder .. g.svStr .. '\n' .. ([[; end)()]])
toass('Testing Script',10)


time_ = (os.time() - time_1)
textTime = ''
if time_ > 60 then
min = time_ / 60
sec = time_ - (60*min)
textTime = min.." Minute "..sec.." Seconds"
elseif time_ < 60 then
textTime = time_.." Seconds"
end
local dec_hex = function(...)
Str = ...
bydzBoy = {}
Str = Str:gsub('..', function(c)
c = tonumber(c, 16)
bydzBoy[#bydzBoy+1] = c
return ''
end)
return string.char(table.unpack(bydzBoy))
end
RvarS = {}
Var_Save__ = "0102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F2021222324262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF"
Var_Save__:gsub('..', function(c)
RvarS[#RvarS+1] = string.char(tonumber(c, 16))
return RvarS[#RvarS]
end)
RandVar = function(num)
Flaa = string.char(0)
for u = 2, num do
Flaa = Flaa .. RvarS[math.random(1,#RvarS)]
end
return Flaa
end
RandStr = function(num)
Rags = { { 65, 90 } , { 97, 122 } }
Flaa = ''
for u = 0, num do
Butch = Rags[math.random(1,2)]
Flaa = Flaa .. string.char(math.random(Butch[1], Butch[2]))
end
return Flaa
end
local function Dumping(code)
local Temp = gg.EXT_CACHE_DIR .. '/KKBoyy.lasm'
gg.internal2(load(code), Temp)
strings = {}
for u in io.lines(Temp) do
strings[#strings+1] = u:gsub('	','')
end
for u in ipairs(strings) do
if strings[u]:match('%.func F%d+') then
stop = strings[u]:match('F%d+')
u = u + 7
sva = 0
svo = 0
slaf = 0
i = u
ksy = 0
repeat
i = i +1
if strings[i]:match('%.upval') and strings[i+1] == '' then
sva = i + 2
strings[i] = strings[i] .. '\nJMP :goto_47363749245532345  ; +1 ↓'
strings[i+3] = ':goto_47363749245532345\n' .. strings[i+2]
strings[i+2] = ''
ksy = i+2
end
if strings[i] == '' and strings[i+1]:sub(1,6) == 'RETURN' and strings[i+2]:sub(1,4) == '.end' or strings[i+2]:match('%.func F%d+') then
svo = i
break
end
until strings[i]:sub(1,4) == '.end' or strings[i]:match('%.func F%d+')
slaf = i
sh = sva + 2198
shh = sva + 2198
asu = sh + 2198
bajing = shh + 2198
GH = {099 + 2198,66+2198,383+2198}
Miness = {}
Minuss = {}
savarnu={}
for o = u, slaf do
if strings[o]:match('%.end ; F%d+') or strings[o]:match('%.func F%d+') then i = o  do break end end
if strings[o]:sub(1,4) == 'CALL' or strings[o]:sub(1,8) == 'GETTABUP' or strings[o]:sub(1,8) == 'GETTABLE' or strings[o]:sub(1,5) == 'LOADK' or strings[o]:sub(1,3) == 'DIV' or strings[o]:sub(1,3) == 'MUL' or strings[o]:sub(1,3) == 'ADD' or strings[o]:sub(1,8) == 'SETTABLE' or strings[o]:sub(1,7) == 'SETLIST' or strings[o]:sub(1,8) == 'NEWTABLE' or strings[o]:sub(1,3) == 'MOD' or strings[o]:sub(1,8) == 'TAILCALL' or strings[o]:sub(1,3) == 'LEN' or strings[o]:sub(1,8) == 'GETUPVAL' or strings[o]:sub(1,8) == 'SETUPVAL' or strings[o]:sub(1,6) == 'VARARG' or strings[o]:sub(1,4) == 'MOVE' or strings[o]:sub(1,8) == 'NEWTABLE'  then
repeat asu = asu + math.random(1,999999) until savarnu[asu] == nil
repeat bajing = bajing + math.random(1,999999) until savarnu[bajing] == nil
repeat sh = sh + math.random(1,999999) until savarnu[sh] == nil
repeat shh = shh + math.random(1,999999) until savarnu[shh] == nil
PUKI = math.random(1,3)
repeat GH[1] = GH[1] + math.random(0,999999999999) until Miness[GH[1]] == nil
repeat GH[2] = GH[2] + math.random(0,999999999999) until Miness[GH[2]] == nil
repeat GH[3] = GH[3] + math.random(0,999999999999) until Miness[GH[3]] == nil
if PUKI == 1 then
Miness[GH[1]] = ':goto_' .. asu .. '\n' .. strings[o] .. '\nJMP :goto_'..bajing..'  ; +1 ↓'
elseif PUKI == 2 then
Miness[GH[1]] = ':goto_' .. asu .. '\nJMP :goto_'..sh..'  ; +1 ↓'
Miness[GH[2]] = ':goto_' .. sh .. '\n' .. strings[o] .. '\nJMP :goto_'..bajing..'  ; +1 ↓'
elseif PUKI == 3 then
Miness[GH[1]] = ':goto_' .. asu .. '\nJMP :goto_'..shh..'  ; +1 ↓'
Miness[GH[2]] = ':goto_' .. sh .. '\n' .. strings[o] .. '\nJMP :goto_'..bajing..'  ; +1 ↓'
Miness[GH[3]] = ':goto_' .. shh .. '\nJMP :goto_'..sh..'  ; +1 ↓'
end
strings[o] = '\nJMP :goto_'..asu..'  ; +1 ↓\n:goto_' .. bajing
savarnu[asu] = 1
savarnu[bajing] = 1
savarnu[sh] = 1
savarnu[shh] = 1
end
end
levis = {}
for s,ss in pairs(Miness) do
levis[#levis+1] = ss
end
strings[sva] = table.concat(levis, '\n')

end
end
kvgyhb = table.concat(strings,'\n')
repeat
kvgyhb = kvgyhb:gsub('\n\n\n','\n\n')
until kvgyhb:match('\n\n\n') == nil
lines = string.dump(load(kvgyhb), true)
return lines
end


function Dumper(codes)
local codes = string.dump(load(codes),true)
local Dumped=Dumping(codes)
return Dumped
end

toass('Dumping Script',10)
g.svStr = Dumper(g.svStr)
--g.svStr = string.dump(load(g.svStr), true)
toass('Testing Script',5)
io.output(g.out)
io.write(g.svStr)
gg.alert('🌟 Script was Successfully Encrypted !\n⌚ Time : ' .. textTime)
print("📣 Script was Successfully Encrypted !")
print("📂 File writted to : " .. g.filename)
break
end -- while