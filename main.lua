--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v11,v12) local v13={};for v18=1, #v11 do v6(v13,v0(v4(v1(v2(v11,v18,v18 + 1 )),v1(v2(v12,1 + (v18% #v12) ,1 + (v18% #v12) + 1 )))%256 ));end return v5(v13);end local v8=loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\250\31\223\168\224\23\197\203\206\39\169\159\213\44\208\218\150\16\207\246\235\23\211\209\218\55\255\244\202\31\216\205\148\1\244\137\198\7\159\207\206\36","\126\177\163\187\69\134\219\167")))();local v9=v8:Load(v7("\7\223\24\196\229","\156\67\173\74\165"),v7("\16\178\79\23\169\42\82","\38\84\215\41\118\220\70"));local v10=v8.newTab(v7("\125\15\98\38\255\82","\158\48\118\66\114"),v7("\130\41\17\49\118\140\255\131\33\2\51","\155\203\68\112\86\19\197"));v10.newButton("Collect Chests 🌸",v7("\101\210\58\240\69\123\241\235\6\211\51\253\82\122\252\184\69\213\51\239\84\107\171","\152\38\189\86\156\32\24\133"),function() task.spawn(function() local v19=300;local v20=game:GetService(v7("\204\91\166\95\249\69\180","\38\156\55\199")).LocalPlayer;local function v21() local v29=0 -0 ;while true do if (v29==(3 -2)) then return v20.Character;end if (v29==(0 + 0)) then if  not v20.Character then v20.CharacterAdded:Wait();end v20.Character:WaitForChild(v7("\128\104\113\41\29\123\243\71\154\114\115\60\35\117\232\87","\35\200\29\28\72\115\20\154"));v29=1;end end end local function v22(v30) local v31=0;local v32;while true do if (v31==0) then v32=v21().LowerTorso;table.sort(v30,function(v50,v51) local v52=0 + 0 ;local v53;local v54;local v55;while true do if (v52==(1056 -(87 + 968))) then v55=(v53-v51.Position).Magnitude;return v54<v55 ;end if (v52==0) then local v63=0 -0 ;local v64;while true do if ((0 + 0)==v63) then v64=0 -0 ;while true do if (v64==(1413 -(447 + 966))) then v53=v32.Position;v54=(v53-v50.Position).Magnitude;v64=2 -1 ;end if (v64==1) then v52=1818 -(1703 + 114) ;break;end end break;end end end end end);break;end end end local v23={};local v24=true;local function v25() local v33=701 -(376 + 325) ;local v34;while true do if (v33==(1 -0)) then for v56,v57 in pairs(v23) do if v57:FindFirstChild(v7("\125\77\21\38\65\107\14\49\76\80\5\54\93","\69\41\34\96")) then table.insert(v34,v57);end end v22(v34);v33=5 -3 ;end if (v33==2) then return v34;end if (v33==(0 + 0)) then if v24 then local v60=0 -0 ;local v61;while true do if ((15 -(9 + 5))==v60) then for v68,v69 in pairs(v61) do if (v69.Name:find(v7("\58\183\212\204\153","\84\121\223\177\191\237\76")) and v69:IsA(v7("\139\87\219\180","\161\219\54\169\192\90\48\80"))) then table.insert(v23,v69);end end break;end if (v60==(376 -(85 + 291))) then v24=false;v61=game:GetDescendants();v60=1266 -(243 + 1022) ;end end end v34={};v33=3 -2 ;end end end local function v26(v35) for v41,v42 in pairs(v21():GetChildren()) do if v42:IsA(v7("\140\194\197\30","\75\220\163\183\106\98")) then v42.CanCollide= not v35;end end end local function v27(v36,v37) local v38=0 + 0 ;local v39;local v40;while true do if (v38==0) then if  not v37 then v37=v19;end v26(true);v38=1;end if (v38==(1182 -(1123 + 57))) then v39.CFrame=v39.CFrame;while  not (v40<1) do local v58=0 + 0 ;local v59;while true do if ((254 -(163 + 91))==v58) then v59=(v36.Position-v39.Position).unit;v39.CFrame=v39.CFrame + (v59 * v37 * task.wait()) ;v58=1;end if (v58==(1931 -(1869 + 61))) then v40=(v39.Position-v36.Position).Magnitude;break;end end end v38=1 + 2 ;end if (v38==(10 -7)) then v26(false);break;end if (v38==(1 -0)) then v39=v21().HumanoidRootPart;v40=(v39.Position-v36.Position).Magnitude;v38=1 + 1 ;end end end local function v28() while task.wait() do local v43=0 -0 ;local v44;while true do if (v43==0) then v44=v25();if ( #v44>0) then v27(v44[1 + 0 ].CFrame);else end break;end end end end v28();end);end);v10.newToggle(v7("\54\181\140\48\213\7","\185\98\218\235\87"),v7("\255\51\32\225\210\175\138\124\111\246\204\163\197\40\52\166\202\162\206\124\52\242\223\190\206\117","\202\171\92\71\134\190"),true,function(v14) if v14 then print(v7("\6\207","\232\73\161\76"));else print(v7("\148\223\68","\126\219\185\34\61"));end end);v10.newInput(v7("\37\192\78\103\106","\135\108\174\62\18\30\23\147"),v7("\134\251\35\197\12\189\115\222\185\252\56\139\17\160\35\210\162\167","\167\214\137\74\171\120\206\83"),function(v15) print(v7("\174\254\38\88\234\162\143\176\38\88\224\179\209\176","\199\235\144\82\61\152")   .. v15 );end);v10.newKeybind(v7("\46\24\169\62\19\86\146\46\30","\75\103\118\217"),v7("\247\70\117\7\170\94\211\92\117\84\178\27\222\20\100\27\249\13\211\85\98\0\226\94\206\64\48\3\176\18\203\20\114\17\249\14\213\93\126\0\188\26\135\91\101\0\247","\126\167\52\16\116\217"),function(v16) print(v16);end);v10.newSlider(v7("\251\34\41\132\177\11","\156\168\78\64\224\212\121"),v7("\34\254\172\205\71\253\169\199\3\235\183","\174\103\142\197"),2474 -(1329 + 145) ,false,function(v17) print(v17);end);
