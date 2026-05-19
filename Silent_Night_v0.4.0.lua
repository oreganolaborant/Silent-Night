local L = {}
local V = {}

-- Define MPX as a function that returns the appropriate prefix string
local function MPX()
    return "MP" .. stats.get_int("MPPLY_LAST_MP_CHAR") .. "_"
end

-- Global Variables

-- Free Mode Global Variables
L.FMg = 262145 -- free mode global ("CASH_MULTIPLIER")
L.XMg = L.FMg + 1 -- xp multiplier global ("XP_MULTIPLIER")
L.CSg1 = 1575042 						-- change session (type) 1
L.CSg2 = 1574589 						-- change session (switch) 2
L.CSg3 = 1574589 + 2 					-- change session (quit) 3

-- Auto Shop variables
L.ASIFl1 = 55789 + 1 -- auto shop instant finish local 1 
L.ASIFl2 = 55789 + 1776 + 1 -- auto shop finish local 2 
L.ASRBl = 406 -- auto shop reload board local 

-- Doomsday Heist Variables
L.DDSHl = 1296 + 135 -- doomsday doomsday scenario hack local
L.DCg1 = 1967983 + 812 + 50 + 1 -- doomsday player 1 cut global
L.DCg2 = 1967983 + 812 + 50 + 2 -- doomsday player 2 cut global
L.DCg3 = 1967983 + 812 + 50 + 3 -- doomsday player 3 cut global
L.DCg4 = 1967983 + 812 + 50 + 4 -- doomsday player 4 cut global
L.GCg = 2685249 + 6615 -- global cut global (value2 = value2 * (num / 100f);)
L.DDIF1 = 19791 -- doomsday instant finish local 1
L.DDIF2 = 19791 + 1740 + 1 -- doomsday instant finish local 2
L.DDIF3 = 28412 + 1 -- doomsday instant finish local 3
L.DDIF4 = 31668 + 1 + 68 -- doomsday instant finish local 4
L.DDIF5 = 31668 + 97 -- doomsday instant finish local 5

-- Cayo Perico Heist Variables
L.CPRSl = 1568 -- cayo perico reload screen local 
L.CPCg1 = 1978756 + 831 + 56 + 1 -- cayo perico player 1 cut global
L.CPCg2 = 1978756 + 831 + 56 + 2 -- cayo perico player 2 cut global
L.CPCg3 = 1978756 + 831 + 56 + 3 -- cayo perico player 3 cut global
L.CPCg4 = 1978756 + 831 + 56 + 4 -- cayo perico player 4 cut global
L.CPBg = L.FMg + 29299
L.CPFHl = 26084  -- cayo perico fingerprint hack local 
L.CPPCCl = 32187 + 3 -- cayo perico plasma cutter cut local
L.CPSTCl = 30947 -- cayo perico drainage pipe cut local
L.CPXf1 = 55789 -- cayo perico instant finish local 1
L.CPXf2 = 55789 + 1776 + 1 -- cayo perico instant finish local 2
L.CPBagTunable = "HEIST_BAG_MAX_CAPACITY"  -- Bag Size Tunable
L.CPCutPavel = "IH_DEDUCTION_PAVEL_CUT"    -- Pavel's Cut
L.CPCutFee = "IH_DEDUCTION_FENCING_FEE"    -- Fencing Fee

-- Apartment Heist Variables
L.ACg1 = 1935536 + 1 + 1 -- global apartment player 1 cut global
L.ACg2 = 1935536 + 1 + 2 -- global apartment player 2 cut global
L.ACg3 = 1935536 + 1 + 3 -- global apartment player 3 cut global
L.ACg4 = 1935536 + 1 + 4 -- global apartment player 4 cut global
L.ACg5 = 1937504 + 3008 + 1 -- local apartment player 1 cut global
L.AUAJg1 = L.FMg + 9184 -- apartment unlock all jobs global 1
L.AUAJg2 = L.FMg + 9189 -- apartment unlock all jobs global 2
L.AUAJg3 = L.FMg + 9196 -- apartment unlock all jobs global 3
L.AUAJg4 = L.FMg + 9202 -- apartment unlock all jobs global 4
L.AUAJg5 = L.FMg + 9208 -- apartment unlock all jobs global 5
L.AIFl1 = 19791 -- apartment instant finish local 1
L.AIFl2 = 19791 + 1062 -- apartment instant finish local 2
L.AIFl3 = 19791 + 1740 + 1 -- apartment instant finish local 3 
L.AIFl4 = 19791 + 2686 -- apartment instant finish local 4 
L.AIFl5 = 28412 + 1 -- apartment instant finish local 5
L.AIFl6 = 31668 + 1 + 68 -- apartment instant finish local 6
L.AFHl = 11821 + 24 -- apartment fleeca hack local 
L.AFDl = 10109 + 11 -- apartment fleeca drill local
L.AFPl = 9815 -- apartment pacific hack local
L.AHSo = 19791 + 2  -- Apartment heist skip checkpoint
L.AHRg = 1935571
L.ACDg = 1877158
L.AHDg = 4718592 + 3538
L.AHCooldownStep2 = 2635125 + 1  -- Cooldown Step 2
L.AHUnavailableJobs = 2635124  -- Unavailable Jobs Global

-- Diamond Casino Heist Variables
L.DCRBl = 210 -- diamond casino reload board local
L.DCCg1 = 1971952 + 1497 + 736 + 92 + 1 -- diamond casino player 1 cut global
L.DCCg2 = 1971952 + 1497 + 736 + 92 + 2 -- diamond casino player 2 cut global
L.DCCg3 = 1971952 + 1497 + 736 + 92 + 3 -- diamond casino player 3 cut global
L.DCCg4 = 1971952 + 1497 + 736 + 92 + 4 -- diamond casino player 4 cut global
L.DCFHl = 53132      -- diamond casino fingerprint hack local
L.DCKHl = 54198      -- diamond casino keypad hack local
L.DCDVDl1 = 10149 + 7 -- diamond casino drill vault door local 1
L.DCDVDl2 = 10149 + 37 -- diamond casino drill vault door local 2
L.DCXf1 = 19791 -- diamond casino instant finish local 1
L.DCXf2 = 19791 + 1062 -- diamond casino instant finish local 2
L.DCXf3 = 19791 + 1740 + 1 -- diamond casino instant finish local 3
L.DCXf4 = 19791 + 2686 -- diamond casino instant finish local 4
L.DCXf5 = 28412 + 1 -- diamond casino instant finish local 5
L.DCXf6 = 31668 + 1 + 68 -- diamond casino instant finish local 6
L.DCAg = 10295
L.DCAs = 10295 + 14
L.DCABuyerLow = "CH_BUYER_MOD_SHORT"
L.DCABuyerMid = "CH_BUYER_MOD_MED"
L.DCABuyerHigh = "CH_BUYER_MOD_LONG"

-- Heists
L.HGLs1 = 4718592 + 3539
L.HGLs2 = 4718592 + 3540
L.HGLs3 = 4718592 + 3542 + 1
L.HGLs4 = 4718592 + 185951 + 1
L.HGGs1 = 20054 + 34
L.HGGs2 = 20054 + 15

-- Agency Variables
L.AGFl1 = 55789 + 1
L.AGFl2 = 55789 + 1776 + 1

-- Bunker Variables
L.GSIg = 1673807 + 1 + 5 		-- get supplies instantly global
L.BCISl = 1266 + 774 	-- bunker crash instant sell local
L.BCFp1 = 2708790 + 1 + 5 * 2 -- bunker fast production
L.BCFp2 = 2708790 + 1 + 5 * 2 + 1 -- bunker fast production 

-- Hangar Variables
L.HCVISl1 = 1989 + 1078 -- hangar cargo vip instant sell local 1
L.HCVISl2 = 1989 + 1035 -- hangar cargo vip instant sell local 2

-- Nightclub Variables
L.NLSCg = L.FMg + 23769 -- night loop safe capacity global
L.NLISg = L.FMg + 23746 -- night loop income start global
L.NLIEg = L.FMg + 23765 -- night loop income end global
L.NLCl = 206 + 32 + 19 + 1 -- night loop collect local
L.NLTl = 206 + 32 + 2 -- night safe type local
L.NCVg = 1845250

-- Special Cargo Variables
L.SCVMTl = 567 + 7 		-- special cargo vip mission type local
L.SCVISl = 567 + 1 		-- special cargo vip instant sell local

-- MC Business Variables
L.MCPwv = L.FMg + 17412  
L.MCPmV = L.FMg + 17417  
L.MCPcockV = L.FMg + 17416  
L.MCPcashV = L.FMg + 17415   
L.MCPfakeV = L.FMg + 17414   
L.MCPacidV = L.FMg + 17413

-- Collectibles Variables
L.CUg = 2709274 -- collectibles unlocker global
L.SJo = 216 -- signal jammers offset

-- Salvage Yard Variables
L.SYRl1 = 535
L.SYSalvageMultiplier = 1601153005  
L.SYSetupPrice = 71522671           
L.SYClaimPriceStandard = "SALV23_VEHICLE_CLAIM_PRICE"                   
L.SYClaimPriceDiscounted = "SALV23_VEHICLE_CLAIM_PRICE_FORGERY_DISCOUNT" 

-- Gun Van Variables
L.GVADg = L.FMg + 33391
L.GVWDg = L.FMg + 33372
L.GVTDg = L.FMg + 33383

-- Casino
L.CRS = 1372

local function SkipCutscene()
    script.run_in_fiber(function(script)
        if CUTSCENE.IS_CUTSCENE_PLAYING() then
            CUTSCENE.STOP_CUTSCENE_IMMEDIATELY()
            script:sleep(100)
            CUTSCENE.REMOVE_CUTSCENE()
        end
    end)
end

-- Required Functions --

local function MoneyFormatter(n)
	n = tostring(n)
	return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end

L.stat_ranges = {
	{stat = "PSTAT_BOOL", start = 0, finish = 191},
	{stat = "???", start = 192, finish = 512},
	{stat = "MP_PSTAT_BOOL", start = 513, finish = 704},
	{stat = "???", start = 705, finish = 2918},
	{stat = "MP_TUPSTAT_BOOL", start = 2919, finish = 3110},
	{stat = "TUPSTAT_BOOL", start = 3111, finish = 3878},
	{stat = "???", start = 3879, finish = 4206},
	{stat = "NGPSTAT_BOOL", start = 4207, finish = 4334},
	{stat = "MP_NGPSTAT_BOOL", start = 4335, finish = 4398},
	{stat = "???", start = 4399, finish = 6028},
	{stat = "NGTATPSTAT_BOOL", start = 6029, finish = 6412},
	{stat = "???", start = 6413, finish = 7320},
	{stat = "MP_NGDLCPSTAT_BOOL", start = 7321, finish = 7384},
	{stat = "NGDLCPSTAT_BOOL", start = 7385, finish = 7640},
	{stat = "???", start = 7641, finish = 9360},
	{stat = "DLCBIKEPSTAT_BOOL", start = 9361, finish = 9552},
	{stat = "???", start = 9553, finish = 15368},
	{stat = "DLCGUNPSTAT_BOOL", start = 15369, finish = 15560},
	{stat = "???", start = 15561, finish = 15561},
	{stat = "GUNTATPSTAT_BOOL", start = 15562, finish = 15945},
	{stat = "DLCSMUGCHARPSTAT_BOOL", start = 15946, finish = 16009},
	{stat = "???", start = 16010, finish = 18097},
	{stat = "GANGOPSPSTAT_BOOL", start = 18098, finish = 18161},
	{stat = "???", start = 18162, finish = 22065},
	{stat = "BUSINESSBATPSTAT_BOOL", start = 22066, finish = 22193},
	{stat = "???", start = 22194, finish = 24961},
	{stat = "ARENAWARSPSTAT_BOOL", start = 24962, finish = 25537},
	{stat = "???", start = 25538, finish = 26809},
	{stat = "CASINOPSTAT_BOOL", start = 26810, finish = 27257},
	{stat = "???", start = 27256, finish = 28097},
	{stat = "CASINOHSTPSTAT_BOOL", start = 28098, finish = 28353},
	{stat = "???", start = 28354, finish = 28354},
	{stat = "HEIST3TATTOOSTAT_BOOL", start = 28355, finish = 28482},
	{stat = "???", start = 28483, finish = 30226},
	{stat = "SU20PSTAT_BOOL", start = 30227, finish = 30354},
	{stat = "SU20TATTOOSTAT_BOOL", start = 30355, finish = 30482},
	{stat = "???", start = 30483, finish = 30514},
	{stat = "HISLANDPSTAT_BOOL", start = 30515, finish = 30706},
	{stat = "???", start = 30707, finish = 31706},
	{stat = "TUNERPSTAT_BOOL", start = 31707, finish = 32282},
	{stat = "FIXERPSTAT_BOOL", start = 32283, finish = 32410},
	{stat = "FIXERTATTOOSTAT_BOOL", start = 32411, finish = 32474},
	{stat = "???", start = 32475, finish = 34122},
	{stat = "GEN9PSTAT_BOOL", start = 34123, finish = 34250},
	{stat = "DLC12022PSTAT_BOOL", start = 34251, finish = 34762},
	{stat = "???", start = 34763, finish = 36626},
	{stat = "DLC22022PSTAT_BOOL", start = 36627, finish = 36946},
	{stat = "???", start = 36947, finish = 41250},
	{stat = "DLC22022TATTOOSTAT_BOOL", start = 41251, finish = 41314},
	{stat = "DLC12023PSTAT_BOOL", start = 41315, finish = 42082},
	{stat = "???", start = 42083, finish = 42106},
	{stat = "DLC22023PSTAT_BOOL", start = 42107, finish = 42298},
	{stat = "???", start = 42299, finish = 51058},
	{stat = "DLC22023TATTOOSTAT_BOOL", start = 51059, finish = 51186}
}

local function stats_set_packed_bools(packed_bool_start, packed_bool_finish, bool)
	for i = packed_bool_start, packed_bool_finish do
		stats.set_packed_stat_bool(i, bool)
	end
end

local function changeSession(session)
    script.run_in_fiber(function(script)
        globals.set_int(L.CSg1, session)
        if session == -1 then
            globals.set_int(L.CSg3, -1)
        end
        script:sleep(1000)
        globals.set_int(L.CSg2, 1)
        script:sleep(1000)
        globals.set_int(L.CSg2, 0)
    end)
end

local function globals_set_ints(global_start, global_finish, step, value)
	for i = global_start, global_finish, step do
		globals.set_int(i, value)
	end
end

local function null() end


-- Silent Night Tab
Silent = gui.get_tab("Silent Night v0.4.0")
Silent:add_text("Silent Night v0.4.0")
Silent:add_text("YOUR RP LEVEL IS " .. stats.get_int(joaat(MPX() .. "CHAR_RANK_FM")))
Silent:add_text("YOUR CREW RANK IS " .. stats.get_int(joaat("MPPLY_CURRENT_CREW_RANK")))

-- Stat  Editor --
local rp = {    
    0,
    800,
    2100,
    3800,
    6100,
    9500,
    12500,
    16000,
    19800,
    24000,
    28500,
    33400,
    38700,
    44200,
    50200,
    56400,
    63000,
    69900,
    77100,
    84700,
    92500,
    100700,
    109200,
    118000,
    127100,
    136500,
    146200,
    156200,
    166500,
    177100,
    188000,
    199200,
    210700,
    222400,
    234500,
    246800,
    259400,
    272300,
    285500,
    299000,
    312700,
    326800,
    341000,
    355600,
    370500,
    385600,
    401000,
    416600,
    432600,
    448800,
    465200,
    482000,
    499000,
    516300,
    533800,
    551600,
    569600,
    588000,
    606500,
    625400,
    644500,
    663800,
    683400,
    703300,
    723400,
    743800,
    764500,
    785400,
    806500,
    827900,
    849600,
    871500,
    893600,
    916000,
    938700,
    961600,
    984700,
    1008100,
    1031800,
    1055700,
    1079800,
    1104200,
    1128800,
    1153700,
    1178800,
    1204200,
    1229800,
    1255600,
    1281700,
    1308100,
    1334600,
    1361400,
    1388500,
    1415800,
    1443300,
    1471100,
    1499100,
    1527300,
}

local SN_Manager = Silent:add_tab("Player Manager ")
SN_Manager:add_text("Your current Rank is ".. stats.get_int(joaat(MPX() .. "CHAR_RANK_FM")))
V.globalFix = SN_Manager:add_checkbox("Fix Global Rank")
V.rpLevel = SN_Manager:add_input_int("Rank")
SN_Manager:add_button("Set Rank",
function ()
	if V.rpLevel:get_value() > 8000 or V.rpLevel:get_value() < 0 then
		gui.show_message("ERROR", "YOUR RP LEVEL ".. V.rpLevel:get_value().." CANNOT BE SET BECAUSE IT IS ABOVE/BELOW LIMIT")
	else
		if V.rpLevel:get_value() >= 98 then
			STATS.STAT_SET_INT(joaat(MPX() .. "CHAR_SET_RP_GIFT_ADMIN"), 25 * (V.rpLevel:get_value() ^ 2) + 23575 * V.rpLevel:get_value() - 1023150, true)
			gui.show_message("Rank CORRECTION", "YOUR RANK WAS SET TO "..V.rpLevel:get_value()..", CHANGING SESSION...")
			changeSession(8)
		else
			STATS.STAT_SET_INT(joaat(MPX() .. "CHAR_SET_RP_GIFT_ADMIN"), rp[V.rpLevel:get_value()], true)
			changeSession(8)
		end
	end

	if V.globalFix:is_enabled() then
		stats.set_int("MPPLY_GLOBALXP", rp[V.rpLevel:get_value()])
	end
end)
SN_Manager:add_separator()
SN_Manager:add_text("Your current Crew Rank is ".. stats.get_int(joaat("MPPLY_CURRENT_CREW_RANK")))
V.level = SN_Manager:add_input_int("Rank")
SN_Manager:add_button("Set Rank",
function()
	if not (V.level:get_value() > 0 and V.level:get_value() <= 8000) then
		gui.show_message("ERROR", "YOUR RP LEVEL ".. V.level:get_value() .. " CANNOT BE SET BECAUSE IT IS ABOVE LIMIT")
	else
		for i = 0, 4 do
			stats.set_int("MPPLY_CREW_LOCAL_XP_" .. i, ranks[V.level:get_value()])
		end
		gui.show_message("CREW RANK HAS BEEN SET TO " .. ranks[V.level:get_value()] .. " SUCCESSFULY", "CHANGING SESSION TO GET THE CREW RANK")
		changeSession(8)
	end
end)
SN_Manager:add_separator()
SN_Manager:add_button("Max Player Skills",
function ()
	stats.set_int(MPX() .. "SCRIPT_INCREASE_DRIV", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_FLY", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_LUNG", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_SHO", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STAM", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STL", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STRN", 100)
end)
SN_Manager:add_sameline()
SN_Manager:add_button("Reset Player Skills",
function ()
	stats.set_int(MPX() .. "SCRIPT_INCREASE_DRIV", 0)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_FLY", 0)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_LUNG", 0)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_SHO", 0)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STAM", 0)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STL", 0)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STRN", 0)
end)

-- Heist Tool tab
SN_Heist_Tool = Silent:add_tab("Heist Tool ")

-- Cut Setter for Heist --
local function CutsPresetter(global_start, global_finish, cut)
	globals.set_int(L.GCg, cut)
	for i = global_start, global_finish do
		globals.set_int(i, cut)		
	end
end

-- Apartment Heist --

local SN_Apartment = SN_Heist_Tool:add_tab("Apartment Heist ")
SN_Apartment:add_text("Preps")
SN_Apartment:add_button("Complete Preps", function()
    stats.set_int(MPX() .. "HEIST_PLANNING_STAGE", -1)
    gui.show_message("Apartment Heist", "Preps should've been completed")
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Redraw Board", function()
    globals.set_int(L.AHRg, 22)
    gui.show_message("Apartment Heist", "Board should've been redrawn")
end)
SN_Apartment:add_text("For Fleeca:")
SN_Apartment:add_text("Pay for the preparation, start the first mission and as soon as you are sent to scout\nchange the session, come back to planning room, press \"Complete Preps\" near white board and press \"E\"")
SN_Apartment:add_text("For Other Heists:")
SN_Apartment:add_text("Start the mission and leave after the 1st cutscene ends, press \"Complete Preps\" near white board and press \"E\"")
SN_Apartment:add_separator()
SN_Apartment:add_button("Kill Cooldown", function()
    globals.set_int(L.ACDg + 1 + (PLAYER.PLAYER_ID() * 77) + 76, -1)
    gui.show_message("Apartment Heist", "Cooldown should've been killed")
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Change Session", function()
    changeSession(8)
end)

V.heistCuts = {
    easy = {
        [1328892776] = {-5862, 2981},
        [964111671] =  {-1614, 857},  
        [1131632450] = {-1168, 634},
        [1967927346] = {-1596, 848},
        [1182286714] = {-700, 400}
    },
    normal = {
        [1328892776] = {-2878, 1489},
        [964111671] =  {-756, 428},
        [1131632450] = {-534, 317},
        [1967927346] = {-748, 424},
        [1182286714] = {-300, 200}
    },
    hard = {
        [1328892776] = {-2284, 1192},
        [964111671] =  {-584, 342},
        [1131632450] = {-406, 253},
        [1967927346] = {-578, 339},
        [1182286714] = {-220, 160}
    }
}

SN_Apartment:add_separator()
SN_Apartment:add_text("Works only for you. Allows you to get 12 millions bonus for The Pacific Standard Job on hard difficulty.\nEnable before starting the heist. Has a cooldown.")

V.apartmentBonus = SN_Apartment:add_checkbox("12mil Bonus")
V.previousState = false

script.register_looped("SN_Apartment_Bonus", function(script)
    script:yield()
    V.currentState = V.apartmentBonus:is_enabled()
    if V.currentState ~= V.previousState then
        stats.set_int(joaat("MPPLY_HEISTFLOWORDERPROGRESS"), V.currentState and 268435455 or 134217727)
        stats.set_bool(joaat("MPPLY_AWD_HST_ORDER"), not V.currentState)
        stats.set_int(joaat("MPPLY_HEISTTEAMPROGRESSBITSET"), V.currentState and 268435455 or 134217727)
        stats.set_bool(joaat("MPPLY_AWD_HST_SAME_TEAM"), not V.currentState)
        stats.set_int(joaat("MPPLY_HEISTNODEATHPROGREITSET"), V.currentState and 268435455 or 134217727)
        stats.set_bool(joaat("MPPLY_AWD_HST_ULT_CHAL"), not V.currentState)
        gui.show_message("12mil Bonus", V.currentState and "Bonus should've been applied. Don't forget about difficulty" or "Bonus should've been unapplied")
        V.previousState = V.currentState
    end
    script:sleep(100)
end)

SN_Apartment:add_separator()
V.difficultyKeys = {"easy", "normal", "hard"}
SN_Apartment:add_button("3mil Payout", function()
    script.run_in_fiber(function(ap)
        V.key = globals.get_int(L.ACDg + (PLAYER.PLAYER_ID() * 77) + 24 + 2)
        V.difficultyG = globals.get_int(L.AHDg)
        V.difficulty = V.difficultyKeys[difficultyG + 1]
        V.cuts = V.heistCuts[difficulty][V.key]
        if V.cuts then
            globals.set_int(L.ACg1, 100 - (V.cuts[2] * locals.get_int("fmmc_launcher", L.HGGs1)))
            globals.set_int(L.ACg2, V.cuts[2])
            if V.key ~= 1328892776 then
                globals.set_int(L.ACg3, V.cuts[2])
                globals.set_int(L.ACg4, V.cuts[2])
            end
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
            ap:sleep(1000)
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 202, 1)
            ap:sleep(1000)
            globals.set_int(L.ACg5, -1 * (-100 + V.cuts[1]) / 2)
            gui.show_message("Apartment Heist", "Cuts should've been applied")
        end
    end)
end)
SN_Apartment:add_separator()


V.apartCut1 = 0
V.apartCut2 = 0
V.apartCut3 = 0
V.apartCut4 = 0
SN_Apartment:add_imgui(
    function ()
        PAD.DISABLE_CONTROL_ACTION(2, 237, true)
        ImGui.Text("Custom Cuts:")
        ImGui.SetNextItemWidth(150)
        V.apartCut1 = ImGui.InputInt("Cut 1", V.apartCut1)
        ImGui.SameLine()
        ImGui.SetNextItemWidth(150)
        V.apartCut2 = ImGui.InputInt("Cut 2", V.apartCut2)
        ImGui.SetNextItemWidth(150)
        V.apartCut3 = ImGui.InputInt("Cut 3", V.apartCut3)
        ImGui.SameLine()
        ImGui.SetNextItemWidth(150)
        V.apartCut4 = ImGui.InputInt("Cut 4", V.apartCut4)
        if ImGui.Button("Set Cuts") then
            script.run_in_fiber(function(ccut)
                V.heistType = locals.get_int("fmmc_launcher", L.HGGs1)
                local multiplier = (V.heistType == 1328892776) and 2 or 4
                globals.set_int(L.ACg1, 100 - (V.apartCut1 * multiplier))
                globals.set_int(L.ACg2, V.apartCut2)
                globals.set_int(L.ACg3, V.apartCut3)
                globals.set_int(L.ACg4, V.apartCut4)
                PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
                ccut:sleep(1000)
                PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 202, 1)
                ccut:sleep(1000)
                globals.set_int(L.ACg5, -1 * (-100 + globals.get_int(L.ACg1)) / multiplier)
                gui.show_message("Apartment Heist", "Cuts should've been applied")
            end)
        end
    end
)
SN_Apartment:add_separator()
SN_Apartment:add_text("Misc")
SN_Apartment:add_button("Solo Launch",
function()
	if locals.get_int("fmmc_launcher", L.HGGs1) ~= nil then
		if locals.get_int("fmmc_launcher", L.HGGs1) ~= 0 then
			if locals.get_int("fmmc_launcher", L.HGGs1) > 1 then
					locals.set_int("fmmc_launcher", L.HGGs2, 1)
                    globals.set_int(L.HGLs1, 1)
			end
			globals.set_int(L.HGLs1, 1)
            globals.set_int(L.HGLs2, 1)
            globals.set_int(L.HGLs3, 1)
            globals.set_int(L.HGLs4, 0)
		end
	end
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Skip Cutscene", SkipCutscene)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Skip Checkpoint", function()
    locals.set_int("fm_mission_controller", L.AHSo, locals.get_int("fm_mission_controller", L.AHSo) | (1 << 17))
	gui.show_message("Apartment Heist", "Checkpoint should've been skipped")
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Force Ready", function()
    script.run_in_fiber(function(script)
        network.force_script_host("fm_mission_controller")
        script:sleep(1000)
        for i = 1, 4 do
            globals.set_int(2658291 + 1 + ((i - 1) * 468) + 270, 6)
        end
        gui.show_message("Apartment Heist", "Everyone should've been forced ready")
    end)
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Instant Finish", function()
    script.run_in_fiber(function(script)
        network.force_script_host("fm_mission_controller")
        script:sleep(1000)
        V.heistType = globals.get_int(L.ACDg + (PLAYER.PLAYER_ID() * 77) + 24 + 2)
        if V.heistType == 1182286714 then
            locals.set_int("fm_mission_controller", L.AIFl2, 5)
            locals.set_int("fm_mission_controller", L.AIFl3, 80)
            locals.set_int("fm_mission_controller", L.AIFl4, 10000000)
            locals.set_int("fm_mission_controller", L.AIFl5, 99999)
            locals.set_int("fm_mission_controller", L.AIFl6, 99999)
        else
            locals.set_int("fm_mission_controller", L.AIFl1, 12)
            locals.set_int("fm_mission_controller", L.AIFl4, 99999)
            locals.set_int("fm_mission_controller", L.AIFl5, 99999)
            locals.set_int("fm_mission_controller", L.AIFl6, 99999)
        end
    end)
end)
SN_Apartment:add_button("Bypass Fleeca Hack", function()
    locals.set_int("fm_mission_controller", L.AFHl, 7)
    gui.show_message("Apartment Heist", "Hacking process should've been skipped")
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Bypass Fleeca Drill", function()
    locals.set_float("fm_mission_controller", L.AFDl, 100)
    gui.show_message("Apartment Heist", "Drilling process should've been skipped")
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Bypass Pacific Hack", function()
    locals.set_int("fm_mission_controller", L.AFPl, 9)
    gui.show_message("Apartment Heist", "Hacking process should've been skipped")
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Unlock All Jobs", function()
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_0", globals.get_int(L.AUAJg1))
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_0_L", 5)
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_1", globals.get_int(L.AUAJg2))
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_1_L", 5)
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_2", globals.get_int(L.AUAJg3))
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_2_L", 5)
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_3", globals.get_int(L.AUAJg4))
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_3_L", 5)
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_4", globals.get_int(L.AUAJg5))
    stats.set_int(MPX() .. "HEIST_SAVED_STRAND_4_L", 5)
	gui.show_message("Apartment Heist", "All jobs should've been unlocked. Don't forget to restart the game")
end)
SN_Apartment:add_button("Kill Cooldown", function()
    V.playerId = PLAYER.PLAYER_ID()
    globals.set_int(L.ACDg + 1 + (V.playerId * 77) + 76, -1)
    globals.set_int(L.AHCooldownStep2, 0)
    gui.show_message("Apartment Heist", "Cooldown should've been killed")
end)
SN_Apartment:add_sameline()
SN_Apartment:add_button("Play Unavailable Jobs", function()
    globals.set_int(L.AHCooldownStep2, 0)
    globals.set_int(L.AHUnavailableJobs, 0)
    gui.show_message("Apartment Heist", "Unavailable jobs should now be playable")
end)
SN_Apartment:add_text("Note: After Clicking Unlock All Heists, restart the game")

-- Cayo Heist --
local function CutsPresetter(global_start, global_finish, cut)
	globals.set_int(L.GCg, cut)
	for i = global_start, global_finish do
		globals.set_int(i, cut)
	end
end
V.CayoPericoDifficulties = {
    { name = "Normal", index = 126823 },
    { name = "Hard", index = 131055 }
}

V.cayoApproachList = {
    { name = "Kosatka", index = 65283 },
    { name = "Alkonost", index = 65413 },
    { name = "Velum", index = 65289 },
    { name = "Stealth Annih.", index = 65425 },
    { name = "Patrol Boat", index = 65313 },
    { name = "Longfin", index = 65345 },
    { name = "All Ways", index = 65535 }
}

V.cayoLoadoutList = {
    { name = "Aggressor", index = 1 },
    { name = "Conspirator", index = 2 },
    { name = "Crackshot", index = 3 },
    { name = "Saboteur", index = 4 },
    { name = "Marksman", index = 5 }
}

V.cayoPrimaryList = {
    { name = "Sinsimito Tequil.", index = 0 },
    { name = "Ruby Necklace", index = 1 },
    { name = "Bearer Bonds", index = 2 },
    { name = "Pink Diamond", index = 3 },
    { name = "Madrazo Files", index = 4 },
    { name = "Panther Statue", index = 5 }
}

V.cayoSecondaryTargetList = {
    { name = "None", index = 0      },
    { name = "Cash", index = "CASH" },
    { name = "Weed", index = "WEED" },
    { name = "Coke", index = "COKE" },
    { name = "Gold", index = "GOLD" }
}

V.cayoCompoundAmountList = {
    { name = "Empty", index = 0   },
    { name = "Full",  index = 255 },
    { name = "1",     index = 128 },
    { name = "2",     index = 64  },
    { name = "3",     index = 196 },
    { name = "4",     index = 204 },
    { name = "5",     index = 220 },
    { name = "6",     index = 252 },
    { name = "7",     index = 253 }
}

V.cayoIslandAmountList = {
    { name = "Empty", index = 0        },
    { name = "Full",  index = 16777215 },
    { name = "1",     index = 8388608  },
    { name = "2",     index = 12582912 },
    { name = "3",     index = 12845056 },
    { name = "4",     index = 12976128 },
    { name = "5",     index = 13500416 },
    { name = "6",     index = 14548992 },
    { name = "7",     index = 16646144 },
    { name = "8",     index = 16711680 },
    { name = "9",     index = 16744448 },
    { name = "10",    index = 16760832 },
    { name = "11",    index = 16769024 },
    { name = "12",    index = 16769536 },
    { name = "13",    index = 16770560 },
    { name = "14",    index = 16770816 },
    { name = "15",    index = 16770880 },
    { name = "16",    index = 16771008 },
    { name = "17",    index = 16773056 },
    { name = "18",    index = 16777152 },
    { name = "19",    index = 16777184 },
    { name = "20",    index = 16777200 },
    { name = "21",    index = 16777202 },
    { name = "22",    index = 16777203 },
    { name = "23",    index = 16777211 }
}

V.cayoArtsAmountList = {
    { name = "Empty", index = 0 },
    { name = "Full", index = 127 },
    { name = "1", index = 64 },
    { name = "2", index = 96 },
    { name = "3", index = 112 },
    { name = "4", index = 120 },
    { name = "5", index = 122 },
    { name = "6", index = 126 }
}

V.cayoValues = {
    Cash = 83250,
    Weed = 135000,
    Coke = 202500,
    Gold = 333333,
    Arts = 180000
}

V.cayoLocations = {
	{name="Front Gate", x=4990.0386, y=-5717.6895, z=19.876024},
	{name="El Rubio's Office", x=5010.12, y=-5750.1353, z=28.844675},
	{name="Primary Target", x=5006.7, y=-5756.2, z=15.483983},
	{name="Secondary Target", x=4999.764160, y=-5749.863770, z=14.840000},
	{name="Safe Zone", x=4771.479, y=-6165.737, z=-39.079613},
	{name="Entrance Drinage Pipe", x=5043.74, y=-5815.3193, z=-10.574497},
	{name="Enter Cayo Perico", x=5053.8516, y=-5772.852, z=-4.1588774},
	{name="Elevator", x=5012.1533, y=-5749.0107, z=28.945145},
}

V.CayoPericoCrewCut = {
    { tunable = "IH_DEDUCTION_PAVEL_CUT", default = -0.02 },
    { tunable = "IH_DEDUCTION_FENCING_FEE", default = -0.1 }
}

local SN_Cayo = SN_Heist_Tool:add_tab("Cayo Perico Heist ")
SN_Cayo:add_text("Cayo Bag Size Editor")
V.cayobag = SN_Cayo:add_input_int("Bag Size")
V.cayobag:set_value(1800)
SN_Cayo:add_button("Set Bag Size", function()
    tunables.set_int(L.CPBagTunable, V.cayobag:get_value())
    gui.show_message("Cayo Perico", "Bag size set to " .. V.cayobag:get_value())
end)
V.womansBag = SN_Cayo:add_checkbox("Woman's Bag (Auto Bag Size)")
script.register_looped("cayo_womans_bag", function()
    if V.womansBag:is_enabled() then
        tunables.set_int(L.CPBagTunable, 99999)
    else
        tunables.set_int(L.CPBagTunable, 1800)
    end
end)

SN_Cayo:add_separator()
SN_Cayo:add_text("Preps:")
V.cayoDifficultyNames = {}
for _, item in ipairs(V.CayoPericoDifficulties) do
    table.insert(V.cayoDifficultyNames, item.name)
end
V.cayoDifficultyIndex = 0
SN_Cayo:add_imgui(function()
	ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Difficulty", V.cayoDifficultyIndex, V.cayoDifficultyNames, #V.cayoDifficultyNames)
    if changed then
        V.cayoDifficultyIndex = V.nIndex
    end
end)

V.cayoApproachNames = {}
for _, item in ipairs(V.cayoApproachList) do
    table.insert(V.cayoApproachNames, item.name)
end
V.cayoApproachIndex = 0
SN_Cayo:add_imgui(function()
	ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Approach", V.cayoApproachIndex, V.cayoApproachNames, #V.cayoApproachNames)
    if changed then
        V.cayoApproachIndex = V.nIndex
    end
end)

V.cayoLoadoutNames = {}
for _, item in ipairs(V.cayoLoadoutList) do
    table.insert(V.cayoLoadoutNames, item.name)
end
V.cayoLoadoutIndex = 0
SN_Cayo:add_imgui(function()
	ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Loadout", V.cayoLoadoutIndex, V.cayoLoadoutNames, #V.cayoLoadoutNames)
    if changed then
        V.cayoLoadoutIndex = V.nIndex
    end
end)

V.cayoPrimaryNames = {}
for _, item in ipairs(V.cayoPrimaryList) do
    table.insert(V.cayoPrimaryNames, item.name)
end
V.cayoPrimaryIndex = 0
SN_Cayo:add_imgui(function()
	ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Target", V.cayoPrimaryIndex, V.cayoPrimaryNames, #V.cayoPrimaryNames)
    if changed then
        V.cayoPrimaryIndex = V.nIndex
    end
end)

V.cayoCompoundNames = {}
for _, item in ipairs(V.cayoSecondaryTargetList) do
    table.insert(V.cayoCompoundNames, item.name)
end
V.cayoCompoundIndex = 0
SN_Cayo:add_imgui(function()
    ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Com. Target", V.cayoCompoundIndex, V.cayoCompoundNames, #V.cayoCompoundNames)
    if changed then
        V.cayoCompoundIndex = V.nIndex
    end
end)

V.cayoCompoundAmountNames = {}
for _, item in ipairs(V.cayoCompoundAmountList) do
    table.insert(V.cayoCompoundAmountNames, item.name)
end
V.cayoCompoundAmountIndex = 0
SN_Cayo:add_imgui(function()
    ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Com. Amount", V.cayoCompoundAmountIndex, V.cayoCompoundAmountNames, #V.cayoCompoundAmountNames)
    if changed then
        V.cayoCompoundAmountIndex = V.nIndex
    end
end)

V.cayoArtsAmountNames = {}
for _, item in ipairs(V.cayoArtsAmountList) do
    table.insert(V.cayoArtsAmountNames, item.name)
end
V.cayoArtsAmountIndex = 0
SN_Cayo:add_imgui(function()
    ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Arts Amount", V.cayoArtsAmountIndex, V.cayoArtsAmountNames, #V.cayoArtsAmountNames)
    if changed then
        V.cayoArtsAmountIndex = V.nIndex
    end
end)

V.cayoIslandIndex = 0
SN_Cayo:add_imgui(function()
    ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Isl. Target", V.cayoIslandIndex, V.cayoCompoundNames, #V.cayoCompoundNames)
    if changed then
        V.cayoIslandIndex = V.nIndex
    end
end)

V.cayoIslandAmountNames = {}
for _, item in ipairs(V.cayoIslandAmountList) do
    table.insert(V.cayoIslandAmountNames, item.name)
end
V.cayoIslandAmountIndex = 0
SN_Cayo:add_imgui(function()
    ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("Isl. Amount", V.cayoIslandAmountIndex, V.cayoIslandAmountNames, #V.cayoIslandAmountNames)
    if changed then
        V.cayoIslandAmountIndex = V.nIndex
    end
end)

SN_Cayo:add_separator()
SN_Cayo:add_button("Apply & Complete Preps", function()
    V.difficulty = CayoPericoDifficulties[V.cayoDifficultyIndex + 1].index
    V.approach = V.cayoApproachList[V.cayoApproachIndex + 1].index
    V.loadout = V.cayoLoadoutList[V.cayoLoadoutIndex + 1].index
    V.primaryTarget = V.cayoPrimaryList[V.cayoPrimaryIndex + 1].index
    V.compoundTarget = V.cayoSecondaryTargetList[V.cayoCompoundIndex + 1].index
    V.compoundAmount = V.cayoCompoundAmountList[V.cayoCompoundAmountIndex + 1].index
    V.islandTarget = V.cayoSecondaryTargetList[V.cayoIslandIndex + 1].index
    V.islandAmount = V.cayoIslandAmountList[V.cayoIslandAmountIndex + 1].index
    V.artsAmount = V.cayoArtsAmountList[V.cayoArtsAmountIndex + 1].index

    stats.set_int(MPX() .. "H4CNF_BS_GEN", -1)
    stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
    stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
    stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
    stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 10)
    stats.set_int(MPX() .. "H4_PROGRESS", V.difficulty)
    stats.set_int(MPX() .. "H4_MISSIONS", V.approach)
    stats.set_int(MPX() .. "H4CNF_WEAPONS", V.loadout)
    stats.set_int(MPX() .. "H4CNF_TARGET", V.primaryTarget)
    stats.set_int(MPX() .. "H4LOOT_CASH_C", (V.compoundTarget == "CASH") and V.compoundAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", (V.compoundTarget == "CASH") and V.compoundAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_WEED_C", (V.compoundTarget == "WEED") and V.compoundAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", (V.compoundTarget == "WEED") and V.compoundAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_COKE_C", (V.compoundTarget == "COKE") and V.compoundAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", (V.compoundTarget == "COKE") and V.compoundAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_GOLD_C", (V.compoundTarget == "GOLD") and V.compoundAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", (V.compoundTarget == "GOLD") and V.compoundAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_CASH_I", (V.islandTarget == "CASH") and V.islandAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", (V.islandTarget == "CASH") and V.islandAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_WEED_I", (V.islandTarget == "WEED") and V.islandAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", (V.islandTarget == "WEED") and V.islandAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_COKE_I", (V.islandTarget == "COKE") and V.islandAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", (V.islandTarget == "COKE") and V.islandAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_GOLD_I", (V.islandTarget == "GOLD") and V.islandAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", (V.islandTarget == "GOLD") and V.islandAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_PAINT", (V.artsAmount ~= 0) and V.artsAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", (V.artsAmount ~= 0) and V.artsAmount or 0)
    stats.set_int(MPX() .. "H4LOOT_CASH_V", (V.compoundTarget ~= 0 or V.islandTarget ~= 0) and V.cayoValues.Cash or 0)
    stats.set_int(MPX() .. "H4LOOT_WEED_V", (V.compoundTarget ~= 0 or V.islandTarget ~= 0) and V.cayoValues.Weed or 0)
    stats.set_int(MPX() .. "H4LOOT_COKE_V", (V.compoundTarget ~= 0 or V.islandTarget ~= 0) and V.cayoValues.Coke or 0)
    stats.set_int(MPX() .. "H4LOOT_GOLD_V", (V.compoundTarget ~= 0 or V.islandTarget ~= 0) and V.cayoValues.Gold or 0)
    stats.set_int(MPX() .. "H4LOOT_PAINT_V", (V.artsAmount ~= 0) and V.cayoValues.Arts or 0)
    stats.set_int(MPX() .. "H4CNF_UNIFORM", -1)
    stats.set_int(MPX() .. "H4CNF_GRAPPEL", -1)
    stats.set_int(MPX() .. "H4CNF_TROJAN", 5)
    stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
    stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
    stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
    
    locals.set_int("heist_island_planning", L.CPRSl, 2)
    payoutCSelected()
    gui.show_message("Cayo Perico Heist", "Preps should've been completed")
end)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Reset Preps", function()
    stats.set_int(MPX() .. "H4_PROGRESS", 0)
    stats.set_int(MPX() .. "H4_MISSIONS", 0)
    stats.set_int(MPX() .. "H4CNF_APPROACH", 0)
    stats.set_int(MPX() .. "H4CNF_TARGET", -1)
    stats.set_int(MPX() .. "H4CNF_BS_GEN", 0)
    stats.set_int(MPX() .. "H4CNF_BS_ENTR", 0)
    stats.set_int(MPX() .. "H4CNF_BS_ABIL", 0)
    stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 0)
    locals.set_int("heist_island_planning", L.CPRSl, 2)
end)
SN_Cayo:add_separator()
SN_Cayo:add_text("Removes fencing fee and Pavel's cut")
V.cayoCrewCuts = SN_Cayo:add_checkbox("Remove Crew Cuts")
script.register_looped("SN_CayoPerico_Crew", function()
    V.remove = V.cayoCrewCuts:is_enabled()
    for _, cut in ipairs (V.CayoPericoCrewCut) do
        if remove then
            tunables.set_float(cut.tunable, 0)
        else
            tunables.set_float(cut.tunable, cut.default)
        end
    end
end)
function SetCayoMaxPayout()
    V.target = stats.get_int(MPX() .. "H4CNF_TARGET")
    V.difficulty = (stats.get_int(MPX() .. "H4_PROGRESS") == V.CayoPericoDifficulties[2].index) and 2 or 1
    V.payouts = {
        [0] = { 630000, 693000 },
        [1] = { 700000, 770000 },
        [2] = { 770000, 847000 },
        [3] = { 1300000, 1430000 },
        [4] = { 1100000, 1210000 },
        [5] = { 1900000, 2090000 }
    }
    if V.payouts[V.target] == nil then return end
    V.payout = V.payouts[V.target][V.difficulty]
    V.maxPayout = 2550000
    V.cut = math.floor(V.maxPayout / (V.payout / 100))
    V.finalPayout = math.floor(V.payout * (V.cut / 100))
    V.difference = 1000
    V.pavelCut = math.abs(tunables.get_float("IH_DEDUCTION_PAVEL_CUT"))
    V.fencingCut = math.abs(tunables.get_float("IH_DEDUCTION_FENCING_FEE"))
    V.foundCut = false
    while not foundCut do
        V.pavelFee = math.floor(V.finalPayout * V.pavelCut)
        V.fencingFee = math.floor(V.finalPayout * V.fencingCut)
        V.feePayout = V.finalPayout - (pavelFee + fencingFee)
        if V.feePayout >= V.maxPayout - V.difference and V.feePayout <= V.maxPayout then
            foundCut = true
        else
            V.cut = V.cut + 1
            V.finalPayout = math.floor(V.payout * (V.cut / 100))
            if V.cut > 500 then
                V.cut = math.floor(V.maxPayout / (V.payout / 100))
                V.finalPayout = math.floor(V.payout * (V.cut / 100))
                V.difference = V.difference + 1000
            end
        end
    end
    return V.cut
end

SN_Cayo:add_separator()
SN_Cayo:add_text("Custom Cuts:")
V.cayocut1 = SN_Cayo:add_input_int("Cut 1")
V.cayocut2 = SN_Cayo:add_input_int("Cut 2")
V.cayocut3 = SN_Cayo:add_input_int("Cut 3")
V.cayocut4 = SN_Cayo:add_input_int("Cut 4")

V.Presets = {
    { name = "All - 0%", index = 0 },
    { name = "All - 85%", index = 85 },
    { name = "All - 100%", index = 100 },
    { name = "2.55mil Payout", index = -1 }
}

V.presetNames = {}
for _, preset in ipairs(V.Presets) do
    table.insert(V.presetNames, preset.name)
end
V.sPresetIndex = 0

function payoutCSelected()
    if V.Presets[V.sPresetIndex + 1].index == -1 then
        V.cutValue = SetCayoMaxPayout()
        if V.cayocut1 then V.cayocut1:set_value(V.cutValue) end
        if V.cayocut2 then V.cayocut2:set_value(V.cutValue) end
        if V.cayocut3 then V.cayocut3:set_value(V.cutValue) end
        if V.cayocut4 then V.cayocut4:set_value(V.cutValue) end
    end
end

SN_Cayo:add_imgui(function()
    ImGui.Text("Presets:")
	ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("##CayoPreset", V.sPresetIndex, V.presetNames, #V.presetNames)
    if changed then
        V.sPresetIndex = V.nIndex
        V.selected = V.Presets[V.sPresetIndex + 1]
        V.cutValue = V.selected.index
        if V.cutValue == -1 then
            V.cutValue = SetCayoMaxPayout()
        end
        if V.cayocut1 then V.cayocut1:set_value(V.cutValue) end
        if V.cayocut2 then V.cayocut2:set_value(V.cutValue) end
        if V.cayocut3 then V.cayocut3:set_value(V.cutValue) end
        if V.cayocut4 then V.cayocut4:set_value(V.cutValue) end
    end
end)

SN_Cayo:add_button("Apply Cuts", function()
    globals.set_int(L.CPCg1, V.cayocut1:get_value())
    globals.set_int(L.CPCg2, V.cayocut2:get_value())
    globals.set_int(L.CPCg3, V.cayocut3:get_value())
    globals.set_int(L.CPCg4, V.cayocut4:get_value())
    gui.show_message("Cayo Perico Heist", "Cuts should've been applied")
end)
SN_Cayo:add_separator()
SN_Cayo:add_text("Reload Planning Screen")
SN_Cayo:add_button("Reload Planning Screen",
function ()
	locals.set_int("heist_island_planning", L.CPRSl, 2)
	gui.show_message("Cayo Perico Heist", "Screen should've been reloaded")
end)
SN_Cayo:add_separator()
SN_Cayo:add_text("Misc")
SN_Cayo:add_button("Bypass Drainge Cut",
function ()
	locals.set_int("fm_mission_controller_2020", L.CPSTCl, 6)
	gui.show_message("Cayo Perico Heist", "Cutting process should've been skipped")
end)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Bypass Fingerprint Scanner",
function ()
	locals.set_int("fm_mission_controller_2020", L.CPFHl, 5)
	gui.show_message("Cayo Perico Heist", "Hacking process should've been skipped")
end)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Bypass Plasma Cutter",
function ()
	locals.set_float("fm_mission_controller_2020", L.CPPCCl, 100.0)
	gui.show_message("Cayo Perico Heist", "Cutting process should've been skipped")
end)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Remove All CCTV's",
function ()
	for _, ent in pairs(entities.get_all_objects_as_handles()) do
		for __, cam in pairs(CamList) do
			if ENTITY.GET_ENTITY_MODEL(ent) == cam then
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
				ENTITY.DELETE_ENTITY(ent)
			end
		end
	end
end)
CamList = {
	joaat("prop_cctv_cam_01a"), joaat("prop_cctv_cam_01b"), joaat("prop_cctv_cam_02a"), joaat("prop_cctv_cam_03a"),
	joaat("prop_cctv_cam_04a"), joaat("prop_cctv_cam_04c"), joaat("prop_cctv_cam_05a"), joaat("prop_cctv_cam_06a"),
	joaat("prop_cctv_cam_07a"), joaat("prop_cs_cctv"), joaat("p_cctv_s"), joaat("hei_prop_bank_cctv_01"),
	joaat("hei_prop_bank_cctv_02"), joaat("ch_prop_ch_cctv_cam_02a"), joaat("xm_prop_x17_server_farm_cctv_01"),
}

SN_Cayo:add_button("Instant Finish", function()
    locals.set_int("fm_mission_controller_2020", L.CPXf1, 9)
    locals.set_int("fm_mission_controller_2020", L.CPXf2, 50)
	gui.show_message("Cayo Perico Heist", "Heist should've been finished")
end)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Skip Cutscene", SkipCutscene)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Force Ready", function()
    script.run_in_fiber(function(script)
        network.force_script_host("fm_mission_controller_2020")
        script:sleep(1000)
        for i = 1, 4 do
            globals.set_int(1979868 + 1 + ((i - 1) * 27) + 7 + i, 1)
        end
        gui.show_message("Cayo Perico Heist", "Everyone should've been forced ready")
    end)
end)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Kill Cooldown (after solo)", function()
    stats.set_int(MPX() .. "H4_TARGET_POSIX", 1659643454)
    stats.set_int(MPX() .. "H4_COOLDOWN", 0)
    stats.set_int(MPX() .. "H4_COOLDOWN_HARD", 0)
	gui.show_message("Cayo Perico Heist", "Cooldown should've been killed")
end)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Kill Cooldown (after team)", function()
    stats.set_int(MPX() .. "H4_TARGET_POSIX", 1659429119)
    stats.set_int(MPX() .. "H4_COOLDOWN", 0)
    stats.set_int(MPX() .. "H4_COOLDOWN_HARD", 0)
	gui.show_message("Cayo Perico Heist", "Cooldown should've been killed")
end)
SN_Cayo:add_button("Go Offline", function()
    globals.set_int(L.CSg1, -1)
    globals.set_int(L.CSg3, -1)
    globals.set_int(L.CSg2, 1)
    script.run_in_fiber(function(s)
        s:sleep(1000)
        globals.set_int(L.CSg2, 0)
    end)
    gui.show_message("Cayo Perico", "Going offline...")
end)
SN_Cayo:add_sameline()
SN_Cayo:add_button("Go Online", function()
    changeSession(8)
    gui.show_message("Cayo Perico", "Going online...")
end)
SN_Cayo:add_text("After clicking the Kill Cooldown button, go offline and then come back online")

SN_Cayo:add_text("Teleports")
	
for i, location in ipairs(V.cayoLocations) do
    SN_Cayo:add_button(location.name, function()
        local ped = PLAYER.PLAYER_PED_ID()
        PED.SET_PED_COORDS_KEEP_VEHICLE(ped, location.x, location.y, location.z)
    end)
    
    if i < 6 or i == 7 then
        SN_Cayo:add_sameline()
    end
end

-- Casino Heist --
local SN_CasinoHeist = SN_Heist_Tool:add_tab("Diamond Casino Heist ")
SN_CasinoHeist:add_text("Preps:")

V.DiamondCasinoDifficulties = {
    { name = "Normal", index = 0 },
    { name = "Hard", index = 1 }
}

V.diamondApproachList = {
    { name = "Silent n Snea.", index = 1 },
    { name = "Big Con", index = 2 },
    { name = "Aggressive", index = 3 }
}

V.diamondGunmanList = {
    { name = "Karl Abolaji", index = 1 },
    { name = "Charlie Reed", index = 3 },
    { name = "Patrick McRear.", index = 5 },
    { name = "Gustavo Mota", index = 2 },
    { name = "Chester McCoy", index = 4 }
}

V.diamondLoadoutList = {
    { name = "Micro SMG (S)", index = 1 },
    { name = "Mac. Pistol (S)", index = 1 },
    { name = "Micro SMG", index = 1 },
    { name = "Double Barrel", index = 1 },
    { name = "Sawed-Off", index = 1 },
    { name = "Heavy Revolver", index = 1 },
    { name = "Assau. SMG (S)", index = 3 },
    { name = "Bullpup Sh. (S)", index = 3 },
    { name = "Machine Pistol", index = 3 },
    { name = "Sweeper Shot.", index = 3 },
    { name = "Assault SMG", index = 3 },
    { name = "Pump Shotgun", index = 3 },
    { name = "Combat PDW", index = 5 },
    { name = "Assault Rif. (S)", index = 5 },
    { name = "Sawed-Off", index = 5 },
    { name = "Compact Rifle", index = 5 },
    { name = "Heavy Shotgun", index = 5 },
    { name = "Combat MG", index = 5 },
    { name = "Carbin. Rif. (S)", index = 2 },
    { name = "Assau. Sho. (S)", index = 2 },
    { name = "Carbine Rifle", index = 2 },
    { name = "Assault Shot.", index = 2 },
    { name = "Carbine Rifle", index = 2 },
    { name = "Assault Shot.", index = 2 },
    { name = "Pump Sh. II (S)", index = 4 },
    { name = "Carbine R. II (S)", index = 4 },
    { name = "SMG Mk II", index = 4 },
    { name = "Bullpup Rifle II", index = 4 },
    { name = "Pump Shot. II", index = 4 },
    { name = "Assault Rifle II", index = 4 }
}

V.diamondDriverList = {
    { name = "Karim Denz", index = 1 },
    { name = "Zach Nelson", index = 4 },
    { name = "Taliana Martinez", index = 2 },
    { name = "Eddie Toh", index = 3 },
    { name = "Chester McCoy", index = 5 }
}

V.diamondVehiclesList = {
    { name = "Issi Classic", index = 1 },
    { name = "Asbo", index = 1 },
    { name = "Blista Kanjo", index = 1 },
    { name = "Sentinel Class.", index = 1 },
    { name = "Manchez", index = 4 },
    { name = "Stryder", index = 4 },
    { name = "Defiler", index = 4 },
    { name = "Lectro", index = 4 },
    { name = "Retinue Mk II", index = 2 },
    { name = "Drift Yosemite", index = 2 },
    { name = "Sugoi", index = 2 },
    { name = "Jugular", index = 2 },
    { name = "Sultan Classic", index = 3 },
    { name = "Gauntl. Classic", index = 3 },
    { name = "Ellie", index = 3 },
    { name = "Komoda", index = 3 },
    { name = "Zhaba", index = 5 },
    { name = "Vagrant", index = 5 },
    { name = "Outlaw", index = 5 },
    { name = "Everon", index = 5 }
}

V.diamondHackerList = {
    { name = "Rickie Lukens", index = 1 },
    { name = "Yohan Blair", index = 3 },
    { name = "Christian Feltz", index = 2 },
    { name = "Page Harris", index = 5 },
    { name = "Avi Schwartz.", index = 4 }
}

V.diamondMasksList = {
    { name = "None", index = 0 },
    { name = "Geometric Set", index = 1 },
    { name = "Hunter Set", index = 2 },
    { name = "Oni Half Mask Set", index = 3 },
    { name = "Emoji Set", index = 4 },
    { name = "Ornate Skull Set", index = 5 },
    { name = "Lucky Fruit Set", index = 6 },
    { name = "Guerilla Set", index = 7 },
    { name = "Clown Set", index = 8 },
    { name = "Animal Set", index = 9 },
    { name = "Riot Set", index = 10 },
    { name = "Oni Full Mask Set", index = 11 },
    { name = "Hockey Set", index = 12 }
}

V.diamondGuardsList = {
    { name = "Elite", index = 0 },
    { name = "Pro", index = 1 },
    { name = "Unit", index = 2 },
    { name = "Rookie", index = 3 }
}

V.diamondKeycardsList = {
    { name = "None", index = 0 },
    { name = "Level 1", index = 1 },
    { name = "Level 2", index = 2 }
}

V.diamondTargetList = {
    { name = "Cash", index = 0 },
    { name = "Arts", index = 2 },
    { name = "Gold", index = 1 },
    { name = "Diamonds", index = 3 }
}

V.DiamondCasinoCrewCut = {
    { tunable = "CH_LESTER_CUT", default = 5 },
    { tunable = "HEIST3_PREPBOARD_GUNMEN_KARL_CUT", default = 5 },
    { tunable = "HEIST3_PREPBOARD_GUNMEN_GUSTAVO_CUT", default = 9 },
    { tunable = "HEIST3_PREPBOARD_GUNMEN_CHARLIE_CUT", default = 7 },
    { tunable = "HEIST3_PREPBOARD_GUNMEN_CHESTER_CUT", default = 10 },
    { tunable = "HEIST3_PREPBOARD_GUNMEN_PATRICK_CUT", default = 8 },
    { tunable = "HEIST3_DRIVERS_KARIM_CUT", default = 5 },
    { tunable = "HEIST3_DRIVERS_TALIANA_CUT", default = 7 },
    { tunable = "HEIST3_DRIVERS_EDDIE_CUT", default = 9 },
    { tunable = "HEIST3_DRIVERS_ZACH_CUT", default = 6 },
    { tunable = "HEIST3_DRIVERS_CHESTER_CUT", default = 10 },
    { tunable = "HEIST3_HACKERS_RICKIE_CUT", default = 3 },
    { tunable = "HEIST3_HACKERS_CHRISTIAN_CUT", default = 7 },
    { tunable = "HEIST3_HACKERS_YOHAN_CUT", default = 5 },
    { tunable = "HEIST3_HACKERS_AVI_CUT", default = 10 },
    { tunable = "HEIST3_HACKERS_PAIGE_CUT", default = 9 }
}

V.diamondDifficultyNames = {}
for _, item in ipairs(V.DiamondCasinoDifficulties) do
    table.insert(V.diamondDifficultyNames, item.name)
end
V.diamondDifficultyIndex = 0
SN_CasinoHeist:add_imgui(function()
    V.nIndex, changed = ImGui.Combo("Difficulty", V.diamondDifficultyIndex, V.diamondDifficultyNames, #V.diamondDifficultyNames)
    if changed then
        V.diamondDifficultyIndex = V.nIndex
    end
end)

V.diamondApproachNames = {}
for _, item in ipairs(V.diamondApproachList) do
    table.insert(V.diamondApproachNames, item.name)
end
V.diamondApproachIndex = 0
SN_CasinoHeist:add_imgui(function()
    V.nIndex, changed = ImGui.Combo("Approach", V.diamondApproachIndex, V.diamondApproachNames, #V.diamondApproachNames)
    if changed then
        V.diamondApproachIndex = V.nIndex
    end
end)

V.diamondGunmanNames = {}
for _, item in ipairs(V.diamondGunmanList) do
    table.insert(V.diamondGunmanNames, item.name)
end
V.diamondGunmanIndex = 0
SN_CasinoHeist:add_imgui(function()
    V.nIndex, changed = ImGui.Combo("Gunman", V.diamondGunmanIndex, V.diamondGunmanNames, #V.diamondGunmanNames)
    if changed then
        V.diamondGunmanIndex = V.nIndex
        V.diamondLoadoutIndex = 0
    end
end)

V.diamondLoadoutIndex = 0
SN_CasinoHeist:add_imgui(function()
    V.gIndex = V.diamondGunmanList[V.diamondGunmanIndex + 1].index
    V.filnames = {}
    V.count = 0
    for _, item in ipairs(V.diamondLoadoutList) do
        if item.index == gIndex then
            V.count = V.count + 1
            table.insert(V.filnames, item.name)
        end
    end
    V.nIndex, changed = ImGui.Combo("Loadout", V.diamondLoadoutIndex, V.filnames, V.count)
    if changed then
        V.diamondLoadoutIndex = V.nIndex
    end
end)

V.diamondDriverNames = {}
for _, item in ipairs(V.diamondDriverList) do
    table.insert(V.diamondDriverNames, item.name)
end
V.diamondDriverIndex = 0
SN_CasinoHeist:add_imgui(function()
    V.nIndex, changed = ImGui.Combo("Driver", V.diamondDriverIndex, V.diamondDriverNames, #V.diamondDriverNames)
    if changed then
        V.diamondDriverIndex = V.nIndex
        V.diamondVehiclesIndex = 0
    end
end)

V.diamondVehiclesIndex = 0
SN_CasinoHeist:add_imgui(function()
    V.dIndex = V.diamondDriverList[V.diamondDriverIndex + 1].index
    V.filnames = {}
    V.count = 0
    for _, item in ipairs(V.diamondVehiclesList) do
        if item.index == dIndex then
            V.count = V.count + 1
            table.insert(V.filnames, item.name)
        end
    end
    V.nIndex, changed = ImGui.Combo("Vehicles", V.diamondVehiclesIndex, V.filnames, V.count)
    if changed then
        V.diamondVehiclesIndex = V.nIndex
    end
end)

V.diamondHackerNames = {}
for _, item in ipairs(V.diamondHackerList) do
    table.insert(V.diamondHackerNames, item.name)
end
V.diamondHackerIndex = 0
SN_CasinoHeist:add_imgui(function()
    V.nIndex, changed = ImGui.Combo("Hacker", V.diamondHackerIndex, V.diamondHackerNames, #V.diamondHackerNames)
    if changed then
        V.diamondHackerIndex = V.nIndex
    end
end)

V.diamondMasksNames = {}
for _, item in ipairs(V.diamondMasksList) do
    table.insert(V.diamondMasksNames, item.name)
end
V.diamondMasksIndex = 0
SN_CasinoHeist:add_imgui(function()
    local nIndex, changed = ImGui.Combo("Masks", V.diamondMasksIndex, V.diamondMasksNames, #V.diamondMasksNames)
    if changed then
        V.diamondMasksIndex = nIndex
    end
end)

V.diamondGuardsNames = {}
for _, item in ipairs(V.diamondGuardsList) do
    table.insert(V.diamondGuardsNames, item.name)
end
V.diamondGuardsIndex = 0
SN_CasinoHeist:add_imgui(function()
    local nIndex, changed = ImGui.Combo("Guards", V.diamondGuardsIndex, V.diamondGuardsNames, #V.diamondGuardsNames)
    if changed then
        V.diamondGuardsIndex = nIndex
    end
end)

V.diamondKeycardsNames = {}
for _, item in ipairs(V.diamondKeycardsList) do
    table.insert(V.diamondKeycardsNames, item.name)
end
V.diamondKeycardsIndex = 0
SN_CasinoHeist:add_imgui(function()
    local nIndex, changed = ImGui.Combo("Keycards", V.diamondKeycardsIndex, V.diamondKeycardsNames, #V.diamondKeycardsNames)
    if changed then
        V.diamondKeycardsIndex = nIndex
    end
end)

V.diamondTargetNames = {}
for _, item in ipairs(V.diamondTargetList) do
    table.insert(V.diamondTargetNames, item.name)
end
V.diamondTargetIndex = 0
SN_CasinoHeist:add_imgui(function()
    local nIndex, changed = ImGui.Combo("Target", V.diamondTargetIndex, V.diamondTargetNames, #V.diamondTargetNames)
    if changed then
        V.diamondTargetIndex = nIndex
    end
end)

SN_CasinoHeist:add_separator()
SN_CasinoHeist:add_button("Apply & Complete Preps", function()
    V.approach = diamondApproachList[diamondApproachIndex + 1].index
    V.gunman = diamondGunmanList[diamondGunmanIndex + 1].index
    V.loadout = diamondLoadoutIndex
    V.driver = diamondDriverList[diamondDriverIndex + 1].index
    V.vehicles = diamondVehiclesIndex
    V.hacker = diamondHackerList[diamondHackerIndex + 1].index
    V.masks = diamondMasksList[diamondMasksIndex + 1].index
    V.guards = diamondGuardsList[diamondGuardsIndex + 1].index
    V.keycards = diamondKeycardsList[diamondKeycardsIndex + 1].index
    V.target = diamondTargetList[diamondTargetIndex + 1].index
    V.difficulty = V.DiamondCasinoDifficulties[V.diamondDifficultyIndex + 1].index

    stats.set_int(MPX() .. "H3OPT_POI", -1)
    stats.set_int(MPX() .. "H3OPT_ACCESSPOINTS", -1)
    stats.set_int(MPX() .. "CAS_HEIST_NOTS", -1)
    stats.set_int(MPX() .. "CAS_HEIST_FLOW", -1)
    stats.set_int(MPX() .. "H3_LAST_APPROACH", 0)
    stats.set_int(MPX() .. "H3_HARD_APPROACH", (V.difficulty == 0) and 0 or V.approach)
    stats.set_int(MPX() .. "H3OPT_APPROACH", V.approach)
    stats.set_int(MPX() .. "H3OPT_CREWWEAP", V.gunman)
    stats.set_int(MPX() .. "H3OPT_WEAPS", V.loadout)
    stats.set_int(MPX() .. "H3OPT_CREWDRIVER", V.driver)
    stats.set_int(MPX() .. "H3OPT_VEHS", V.vehicles)
    stats.set_int(MPX() .. "H3OPT_CREWHACKER", V.hacker)
    stats.set_int(MPX() .. "H3OPT_TARGET", V.target)
    stats.set_int(MPX() .. "H3OPT_MASKS", V.masks)
    stats.set_int(MPX() .. "H3OPT_DISRUPTSHIP", V.guards)
    stats.set_int(MPX() .. "H3OPT_KEYLEVELS", V.keycards)
    stats.set_int(MPX() .. "H3OPT_BODYARMORLVL", -1)
    stats.set_int(MPX() .. "H3OPT_BITSET0", -1)
    stats.set_int(MPX() .. "H3OPT_BITSET1", -1)
    stats.set_int(MPX() .. "H3OPT_COMPLETEDPOSIX", -1)
    locals.set_int("gb_casino_heist_planning", L.DCRBl, 2)
    payoutSelected()
    gui.show_message("Diamond Casino Heist", "Preps should've been completed")
end)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Reset Preps", function()
    stats.set_int(MPX() .. "H3_LAST_APPROACH", 0)
    stats.set_int(MPX() .. "H3_HARD_APPROACH", 0)
    stats.set_int(MPX() .. "H3_APPROACH", 0)
    stats.set_int(MPX() .. "H3OPT_APPROACH", 0)
    stats.set_int(MPX() .. "H3OPT_CREWWEAP", 0)
    stats.set_int(MPX() .. "H3OPT_WEAPS", 0)
    stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 0)
    stats.set_int(MPX() .. "H3OPT_VEHS", 0)
    stats.set_int(MPX() .. "H3OPT_CREWHACKER", 0)
    stats.set_int(MPX() .. "H3OPT_MASKS", 0)
    stats.set_int(MPX() .. "H3OPT_TARGET", 0)
    stats.set_int(MPX() .. "H3OPT_DISRUPTSHIP", 0)
    stats.set_int(MPX() .. "H3OPT_BODYARMORLVL", 01)
    stats.set_int(MPX() .. "H3OPT_KEYLEVELS", 0)
    stats.set_int(MPX() .. "H3OPT_BITSET0", 0)
    stats.set_int(MPX() .. "H3OPT_BITSET1", 0)
    stats.set_int(MPX() .. "H3_BOARD_DIALOGUE0", 0)
    stats.set_int(MPX() .. "H3_BOARD_DIALOGUE1", 0)
    stats.set_int(MPX() .. "H3_BOARD_DIALOGUE2", 0)
    stats.set_int("MPPLY_H3_COOLDOWN", 0)
    stats.set_int(MPX() .. "H3OPT_COMPLETEDPOSIX", 0)
    locals.set_int("gb_casino_heist_planning", L.DCRBl, 2)
    gui.show_message("Diamond Casino Heist", "Preps should've been reset")
end)
SN_CasinoHeist:add_separator()
SN_CasinoHeist:add_text("Set Lester, Driver, Hacker, and Gunman cut to 0%")
V.casinoCrewCuts = SN_CasinoHeist:add_checkbox("Remove Crew Cuts")
script.register_looped("SN_DiamondCasino_Crew", function()
    V.remove = V.casinoCrewCuts:is_enabled()
    for _, cut in ipairs(V.DiamondCasinoCrewCut) do
        if V.remove then
            tunables.set_int(cut.tunable, 0)
        else
            tunables.set_int(cut.tunable, cut.default)
        end
    end
end)
SN_CasinoHeist:add_separator()
SN_CasinoHeist:add_text("Buyer Modifier")

V.buyerLow = SN_CasinoHeist:add_input_float("Low Buyer %")
V.buyerLow:set_value(0.9)
V.buyerMid = SN_CasinoHeist:add_input_float("Mid Buyer %")
V.buyerMid:set_value(0.95)
V.buyerHigh = SN_CasinoHeist:add_input_float("High Buyer %")
V.buyerHigh:set_value(1.0)

SN_CasinoHeist:add_button("Apply Buyer Modifier", function()
    tunables.set_float(L.DCABuyerLow, V.buyerLow:get_value())
    tunables.set_float(L.DCABuyerMid, V.buyerMid:get_value())
    tunables.set_float(L.DCABuyerHigh, V.buyerHigh:get_value())
    gui.show_message("Diamond Casino Heist", "Buyer modifier applied")
end)

SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Reset Buyer to Default", function()
    V.buyerLow:set_value(0.9)
    V.buyerMid:set_value(0.95)
    V.buyerHigh:set_value(1.0)
    tunables.set_float(L.DCABuyerLow, 0.9)
    tunables.set_float(L.DCABuyerMid, 0.95)
    tunables.set_float(L.DCABuyerHigh, 1.0)
    gui.show_message("Diamond Casino Heist", "Buyer modifier reset")
end)

V.DiamondCasinoBuyer = {
    Low  = "CH_BUYER_MOD_SHORT",
    Mid  = "CH_BUYER_MOD_MED",
    High = "CH_BUYER_MOD_LONG"
}

function SetDiamondMaxPayout()
    tunables.set_float(V.DiamondCasinoBuyer.Low, 1.0)
    tunables.set_float(V.DiamondCasinoBuyer.Mid, 1.0)
    tunables.set_float(V.DiamondCasinoBuyer.High, 1.0)
    V.difficulty = (stats.get_int(MPX() .. "H3OPT_APPROACH") == stats.get_int(MPX() .. "H3_HARD_APPROACH")) and 2 or 1
    V.target = stats.get_int(MPX() .. "H3OPT_TARGET")
    
    V.payouts = {
        [0] = { 2115000, 2326500 },
        [2] = { 2350000, 2585000 },
        [1] = { 2585000, 2843500 },
        [3] = { 3290000, 3619000 }
    }
    
    if V.payouts[V.target] == nil then return end
    V.payout = V.payouts[V.target][V.difficulty] + 819000
    V.maxPayout = 3619000
    V.cut = math.floor(V.maxPayout / (V.payout / 100))

    V.gunman = stats.get_int(MPX() .. "H3OPT_CREWWEAP")
    V.driver = stats.get_int(MPX() .. "H3OPT_CREWDRIVER")
    V.hacker = stats.get_int(MPX() .. "H3OPT_CREWHACKER")
    V.buyerFee = 0.1
    V.lesterCut = 0.05
    
    V.gunmanCuts = {
        [1] = 0.05,
        [3] = 0.07,
        [5] = 0.08,
        [2] = 0.09,
        [4] = 0.1
    }
    V.driverCuts = {
        [1] = 0.05,
        [4] = 0.06,
        [2] = 0.07,
        [3] = 0.09,
        [5] = 0.1
    }
    V.hackerCuts = {
        [1] = 0.03,
        [3] = 0.05,
        [2] = 0.07,
        [5] = 0.09,
        [4] = 0.1
    }
    
    V.feePayout = V.payout - (V.payout * V.buyerFee)
    V.lesterPayout = V.feePayout * V.lesterCut
    V.gunmanPayout = V.feePayout * V.gunmanCuts[V.gunman]
    V.driverPayout = V.feePayout * V.driverCuts[V.driver]
    V.hackerPayout = V.feePayout * V.hackerCuts[V.hacker]
    V.crewPayout = V.lesterPayout + V.gunmanPayout + V.driverPayout + V.hackerPayout
    V.finalCut = math.floor(V.maxPayout / ((V.feePayout - V.crewPayout) / 100))
    return V.cut, V.finalCut
end

SN_CasinoHeist:add_text("Custom Cuts:")
V.Presets = {
    { name = "All - 0%", index = 0 },
    { name = "All - 85%", index = 85 },
    { name = "All - 100%", index = 100 },
    { name = "3.6mil Payout", index = -1 }
}

V.presetNames = {}
for _, preset in ipairs(V.Presets) do
    table.insert(V.presetNames, preset.name)
end
V.sPresetIndex = 0

V.casinoPc1 = SN_CasinoHeist:add_input_int("Player Cut 1")
V.casinoPc2 = SN_CasinoHeist:add_input_int("Player Cut 2")
V.casinoPc3 = SN_CasinoHeist:add_input_int("Player Cut 3")
V.casinoPc4 = SN_CasinoHeist:add_input_int("Player Cut 4")

function payoutSelected()
    if V.Presets[V.sPresetIndex + 1].index == -1 then
        V.hostCut, otherCut = SetDiamondMaxPayout()
        if V.casinoPc1 then V.casinoPc1:set_value(V.hostCut) end
        if V.casinoPc2 then V.casinoPc2:set_value(otherCut) end
        if V.casinoPc3 then V.casinoPc3:set_value(otherCut) end
        if V.casinoPc4 then V.casinoPc4:set_value(otherCut) end
    end
end

SN_CasinoHeist:add_imgui(function()
    ImGui.Text("Presets:")
    V.nIndex, changed = ImGui.Combo("##DiamondPreset", V.sPresetIndex, V.presetNames, #V.presetNames)
    if changed then
        V.sPresetIndex = V.nIndex
        V.selected = V.Presets[V.sPresetIndex + 1]
        V.hostCut = V.selected.index
        V.otherCut = V.selected.index
        if V.selected.index == -1 then
            V.hostCut, V.otherCut = SetDiamondMaxPayout()
            casinoCrewCuts:set_enabled(true)
        else
            casinoCrewCuts:set_enabled(false)
        end
        if V.casinoPc1 then V.casinoPc1:set_value(V.hostCut) end
        if V.casinoPc2 then V.casinoPc2:set_value(V.otherCut) end
        if V.casinoPc3 then V.casinoPc3:set_value(V.otherCut) end
        if V.casinoPc4 then V.casinoPc4:set_value(V.otherCut) end
    end
end)
SN_CasinoHeist:add_button("Apply Cuts", function()
    globals.set_int(L.DCCg1, V.casinoPc1:get_value())
    globals.set_int(L.DCCg2, V.casinoPc2:get_value())
    globals.set_int(L.DCCg3, V.casinoPc3:get_value())
    globals.set_int(L.DCCg4, V.casinoPc4:get_value())
    gui.show_message("Diamond Casino Heist", "Cuts should've been applied")
end)
SN_CasinoHeist:add_separator()
SN_CasinoHeist:add_button("Reload Planning Screen",
function ()
	locals.set_int("gb_casino_heist_planning", L.DCRBl, 2)
	gui.show_message("Diamond Casino Heist", "Screen should've been reloaded")
end)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Solo Launch",
function()
	if locals.get_int("fmmc_launcher", L.HGGs1) ~= nil then
		if locals.get_int("fmmc_launcher", L.HGGs1) ~= 0 then
			if locals.get_int("fmmc_launcher", L.HGGs1) > 1 then
					locals.set_int("fmmc_launcher", L.HGGs2, 1)
                    globals.set_int(794954 + 4 + 1 + (locals.get_int("fmmc_launcher", L.HGGs1) * 95) + 75, 1)
			end
			globals.set_int(L.HGLs1, 1)
            globals.set_int(L.HGLs2, 1)
            globals.set_int(L.HGLs3, 1)
            globals.set_int(L.HGLs4, 0)
		end
	end
end)
SN_CasinoHeist:add_separator()
SN_CasinoHeist:add_text("Misc")
V.casinoAutograbber = SN_CasinoHeist:add_checkbox("Autograbber")
script.register_looped("casinoAg", function(script)
    script:yield()
    if V.casinoAutograbber:is_enabled() then
        if locals.get_int("fm_mission_controller", L.DCAg) == 3 then
            locals.set_int("fm_mission_controller", L.DCAg, 4)
		elseif locals.get_int("fm_mission_controller", L.DCAg) == 4 then
            locals.set_float("fm_mission_controller", L.DCAs, 2.0)
        end
    end
end)
SN_CasinoHeist:add_button("Bypass Casino Fingerprint Hack",
function ()
	if locals.get_int("fm_mission_controller",L.DCFHl) == 4 then
		locals.set_int("fm_mission_controller",L.DCFHl, 5)
		gui.show_message("Diamond Casino Heist", "Hacking process should've been skipped")
	end
end)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Bypass Keypad Hack",
function ()
	if locals.get_int("fm_mission_controller",L.DCKHl) ~= 4 then
		locals.set_int("fm_mission_controller",L.DCKHl, 5)
		gui.show_message("Diamond Casino Heist", "Hacking process should've been skipped")
	end
end)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Bypass Drill Vault Door",
function ()
	locals.set_int("fm_mission_controller", L.DCDVDl1, locals.get_int("fm_mission_controller", L.DCDVDl2))
	gui.show_message("Diamond Casino Heist", "Drilling process should've been skipped")
end)
SN_CasinoHeist:add_button("Instant Finish", function()
    V.approachType = stats.get_int(MPX() .. "H3OPT_APPROACH")
    if V.approachType == 3 then
        locals.set_int("fm_mission_controller", L.DCXf1, 12)
        locals.set_int("fm_mission_controller", L.DCXf3, 80)
        locals.set_int("fm_mission_controller", L.DCXf4, 10000000)
        locals.set_int("fm_mission_controller", L.DCXf5, 99999)
        locals.set_int("fm_mission_controller", L.DCXf6, 99999)
    else    
        locals.set_int("fm_mission_controller", L.DCXf2, 5)
        locals.set_int("fm_mission_controller", L.DCXf3, 80)
        locals.set_int("fm_mission_controller", L.DCXf4, 10000000)
        locals.set_int("fm_mission_controller", L.DCXf5, 99999)
        locals.set_int("fm_mission_controller", L.DCXf6, 99999)
    end
	gui.show_message("Diamond Casino Heist", "Heist should've been finished")
end)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Force Ready", function()
    script.run_in_fiber(function(script)
        network.force_script_host("fm_mission_controller")
        script:sleep(1000)
        for i = 1, 4 do
            globals.set_int(1976315 + 1 + ((i - 1) * 68) + 7 + i, 1)
        end
        if locals.get_int("fm_mission_controller", 1976315 + 1) ~= nil then
            for i = 2, 4 do
                globals.set_int(1976315 + 1 + ((i - 1) * 68) + 7 + i, 6)
            end
        end
        gui.show_message("Diamond Casino Heist", "Everyone forced ready")
    end)
end)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Skip Cutscene", SkipCutscene)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Kill Cooldown", function()
    stats.set_int(MPX() .. "H3_COMPLETEDPOSIX", -1)
    stats.set_int("MPPLY_H3_COOLDOWN", -1)
	gui.show_message("Diamond Casino Heist", "Cooldown should've been killed")
end)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Skip Setup", function()
    stats.set_int(MPX() .. "ARCADE_SETUP_COMPLETE", 1)
    gui.show_message("Diamond Casino Heist", "Setup should've been skipped. Change session to apply.")
end)
SN_CasinoHeist:add_button("Go Offline", function()
    globals.set_int(L.CSg1, -1)
    globals.set_int(L.CSg3, -1)
    globals.set_int(L.CSg2, 1)
    script.run_in_fiber(function(s)
        s:sleep(1000)
        globals.set_int(L.CSg2, 0)
    end)
    gui.show_message("Cayo Perico", "Going offline...")
end)
SN_CasinoHeist:add_sameline()
SN_CasinoHeist:add_button("Go Online", function()
    changeSession(8)
    gui.show_message("Cayo Perico", "Going online...")
end)
SN_CasinoHeist:add_text("After clicking the Kill Cooldown button, go offline and then come back online")

-- Doomsday --
local function DoomsdayActSetter(progress, status)
	stats.set_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG", progress)
	stats.set_int(MPX() .. "GANGOPS_HEIST_STATUS", status)
	stats.set_int(MPX() .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
end

V.DoomsdayHeists = {
    [503]   = {975000, 1218750},
    [240]   = {1425000, 1771250},
    [16368] = {1800000, 2250000}
}

local SN_Doomsday = SN_Heist_Tool:add_tab("Doomsday Heist ")
SN_Doomsday:add_text("Doomsday Acts")
V.doomsdayActs = {
    { name = "Data Breaches", progress = 503, status = 229383 },
    { name = "Bogdan Problem", progress = 240, status = 229378 },
    { name = "Doomsday Scenario", progress = 16368, status = 229380 }
}
V.actNames = {}
for _, act in ipairs(V.doomsdayActs) do
    table.insert(V.actNames, act.name)
end
V.selectedAct = 0
SN_Doomsday:add_imgui(function()
    ImGui.SetNextItemWidth(200)
    V.nIndex, changed = ImGui.Combo("##DoomsdayAct", V.selectedAct, V.actNames, #V.actNames)
    if changed then
        V.selectedAct = V.nIndex
    end
end)
SN_Doomsday:add_button("Apply & Complete Preps", function()
    V.act = V.doomsdayActs[V.selectedAct + 1]
    if V.act then
        DoomsdayActSetter(V.act.progress, V.act.status)
        locals.set_int("gb_gang_ops_planning", 209, 6) 
        gui.show_message("Doomsday Heist", "Act " .. V.act.name .. " should've been completed")
    end
end)
SN_Doomsday:add_sameline()
SN_Doomsday:add_button("Reload Screen", function()
    locals.set_int("gb_gang_ops_planning", 209, 6)
    gui.show_message("Doomsday Heist", "Screen should've been reloaded")
end)
SN_Doomsday:add_button("Reset Preps",
function ()
	DoomsdayActSetter(240, 0)
	gui.show_message("Doomsday Heist", "Preps should've been reset")
end)

function SetDoomsdayMaxPayout()
    V.heist = stats.get_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG")
    V.difficulty = globals.get_int(L.AHDg)
    if V.difficulty == 0 then V.difficulty = 1 end

    V.heistData = V.DoomsdayHeists[V.heist]
    if V.heistData == nil then return end

    V.payout = V.heistData[V.difficulty]
    V.maxPayout = 2550000
    V.cut = math.floor(V.maxPayout / (V.payout / 100))
    
    return V.cut
end

SN_Doomsday:add_separator()
SN_Doomsday:add_text("Custom Cuts:")
V.dmsdyCut1 = SN_Doomsday:add_input_int("Cut 1")
V.dmsdyCut2 = SN_Doomsday:add_input_int("Cut 2")
V.dmsdyCut3 = SN_Doomsday:add_input_int("Cut 3")
V.dmsdyCut4 = SN_Doomsday:add_input_int("Cut 4")

V.Presets = {
    { name = "All - 0%", index = 0 },
    { name = "All - 85%", index = 85 },
    { name = "All - 100%", index = 100 },
    { name = "2.55mil Payout", index = -1 }
}

V.presetNames = {}
for _, preset in ipairs(V.Presets) do
    table.insert(V.presetNames, preset.name)
end
V.sPresetIndex = 0

SN_Doomsday:add_imgui(function()
    ImGui.Text("Presets:")
	ImGui.SetNextItemWidth(170)
    V.nIndex, changed = ImGui.Combo("##DoomsdayPreset", V.sPresetIndex, V.presetNames, #V.presetNames)
    if changed then
        V.sPresetIndex = V.nIndex
        V.selected = V.Presets[V.sPresetIndex + 1]
        V.cutValue = V.selected.index
        if V.cutValue == -1 then
            V.cutValue = SetDoomsdayMaxPayout()
        end
        if V.dmsdyCut1 then V.dmsdyCut1:set_value(V.cutValue) end
        if V.dmsdyCut2 then V.dmsdyCut2:set_value(V.cutValue) end
        if V.dmsdyCut3 then V.dmsdyCut3:set_value(V.cutValue) end
        if V.dmsdyCut4 then V.dmsdyCut4:set_value(V.cutValue) end
    end
end)

SN_Doomsday:add_button("Apply Cuts", function()
    globals.set_int(L.DCg1, V.dmsdyCut1:get_value())
    globals.set_int(L.DCg2, V.dmsdyCut2:get_value())
    globals.set_int(L.DCg3, V.dmsdyCut3:get_value())
    globals.set_int(L.DCg4, V.dmsdyCut4:get_value())
    gui.show_message("Doomsday Heist", "Cuts should've been applied")
end)

SN_Doomsday:add_separator()
SN_Doomsday:add_text("Misc")
SN_Doomsday:add_button("By Act III Pass hack",
function ()
	locals.set_int("fm_mission_controller", L.DDSHl, 3)
end)
SN_Doomsday:add_sameline()
SN_Doomsday:add_button("Solo Launch",
function()
	if locals.get_int("fmmc_launcher", L.HGGs1) ~= nil then
		if locals.get_int("fmmc_launcher", L.HGGs1) ~= 0 then
			if locals.get_int("fmmc_launcher", L.HGGs1) > 1 then
				locals.set_int("fmmc_launcher", L.HGGs2, 1)
				globals.set_int(L.HGLs1, 1)
				globals.set_int(L.HGLs2, 1)
				globals.set_int(L.HGLs3, 1)
				globals.set_int(L.HGLs4, 0)
			end
		end
	end
end)

SN_Doomsday:add_button("Instant Finish", function()
    locals.set_int("fm_mission_controller", L.DDIF1, 12)
    locals.set_int("fm_mission_controller", L.DDIF2, 150)
    locals.set_int("fm_mission_controller", L.DDIF3, 99999)
    locals.set_int("fm_mission_controller", L.DDIF4, 99999)
    locals.set_int("fm_mission_controller", L.DDIF5, 80)
	gui.show_message("Doomsday Heist", "Heist should've been finished")
end)
SN_Doomsday:add_sameline()
SN_Doomsday:add_button("Force Ready", function()
    script.run_in_fiber(function(script)
        network.force_script_host("fm_mission_controller")
        script:sleep(1000)
        for i = 1, 4 do
            globals.set_int(1882572 + 1 + ((i - 1) * 315) + 43 + 11 + i, 1)
        end
        gui.show_message("Doomsday Heist", "Everyone should've been forced ready")
    end)
end)
SN_Doomsday:add_sameline()
SN_Doomsday:add_button("Skip Cutscene", SkipCutscene)
SN_Doomsday:add_button("Bypass Data Breaches Hack", function()
    locals.set_int("fm_mission_controller", 1539, 2)
    gui.show_message("Doomsday Heist", "Data Breaches hack bypassed")
end)
SN_Doomsday:add_sameline()
SN_Doomsday:add_button("Bypass Doomsday Hack", function()
    locals.set_int("fm_mission_controller", L.DDSHl, 3)
    gui.show_message("Doomsday Heist", "Doomsday Scenario hack bypassed")
end)

-- Salvage Yard --
local SN_Salvage = SN_Heist_Tool:add_tab("Salvage Yard ")
V.SalvageYard = {
    robberies = {
        { name = "Cargo Ship", index = 0 },
        { name = "Gangbanger", index = 1 },
        { name = "Duggan", index = 2 },
        { name = "Podium", index = 3 },
        { name = "McTony", index = 4 }
    },
    vehicles = {
        { name = "LM87", index = 1 },
        { name = "Cinquemila", index = 2 },
        { name = "Autarch", index = 3 },
        { name = "Tigon", index = 4 },
        { name = "Champion", index = 5 },
        { name = "10F", index = 6 },
        { name = "SM722", index = 7 },
        { name = "Omnis e-GT", index = 8 },
        { name = "Growler", index = 9 },
        { name = "Deity", index = 10 },
        { name = "Itali RSX", index = 11 },
        { name = "Coquette D10", index = 12 },
        { name = "Jubilee", index = 13 },
        { name = "Astron", index = 14 },
        { name = "Comet S2 Cabr.", index = 15 },
        { name = "Torero", index = 16 },
        { name = "Cheetah Classic", index = 17 },
        { name = "Turismo Classic", index = 18 },
        { name = "Infernus Classic", index = 19 },
        { name = "Stafford", index = 20 },
        { name = "GT500", index = 21 },
        { name = "Viseris", index = 22 },
        { name = "Mamba", index = 23 },
        { name = "Coquette Black.", index = 24 },
        { name = "Stinger GT", index = 25 },
        { name = "Z-Type", index = 26 },
        { name = "Broadway", index = 27 },
        { name = "Vigero ZX", index = 28 },
        { name = "Buffalo STX", index = 29 },
        { name = "Ruston", index = 30 },
        { name = "Gauntl. Hellfire", index = 31 },
        { name = "Dominator GTT", index = 32 },
        { name = "Roosevelt Valor", index = 33 },
        { name = "Swinger", index = 34 },
        { name = "Stirling GT", index = 35 },
        { name = "Omnis", index = 36 },
        { name = "Tropos Rallye", index = 37 },
        { name = "Jugular", index = 38 },
        { name = "Patriot Mil-Spec", index = 39 },
        { name = "Toros", index = 40 },
        { name = "Caracara 4x4", index = 41 },
        { name = "Sentinel Classic", index = 42 },
        { name = "Weevil", index = 43 },
        { name = "Blista Kanjo", index = 44 },
        { name = "Eudora", index = 45 },
        { name = "Kamacho", index = 46 },
        { name = "Hellion", index = 47 },
        { name = "Ellie", index = 48 },
        { name = "Hermes", index = 49 },
        { name = "Hustler", index = 50 },
        { name = "Turismo Om.", index = 51 },
        { name = "Buffalo EVX", index = 52 },
        { name = "Itali GTO St.", index = 53 },
        { name = "Virtue", index = 54 },
        { name = "Ignus", index = 55 },
        { name = "Zentorno", index = 56 },
        { name = "Neon", index = 57 },
        { name = "Furia", index = 58 },
        { name = "Zorrusso", index = 59 },
        { name = "Thrax", index = 60 },
        { name = "Vagner", index = 61 },
        { name = "Panthere", index = 62 },
        { name = "Itali GTO", index = 63 },
        { name = "S80RR", index = 64 },
        { name = "Tyrant", index = 65 },
        { name = "Entity MT", index = 66 },
        { name = "Torero XO", index = 67 },
        { name = "Neo", index = 68 },
        { name = "Corsita", index = 69 },
        { name = "Paragon R", index = 70 },
        { name = "Franken Stange", index = 71 },
        { name = "Comet Safari", index = 72 },
        { name = "FR36", index = 73 },
        { name = "Hotring Everon", index = 74 },
        { name = "Komoda", index = 75 },
        { name = "Tailgater S", index = 76 },
        { name = "Jester Classic", index = 77 },
        { name = "Jester RR", index = 78 },
        { name = "Euros", index = 79 },
        { name = "ZR350", index = 80 },
        { name = "Cypher", index = 81 },
        { name = "Dominator ASP", index = 82 },
        { name = "Baller ST-D", index = 83 },
        { name = "Casco", index = 84 },
        { name = "Drift Yosemite", index = 85 },
        { name = "Everon", index = 86 },
        { name = "Penumbra FF", index = 87 },
        { name = "V-STR", index = 88 },
        { name = "Dominator GT", index = 89 },
        { name = "Schlagen GT", index = 90 },
        { name = "Cavalcade XL", index = 91 },
        { name = "Clique", index = 92 },
        { name = "Boor", index = 93 },
        { name = "Sugoi", index = 94 },
        { name = "Greenwood", index = 95 },
        { name = "Brigham", index = 96 },
        { name = "Issi Rally", index = 97 },
        { name = "Seminole Fr.", index = 98 },
        { name = "Kanjo SJ", index = 99  },
        { name = "Previon", index = 100 }
    },
    modifications = {
        { name = "Version 1", index = 0 },
        { name = "Version 2", index = 1 },
        { name = "Version 3", index = 2 },
        { name = "Version 4", index = 3 },
        { name = "Version 5", index = 4 },
    },
    keeps = {
        { name = "Can't Claim", index = 0 },
        { name = "Can Claim", index = 1 }
    },
    tunables = {
        robbery_slot1_type = 1152433341,
        robbery_slot2_type = 852564222,
        robbery_slot3_type = 552662330,
        vehicle_slot1_type = -1012732012,
        vehicle_slot1_value = -1699398139,
        vehicle_slot1_cankeep = -1700733442,
        vehicle_slot2_type = 1366330161,
        vehicle_slot2_value = -1997104504,
        vehicle_slot2_cankeep = -1547046832,
        vehicle_slot3_type = 1806057372,
        vehicle_slot3_value = -1704051341,
        vehicle_slot3_cankeep = 1830093543,
        cooldown_weekly = "SALV23_VEH_ROBBERY_WEEK_ID"
    },
    salvage_missions = {
        { script = "fm_content_vehrob_cargo_ship", step1 = 7185 + 1, step2 = 7330 + 1249 },
        { script = "fm_content_vehrob_police", step1 = 9011 + 1, step2 = 9144 + 1305 },
        { script = "fm_content_vehrob_arena", step1 = 7912 + 1, step2 = 8032 + 1314 },
        { script = "fm_content_vehrob_casino_prize", step1 = 9191 + 1, step2 = 9328 + 1258 },
        { script = "fm_content_vehrob_submarine", step1 = 6218 + 1, step2 = 6356 + 1159 },
    },
}

V.slot_names = { "Slot 1", "Slot 2", "Slot 3" }
V.slot1 = {
    robbery_index = 0,
    vehicle_index = 0,
    mod_index = 0,
    keep_index = 0
}
V.slot2 = {
    robbery_index = 0,
    vehicle_index = 0,
    mod_index = 0,
    keep_index = 0
}
V.slot3 = {
    robbery_index = 0,
    vehicle_index = 0,
    mod_index = 0,
    keep_index = 0
}

V.robbery_names = {}
for _, robbery in ipairs(V.SalvageYard.robberies) do
    table.insert(V.robbery_names, robbery.name)
end

V.vehicle_names = {}
for _, vehicle in ipairs(V.SalvageYard.vehicles) do
    table.insert(V.vehicle_names, vehicle.name)
end

V.mod_names = {}
for _, mod in ipairs(V.SalvageYard.modifications) do
    table.insert(V.mod_names, mod.name)
end

V.keep_names = {}
for _, keep in ipairs(V.SalvageYard.keeps) do
    table.insert(V.keep_names, keep.name)
end
V.ssIndex = 0
SN_Salvage:add_imgui(function()
    V.nIndex, changed = ImGui.Combo("##Slot", V.ssIndex, V.slot_names, #V.slot_names)
    if changed then
        V.ssIndex = V.nIndex
    end
    V.currSlot = V.ssIndex + 1
    V.slots = {V.slot1, V.slot2, V.slot3}
    V.slot = V.slots[V.currSlot]

    V.nIndex, changed = ImGui.Combo("Robbery", V.slot.robbery_index, V.robbery_names, #V.robbery_names)
    if changed then
        V.slot.robbery_index = V.nIndex
        gui.show_message("Salvage Yard", "Selected " .. V.slot_names[V.ssIndex + 1] .. " robbery: " .. V.robbery_names[V.slot.robbery_index + 1])
    end

    V.nIndex, changed = ImGui.Combo("Vehicle", V.slot.vehicle_index, V.vehicle_names, #V.vehicle_names)
    if changed then
        V.slot.vehicle_index = V.nIndex
        gui.show_message("Salvage Yard", "Selected " .. V.slot_names[V.ssIndex + 1] .. " vehicle: " .. V.vehicle_names[V.slot.vehicle_index + 1])
    end

    V.nIndex, changed = ImGui.Combo("Modification", V.slot.mod_index, V.mod_names, #V.mod_names)
    if changed then
        V.slot.mod_index = V.nIndex
        gui.show_message("Salvage Yard", "Selected " .. V.slot_names[V.ssIndex + 1] .. " modification: " .. V.mod_names[V.slot.mod_index + 1])
    end

    V.nIndex, changed = ImGui.Combo("Status", V.slot.keep_index, V.keep_names, #V.keep_names)
    if changed then
        V.slot.keep_index = V.nIndex
        gui.show_message("Salvage Yard", "Selected " .. V.slot_names[V.ssIndex + 1] .. " status: " .. V.keep_names[V.slot.keep_index + 1])
    end

    if ImGui.Button("Apply Changes") then
        V.robbery = V.SalvageYard.robberies[V.slot.robbery_index + 1].index
        V.vehicle = V.SalvageYard.vehicles[V.slot.vehicle_index + 1].index
        V.mod = V.SalvageYard.modifications[V.slot.mod_index + 1].index
        V.keep = V.SalvageYard.keeps[V.slot.keep_index + 1].index
        tunables.set_int(V.SalvageYard.tunables["robbery_slot" .. V.currSlot .. "_type"], V.robbery)
        tunables.set_int(V.SalvageYard.tunables["vehicle_slot" .. V.currSlot .. "_type"], V.vehicle + V.mod * 100)
        tunables.set_int(V.SalvageYard.tunables["vehicle_slot" .. V.currSlot .. "_cankeep"], V.keep)
        locals.set_int("vehrob_planning", L.SYRl1, 2)
        gui.show_message("Salvage Yard", V.slot_names[V.ssIndex + 1] .. " changes should've been applied")
    end
    ImGui.SameLine()
    if ImGui.Button("Make Available") then
        stats.set_int(MPX() .. "SALV23_VEHROB_STATUS" .. (V.currSlot - 1), 0)
        locals.set_int("vehrob_planning", L.SYRl1, 2)
        gui.show_message("Salvage Yard", V.slot_names[V.ssIndex + 1] .. " should've been made Available")
    end
end)

SN_Salvage:add_text("Preps")
SN_Salvage:add_separator()
SN_Salvage:add_button("Complete Preps", function()
    stats.set_int(MPX() .. "SALV23_GEN_BS", -1)
    stats.set_int(MPX() .. "SALV23_SCOPE_BS", -1)
    stats.set_int(MPX() .. "SALV23_FM_PROG", -1)
    stats.set_int(MPX() .. "SALV23_INST_PROG", -1)
    locals.set_int("vehrob_planning", L.SYRl1, 2)
    gui.show_message("Salvage Yard", "Preps should've been completed")
end)
SN_Salvage:add_sameline()   
SN_Salvage:add_button("Reset Preps", function()
    stats.set_int(MPX() .. "SALV23_GEN_BS", 0)
    stats.set_int(MPX() .. "SALV23_SCOPE_BS", 0)
    stats.set_int(MPX() .. "SALV23_FM_PROG", 0)
    stats.set_int(MPX() .. "SALV23_INST_PROG", 0)
    locals.set_int("vehrob_planning", L.SYRl1, 2)
    gui.show_message("Salvage Yard", "Preps should've been reset")
end)
SN_Salvage:add_button("Reload Screen", function()
    locals.set_int("vehrob_planning", L.SYRl1, 2)
    gui.show_message("Salvage Yard", "Screen should've been reloaded")
end)
SN_Salvage:add_button("Skip Weekly Cooldown", function()
    tunables.set_int(SalvageYard.tunables.cooldown_weekly, stats.get_int(MPX() .. "SALV23_WEEK_SYNC") + 1)
    locals.set_int("vehrob_planning", L.SYRl1, 2)
    gui.show_message("Salvage Yard", "Cooldown should've been skipped")
end)

SN_Salvage:add_separator()
SN_Salvage:add_text("Payout")
V.sell_value_slot1 = SN_Salvage:add_input_int("Sell Value Slot 1")
V.sell_value_slot1:set_value(0)
V.sell_value_slot2 = SN_Salvage:add_input_int("Sell Value Slot 2")
V.sell_value_slot2:set_value(0)
V.sell_value_slot3 = SN_Salvage:add_input_int("Sell Value Slot 3")
V.sell_value_slot3:set_value(0)
SN_Salvage:add_button("Apply Sell Values", function()
    tunables.set_int(SalvageYard.tunables.vehicle_slot1_value, V.sell_value_slot1:get_value())
    tunables.set_int(SalvageYard.tunables.vehicle_slot2_value, V.sell_value_slot2:get_value())
    tunables.set_int(SalvageYard.tunables.vehicle_slot3_value, V.sell_value_slot3:get_value())
    locals.set_int("vehrob_planning", L.SYRl1, 2)
    gui.show_message("Salvage Yard", "Sell values should've been applied")
end)

SN_Salvage:add_separator()
SN_Salvage:add_text("Salvage Value Multiplier (ATTENTION: limit 2.1mil $)")

V.salvageMultiplierValue = 0.8
V.multiplierInput = SN_Salvage:add_input_float("Multiplier")
V.multiplierInput:set_value(0.8)
SN_Salvage:add_sameline()
SN_Salvage:add_imgui(function()
    if ImGui.Button(" - ") then
        V.salvageMultiplierValue = math.max(0.0, V.salvageMultiplierValue - 0.1)
        V.multiplierInput:set_value(V.salvageMultiplierValue)
    end
    ImGui.SameLine()
    if ImGui.Button(" + ") then
        V.salvageMultiplierValue = math.min(5.0, V.salvageMultiplierValue + 0.1)
        V.multiplierInput:set_value(V.salvageMultiplierValue)
    end
    ImGui.SameLine()
    if ImGui.Button("Reset") then
        V.salvageMultiplierValue = 0.8
        V.multiplierInput:set_value(0.8)
    end
end)
SN_Salvage:add_button("Apply Multiplier", function()
    tunables.set_float(L.SYSalvageMultiplier, V.multiplierInput:get_value())
    locals.set_int("vehrob_planning", L.SYRl1, 2)
    gui.show_message("Salvage Yard", "Multiplier applied")
end)

SN_Salvage:add_text("Misc")
SN_Salvage:add_separator()
SN_Salvage:add_button("Instant Finish", function()    
    for _, mission in ipairs(V.SalvageYard.salvage_missions) do
        local value = locals.get_int(mission.script, mission.step1)
        locals.set_int(mission.script, mission.step1, value | (1 << 11))
        locals.set_int(mission.script, mission.step2, 2)
    end
	gui.show_message("Salvage Yard", "Heist should've been finished")
end)
SN_Salvage:add_sameline()
SN_Salvage:add_button("Instant Sell", function()
    V.player_ped = PLAYER.PLAYER_PED_ID()
    PED.SET_PED_COORDS_KEEP_VEHICLE(V.player_ped, 1169.0, -2976.0, 6.0)
	gui.show_message("Salvage Yard", "Sell mission should've been finished")
end)
SN_Salvage:add_sameline()
SN_Salvage:add_button("Skip Cutscene", SkipCutscene)
SN_Salvage:add_sameline()
SN_Salvage:add_button("Skip Weekly Cooldown", function()
    V.currentWeek = stats.get_int(MPX() .. "SALV23_WEEK_SYNC")
    tunables.set_int("SALV23_VEH_ROBBERY_WEEK_ID", V.currentWeek + 1)
    locals.set_int("vehrob_planning", L.SYRl1, 2)
    gui.show_message("Salvage Yard", "Weekly cooldown skipped - Screen reloaded")
end)
SN_Salvage:add_button("Kill Cooldowns", function()
    tunables.set_int("SALV23_VEH_ROB_COOLDOWN_TIME", 0)
    local currentWeek = stats.get_int(MPX() .. "SALV23_WEEK_SYNC")
    tunables.set_int("SALV23_VEH_ROBBERY_WEEK_ID", V.currentWeek + 1)
    locals.set_int("vehrob_planning", L.SYRl1, 2)
    gui.show_message("Salvage Yard", "All cooldowns reset - Screen reloaded")
end)

V.freeSetup = SN_Salvage:add_checkbox("Free Setup")
V.freeClaim = SN_Salvage:add_checkbox("Free Claim")
script.register_looped("salvage_free_auto", function()
    if V.freeSetup:is_enabled() then
        tunables.set_int(71522671, 0)  
    else
        tunables.set_int(71522671, 20000)
    end
    
    if V.freeClaim:is_enabled() then
        tunables.set_int("SALV23_VEHICLE_CLAIM_PRICE", 0)
        tunables.set_int("SALV23_VEHICLE_CLAIM_PRICE_FORGERY_DISCOUNT", 0)
    else
        tunables.set_int("SALV23_VEHICLE_CLAIM_PRICE", 20000)
        tunables.set_int("SALV23_VEHICLE_CLAIM_PRICE_FORGERY_DISCOUNT", 10000)
    end
end)

local SN_FlashOps = SN_Heist_Tool:add_tab("Flash Ops ")

-- Agency tab
V.AgencyContracts = {
    {name = "None", index = 3},
    {name = "Nightclub", index = 4},
    {name = "Marina", index = 12},
    {name = "Nightlife Leak", index = 28},
    {name = "Country Club", index = 60},
    {name = "Guest List", index = 123},
    {name = "High Society Leak", index = 254},
    {name = "Davis", index = 508},
    {name = "Ballas", index = 1020},
    {name = "South Central Leak", index = 2044},
    {name = "Studio Time", index = 2045},
    {name = "Don't Fuck With Dre", index = 4095}
}

V.contractNames = {}
for i, contract in ipairs(V.AgencyContracts) do
    table.insert(V.contractNames, contract.name)
end
V.sContract = 0
V.SN_Agency = SN_FlashOps:add_tab("Agency ")
V.SN_Agency:add_text("Money")
V.agencySafe = V.SN_Agency:add_checkbox("Agency Safe Loop")
script.register_looped("agencyloop", function(script)
    script:yield()
    if V.agencySafe:is_enabled() == true then
        gui.show_message("Business Manager", "Supplying Agency Safe with money")
        STATS.STAT_SET_INT(joaat(MPX() .. "FIXER_COUNT"), 500, true)
        STATS.STAT_SET_INT(joaat(MPX() .. "FIXER_PASSIVE_PAY_TIME_LEFT"), -1, true)
        script:sleep(500)
    end
end)
V.SN_Agency:add_button("Collect Agency Safe", function()
    V.safeValue = stats.get_int(MPX() .. "FIXER_SAFE_CASH_VALUE")
    if V.safeValue > 0 then
        locals.set_int("am_mp_fixer_hq", 133 + 144, 1) 
        gui.show_message("Agency", "Safe money collected (" .. tostring(V.safeValue) .. "$)")
    else
        gui.show_message("Agency", "Agency safe is empty")
    end
end)
V.SN_Agency:add_separator()
V.SN_Agency:add_imgui(function()
    ImGui.Text("Contract:")
    ImGui.SetNextItemWidth(200)
    V.nSelected, clicked = ImGui.Combo("##AgencyContract", V.sContract, V.contractNames, #V.contractNames)
    if clicked then
        V.sContract = V.nSelected
        V.contractD = V.AgencyContracts[V.sContract + 1]
        V.contractId = V.contractD.index
        
        stats.set_int(MPX() .. "FIXER_STORY_BS", V.contractId)
        if V.contractId < 18 then
            stats.set_int(MPX() .. "FIXER_STORY_STRAND", 0)
        elseif V.contractId < 128 then
            stats.set_int(MPX() .. "FIXER_STORY_STRAND", 1)
        elseif V.contractId < 2044 then
            stats.set_int(MPX() .. "FIXER_STORY_STRAND", 2)
        else
            stats.set_int(MPX() .. "FIXER_STORY_STRAND", -1)
        end
    end
end)

V.SN_Agency:add_button("Complete Preps", function()
    stats.set_int(MPX() .. "FIXER_GENERAL_BS", -1)
    stats.set_int(MPX() .. "FIXER_COMPLETED_BS", -1)
    stats.set_int(MPX() .. "FIXER_STORY_COOLDOWN", -1)
	gui.show_message("Agency", "Preps should've been completed")
end)
V.SN_Agency:add_separator()
V.SN_Agency:add_text("Payouts:")
V.agencyPayoutValue = 0
V.SN_Agency:add_imgui(function()
    V.agencyPayoutValue, _ = ImGui.InputInt("##AgencyPayout", V.agencyPayoutValue)
end)
V.SN_Agency:add_button("Max", function()
    V.agencyPayoutValue = 2500000
    gui.show_message("Agency", "Payout should've been maximized. Don't forget to apply")
end)
V.SN_Agency:add_button("Apply Payout", function()
    V.payout = V.agencyPayoutValue
    tunables.set_int("FIXER_FINALE_LEADER_CASH_REWARD", V.payout)
    gui.show_message("Agency", "Payout should've been applied")
end)
V.SN_Agency:add_text("Use 'Apply Payout' after you can see the minimap.")
V.SN_Agency:add_separator()
V.SN_Agency:add_button("Instant Finish", function()
    script.run_in_fiber(function()
        network.force_script_host("fm_mission_controller_2020")
        script:sleep(1000)
        locals.set_int("fm_mission_controller_2020", L.AGFl1, 51338752)
        locals.set_int("fm_mission_controller_2020", L.AGFl2, 50)
        gui.show_message("Agency", "Heist should've been finished")
    end)
end)
V.SN_Agency:add_sameline()
V.SN_Agency:add_button("Skip Cutscene", SkipCutscene)
V.SN_Agency:add_sameline()
V.SN_Agency:add_button("Kill Cooldowns", function()
    tunables.set_int("FIXER_STORY_COOLDOWN_POSIX", 0)
    tunables.set_int("FIXER_SECURITY_CONTRACT_COOLDOWN_TIME", 0)
    tunables.set_int("REQUEST_FRANKLIN_PAYPHONE_HIT_COOLDOWN", 0)
    tunables.set_int("FIXER_STORY_COOLDOWN_POSIX", 0)
    stats.set_int(MPX() .. "FIXER_STORY_COOLDOWN", -1)
    stats.set_int(MPX() .. "FIXER_STORY_COOLDOWN", -1)
    gui.show_message("Agency", "All cooldowns killed")
end)
V.SN_Agency:add_separator()
V.SN_Agency:add_text("After All choices and pressing Complete Preps wait for sometime")

-- Autoshop tab
local SN_Autoshop = SN_FlashOps:add_tab("Autoshop ")
V.AutoShopContracts = {
    { name = "None", index = -1 },
    { name = "Union Deposit.", index = 0 },
    { name = "Superdol. Deal", index = 1 },
    { name = "Bank Contract", index = 2 },
    { name = "ECU Job", index = 3 },
    { name = "Prison Contrac.", index = 4 },
    { name = "Agency Deal", index = 5 },
    { name = "Lost Contract", index = 6 },
    { name = "Data Contract", index = 7 }
}

V.autoSelectedIndex = 0
SN_Autoshop:add_imgui(function()
    ImGui.Text("Contract:")
    V.autoSelectedIndex = ImGui.Combo("##AutoContract", V.autoSelectedIndex, { V.AutoShopContracts[1].name, V.AutoShopContracts[2].name, V.AutoShopContracts[3].name, V.AutoShopContracts[4].name, V.AutoShopContracts[5].name, V.AutoShopContracts[6].name, V.AutoShopContracts[7].name, V.AutoShopContracts[8].name, V.AutoShopContracts[9].name }, 9)
end)
SN_Autoshop:add_button("Apply & Complete Preps", function()
    V.contract = V.AutoShopContracts[V.autoSelectedIndex + 1].index
    stats.set_int(MPX() .. "TUNER_CURRENT", V.contract)
    stats.set_int(MPX() .. "TUNER_GEN_BS", (V.contract == 1 and 4351 or 12543))
    locals.set_int("tuner_planning", L.ASRBl, 2)
    gui.show_message("Autoshop", "Preps should've been completed")
end)
SN_Autoshop:add_button("Reset Preps", function()
    stats.set_int(MPX() .. "TUNER_GEN_BS", 12467)
    locals.set_int("tuner_planning", L.ASRBl, 2)
    gui.show_message("Autoshop", "Preps should've been reset")
end)
SN_Autoshop:add_button("Redraw Board", function()
    locals.set_int("tuner_planning", L.ASRBl, 2)
    gui.show_message("Autoshop", "Board should've been redrawn")
end)
SN_Autoshop:add_separator()
SN_Autoshop:add_text("Contract Fee")

SN_Autoshop:add_button("Remove Contact Fee (0%)", function()
    tunables.set_float("TUNER_ROBBERY_CONTACT_FEE", 0.0)
    gui.show_message("Autoshop", "Contract fee removed (0%)")
end)
SN_Autoshop:add_separator()
SN_Autoshop:add_text("Payouts:")
V.autoPayoutValue = 0
SN_Autoshop:add_imgui(function()
    V.autoPayoutValue, _ = ImGui.InputInt("##AutoPayout", V.autoPayoutValue)
end)
SN_Autoshop:add_button("Max", function()
    V.autoPayoutValue = 2000000
    gui.show_message("Autoshop", "Payout should've been maximized. Don't forget to apply")
end)
SN_Autoshop:add_button("Apply Payout", function()
    V.payout = V.autoPayoutValue
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD0", V.payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD1", V.payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD2", V.payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD3", V.payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD4", V.payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD5", V.payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD6", V.payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD7", V.payout)
    tunables.set_float("TUNER_ROBBERY_CONTACT_FEE", 0.0)
    gui.show_message("Autoshop", "Payout should've been applied")
end)
SN_Autoshop:add_text("Use 'Apply Payout' after you can see the minimap.")
SN_Autoshop:add_separator()
SN_Autoshop:add_text("Misc") 
SN_Autoshop:add_button("Instant Finish", function()
    script.run_in_fiber(function()
        network.force_script_host("fm_mission_controller_2020")
        script:sleep(1000)
        locals.set_int("fm_mission_controller_2020", L.ASIFl1, 51338977)
        locals.set_int("fm_mission_controller_2020", L.ASIFl2, 101)
        gui.show_message("Autoshop", "Heist should've been finished")
    end)
end)
SN_Autoshop:add_sameline()
SN_Autoshop:add_button("Skip Cutscene", SkipCutscene)
SN_Autoshop:add_separator()
SN_Autoshop:add_text("Cooldown")
SN_Autoshop:add_button("Kill Cooldown", function()
    for i = 0, 7 do
        stats.set_int(MPX() .. "TUNER_CONTRACT" .. i .. "_POSIX", 0)
    end
    tunables.set_int("TUNER_ROBBERY_COOLDOWN_TIME", 0)
    gui.show_message("Autoshop", "All cooldowns killed")
end)

-- Cluckin Bell --
V.cluckperps = {
	{ id = 0 , name = "Slush Fund"},
	{ id = 1 , name = "Breaking and Entering"},
	{ id = 3 , name = "Concealed Rewards"},
	{ id = 7 , name = "Hit And Run"},
	{ id = 15, name = "Disorganized Crime"},
	{ id = 31, name = "Scene of Crime"}
}

local SN_Cluck = SN_FlashOps:add_tab("Cluckin Bell Heist ")

SN_Cluck:add_text("Complete Preps")

for _,cluckprep in ipairs(V.cluckperps) do
	SN_Cluck:add_button(cluckprep.name,
	function ()
		stats.set_int(MPX() .. "SALV23_INST_PROG", cluckprep.id)
	end)
	SN_Cluck:add_sameline()
end
SN_Cluck:add_separator()
SN_Cluck:add_text("Reset preps")
SN_Cluck:add_button("Reset Preps",
function ()
	stats.set_int(MPX() .. "SALV23_INST_PROG", 0)
end)

-- Business Tool --
local SN_Business = Silent:add_tab("Business Tool ")

-- Nightclub --
local SN_Nightclub = SN_Business:add_tab("Nightclub ")
SN_Nightclub:add_text("Nightclub Loop")
V.safeloop = SN_Nightclub:add_checkbox("Enable Nightclub $250k Loop")
script.register_looped("nightclubloop", function(script)
    script:yield()
    if V.safeloop:is_enabled() then
        V.maxValue = 250000
        V.safeValue = globals.get_int(L.NCVg + 1 + (PLAYER.PLAYER_ID() * 880) + 260 + 364 + 5)
        tunables.set_int("NIGHTCLUBMAXSAFEVALUE", V.maxValue)
        for i = L.NLISg, L.NLIEg do
            globals.set_int(i, V.maxValue)
        end
        if V.safeValue > 0 and V.safeValue <= V.maxValue then
            locals.set_int("am_mp_nightclub", L.NLTl, 3)
            locals.set_int("am_mp_nightclub", L.NLCl, 1)
        elseif V.safeValue == 0 then
            stats.set_int(MPX() .. "CLUB_PAY_TIME_LEFT", -1)
        end
        script:sleep(1500)
    end
end)

SN_Nightclub:add_separator()
SN_Nightclub:add_text("NightClub Safe")
SN_Nightclub:add_button("Fill Nightclub Safe",
function ()
	script.run_in_fiber(
		function (script)
			stats.set_int(MPX() .. "CLUB_POPULARITY", 0)
			script:sleep(200)
			globals.set_int(L.NLISg, 250000)
			globals.set_int(L.NLSCg, 250000)
			stats.set_int(MPX() .. "CLUB_PAY_TIME_LEFT", -1)
		end
	)
end)
SN_Nightclub:add_sameline()
SN_Nightclub:add_button("Collect Nightclub Safe",
function ()
	locals.set_int("am_mp_nightclub", L.NLTl, 3)
	locals.set_int("am_mp_nightclub", L.NLCl, 1)
end)
SN_Nightclub:add_separator()

V.nightCargoDatas = {
    { name = "Cargo and shipments", offset = 0, tunable = "BB_BUSINESS_BASIC_VALUE_CARGO", default = 10000 },
    { name = "Sporting Goods", offset = 1, tunable = "BB_BUSINESS_BASIC_VALUE_WEAPONS", default = 5000 },
    { name = "S.A. Imports", offset = 2, tunable = "BB_BUSINESS_BASIC_VALUE_COKE", default = 27000 },
    { name = "Pharmac. Research", offset = 3, tunable = "BB_BUSINESS_BASIC_VALUE_METH", default = 11475 },
    { name = "Organic Produce", offset = 4, tunable = "BB_BUSINESS_BASIC_VALUE_WEED", default = 2025 },
    { name = "Printing and Copying", offset = 5, tunable = "BB_BUSINESS_BASIC_VALUE_FORGED_DOCUMENTS", default = 1350 },
    { name = "Cash Creation", offset = 6, tunable = "BB_BUSINESS_BASIC_VALUE_COUNTERFEIT_CASH", default = 4725 },
}

SN_Nightclub:add_text("Set Cargo value to $2,000,000")
SN_Nightclub:add_button("Maximize Price", function()
    for _, nightCargoData in ipairs(V.nightCargoDatas) do
        if stats.get_int(MPX() .. "HUB_PROD_TOTAL_" .. nightCargoData.offset) ~= 0 then
            tunables.set_int(nightCargoData.tunable, 
                math.floor(2000000 / stats.get_int(MPX() .. "HUB_PROD_TOTAL_" .. nightCargoData.offset)))
        end
    end
	gui.show_message("Nightclub", "Price should've been maximized")
end)
SN_Nightclub:add_sameline()
SN_Nightclub:add_button("Default Payout", function()
    for _, data in ipairs(nightCargoDatas) do
        tunables.set_int(data.tunable, data.default)
    end
end)

SN_Nightclub:add_separator()
SN_Nightclub:add_text("Misc")
V.nightclubPopLock = SN_Nightclub:add_checkbox("Lock Popularity")
V.NPOPULARITY = "TEMP"
V.prevPopState = false

script.register_looped("SN_Nightclub_Lock", function(script)
    script:yield()
    local currState = V.nightclubPopLock:is_enabled()
    if currState ~= V.prevPopState then
        if currState then
            if V.NPOPULARITY == "TEMP" then
                V.NPOPULARITY = stats.get_int(joaat(MPX() .. "CLUB_POPULARITY"))
            end
            gui.show_message("Nightclub", "Popularity should've been locked at " .. math.floor(V.NPOPULARITY / 10) .. "%")
        else
            V.NPOPULARITY = "TEMP"
            gui.show_message("Nightclub", "Popularity should've been unlocked")
        end
        V.prevPopState = currState
    end
    if currState and V.NPOPULARITY ~= "TEMP" then
        stats.set_int(joaat(MPX() .. "CLUB_POPULARITY"), V.NPOPULARITY)
    end
    script:sleep(1000)
end)

SN_Nightclub:add_sameline()
V.nightclubCooldown = SN_Nightclub:add_checkbox("Kill Cooldowns")
script.register_looped("NightclubCooldownToggler", function()
    if V.nightclubCooldown:is_enabled() then
        tunables.set_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_MISSION_COOLDOWN", 0)
        tunables.set_int("BB_SELL_MISSIONS_MISSION_COOLDOWN", 0)
        tunables.set_int("BB_SELL_MISSIONS_DELIVERY_VEHICLE_COOLDOWN_AFTER_SELL_MISSION", 0)
    else
        tunables.set_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_MISSION_COOLDOWN", 300000)
        tunables.set_int("BB_SELL_MISSIONS_MISSION_COOLDOWN", 300000)
        tunables.set_int("BB_SELL_MISSIONS_DELIVERY_VEHICLE_COOLDOWN_AFTER_SELL_MISSION", 300000)
    end
end)

SN_Nightclub:add_button("Max Popularity", function()
    stats.set_int(joaat(MPX() .. "CLUB_POPULARITY"), 1000)
    gui.show_message("Nightclub", "Popularity should've been maximized")
end)

SN_Nightclub:add_sameline()
SN_Nightclub:add_button("Open Computer", function()
    SCRIPT.REQUEST_SCRIPT("appbusinesshub")
    SYSTEM.START_NEW_SCRIPT("appbusinesshub", 4592)
	gui.show_message("Nightclub", "Computer screen should've been opened")
end)

-- Bunker --
local SN_Bunker = SN_Business:add_tab("Bunker ")
SN_Bunker:add_text("Fill Bunker With Supplies")
SN_Bunker:add_button("Get Supplies", function()
    globals.set_int(L.GSIg, 1)
    gui.show_message("Bunker", "Supplies should've been received")
end)
SN_Bunker:add_button("Open Laptop", function()
    SCRIPT.REQUEST_SCRIPT("appbunkerbusiness")
    SYSTEM.START_NEW_SCRIPT("appbunkerbusiness", 4592)
	gui.show_message("Bunker", "Laptop screen should've been opened")
end)

SN_Bunker:add_separator()

SN_Bunker:add_text("Unlock All Research temporarily")

SN_Bunker:add_button("Unlock All Research", function()
	script.run_in_fiber(function(script)
		globals.set_int(L.FMg + 21653, 1)
		gui.show_message("Bunker Research", "ALL Bunker research has been unlocked.")
	end)
end)
SN_Bunker:add_text("Supplies")
SN_Bunker:add_button("Trigger Production", function()
    globals.set_int(L.BCFp1, 0)
    globals.set_int(L.BCFp2, 1)
    gui.show_message("Bunker", "Production should've been triggered")
end)
SN_Bunker:add_sameline()
V.bSupplies = SN_Bunker:add_checkbox("Resupply Bunker (Looped)")
script.register_looped("autoGetBunkerCargo", function(script)
    script:yield()
    if V.bSupplies:is_enabled() == true then
        autoGetBunkerCargo = not autoGetBunkerCargo
        if autoGetBunkerCargo then
            globals.set_int(L.GSIg, 1)
            gui.show_message("Bunker", "Resupplying your bunker supplies every 5 seconds.")
            script:sleep(500)
        end
    end
end)
SN_Bunker:add_text("Instant Finish Sell Missions")
SN_Bunker:add_button("Instant Sell Supplies",
function ()
	locals.set_int("gb_gunrunning", L.BCISl, 0)
	gui.show_message("Bunker", "Sell mission should've been finished")
end)

V.bunkerMaxPrice = SN_Bunker:add_checkbox("Maximize Price (CAUTION)")
V.bunkerNoXP = SN_Bunker:add_checkbox("No XP Gain")

script.register_looped("bunker_max_price", function()
    if V.bunkerMaxPrice:is_enabled() then
        V.productTotal = stats.get_int(MPX() .. "PRODTOTALFORFACTORY5")
        if V.productTotal > 0 then
            V.pricePerUnit = math.floor((2500000 / 1.5) / V.productTotal)
            tunables.set_int("GR_MANU_PRODUCT_VALUE", V.pricePerUnit)
            tunables.set_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE", 0)
            tunables.set_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE", 0)
        end
    else
        tunables.set_int("GR_MANU_PRODUCT_VALUE", 5000)
        tunables.set_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE", 1000)
        tunables.set_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE", 1000)
    end
    
    if V.bunkerNoXP:is_enabled() then
        globals.set_float(L.XMg, 0)
    else
        globals.set_float(L.XMg, 1)
    end
end)

-- Hangar Cargo --

local SN_Hangar = SN_Business:add_tab("Hangar Cargo ")
SN_Hangar:add_text("Supplies")
SN_Hangar:add_button("Tell Rooster to get some cargo supplies",
function ()
	stats.set_packed_stat_bool(36828, true)
end)
SN_Hangar:add_button("Open Laptop", function()
    SCRIPT.REQUEST_SCRIPT("appsmuggler")
    SYSTEM.START_NEW_SCRIPT("appsmuggler", 4592)
	gui.show_message("Hangar Cargo", "Laptop screen should've been opened")
end)

V.hangarloop = SN_Hangar:add_checkbox("Hangar Loop")
script.register_looped("hangarloop",
	function (script)
		if V.hangarloop:is_enabled() then
			script:yield()
			stats.set_packed_stat_bool(36828, true)
			script:sleep(100)
		end
	end
)
SN_Hangar:add_separator()
V.hangarMaxPrice = SN_Hangar:add_checkbox("Maximize Price")
script.register_looped("HangarPriceToggler", function(script)
    if V.hangarMaxPrice:is_enabled() then
        if stats.get_int(MPX() .. "HANGAR_CONTRABAND_TOTAL") < 4 then
            stats.set_packed_stat_bool(36828, true)
            script:sleep(1000)
        end
        
        V.totalCrates = stats.get_int(MPX() .. "HANGAR_CONTRABAND_TOTAL")
        if V.totalCrates > 0 then
            V.pricePerCrate = math.floor(4000000 / V.totalCrates)
            tunables.set_int("SMUG_SELL_PRICE_PER_CRATE_MIXED", V.pricePerCrate)
            tunables.set_float("SMUG_SELL_RONS_CUT", 0.0)
        end
    else
        tunables.set_int("SMUG_SELL_PRICE_PER_CRATE_MIXED", 30000)
        tunables.set_float("SMUG_SELL_RONS_CUT", 0.025)
    end
    script:sleep(1000)
end)
SN_Hangar:add_separator()
V.HangarCargo = 0
SN_Hangar:add_text("Instant Finish Air Cargo Sell Missions")
SN_Hangar:add_button("Instant Air Cargo Sell", function()
    locals.set_int("gb_smuggler", L.HCVISl2, locals.get_int("gb_smuggler", L.HCVISl1))
    gui.show_message("Hangar Sell", "Sell mission should've been finished")
end)
V.hangarMaxPrice = SN_Hangar:add_checkbox("Maximize Price (CAUTION)")

script.register_looped("hangar_max_price", function()
    if V.hangarMaxPrice:is_enabled() then
        V.totalCrates = stats.get_int(MPX() .. "HANGAR_CONTRABAND_TOTAL")
        if V.totalCrates > 0 then
            V.pricePerCrate = math.floor(4000000 / V.totalCrates)
            tunables.set_int("SMUG_SELL_PRICE_PER_CRATE_MIXED", V.pricePerCrate)
            tunables.set_float("SMUG_SELL_RONS_CUT", 0.0)
        end
    else
        tunables.set_int("SMUG_SELL_PRICE_PER_CRATE_MIXED", 30000)
        tunables.set_float("SMUG_SELL_RONS_CUT", 0.025)
    end
end)

V.hangarSupplier = SN_Hangar:add_checkbox("Turkish Supplier (Auto-Resupply)")

script.register_looped("hangar_turkish_supplier", function()
    if V.hangarSupplier:is_enabled() then
        stats.set_packed_stat_bool(36828, true)
        script:sleep(5000)
    end
end)

-- Special Cargo --
local SN_Special = SN_Business:add_tab("Special Cargo ")
SN_Special:add_text("Get Cargo Supplies")
SN_Special:add_button("Get Supplies",
function ()
	stats_set_packed_bools(32359, 32363, true)
end)
SN_Special:add_separator()
SN_Special:add_text("Cargo Crate Loop")
V.cargoloop = SN_Special:add_checkbox("Get Supplies Loop")
script.register_looped("cargoloop",
function (script)
	script:yield()
	if V.cargoloop:is_enabled() then
		stats_set_packed_bools(32359, 32363, true)
		script:sleep(500)
	end
end)
SN_Special:add_separator()
SN_Special:add_text("CAUTION: might be unsafe")
V.cargoMaximized = false
V.cargoMaximize = SN_Special:add_checkbox("Maximize Price")
script.register_looped("cargomaxprice", function(script)
    script:yield()
    if V.cargoMaximize:is_enabled() then
        if not V.cargoMaximized then
            V.price = 6000000
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1", V.price)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD2", math.floor(V.price / 2))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD3", math.floor(V.price / 3))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD4", math.floor(V.price / 5))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD5", math.floor(V.price / 7))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD6", math.floor(V.price / 9))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD7", math.floor(V.price / 14))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD8", math.floor(V.price / 19))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD9", math.floor(V.price / 24))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD10", math.floor(V.price / 29))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD11", math.floor(V.price / 34))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD12", math.floor(V.price / 39))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD13", math.floor(V.price / 44))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD14", math.floor(V.price / 49))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD15", math.floor(V.price / 59))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD16", math.floor(V.price / 69))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD17", math.floor(V.price / 79))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD18", math.floor(V.price / 89))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD19", math.floor(V.price / 99))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD20", math.floor(V.price / 110))
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD21", math.floor(V.price / 111))
            V.cargoMaximized = true
        end
    else
        if V.cargoMaximized then
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1", 10000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD2", 11000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD3", 12000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD4", 13000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD5", 13500)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD6", 14000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD7", 14500)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD8", 15000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD9", 15500)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD10", 16000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD11", 16500)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD12", 17000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD13", 17500)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD14", 17750)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD15", 18000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD16", 18250)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD17", 18500)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD18", 18750)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD19", 19000)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD20", 19500)
            tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD21", 20000)
            V.cargoMaximized = false
        end
    end
end)
V.cargoCooldown = SN_Special:add_checkbox("Kill Cooldowns")
V.pcargoCdK = false
SN_Special:add_imgui(function()
    V.cargoCdK = V.cargoCooldown:is_enabled()
    if V.cargoCdK ~= V.pcargoCdK then
        if V.cargoCdK then
            tunables.set_int("EXEC_BUY_COOLDOWN", 0)
            tunables.set_int("EXEC_SELL_COOLDOWN", 0)
            gui.show_message("Special Cargo", "Cooldowns should've been killed")
        else
            tunables.set_int("EXEC_BUY_COOLDOWN", 300000)
            tunables.set_int("EXEC_SELL_COOLDOWN", 1800000)
            gui.show_message("Special Cargo", "Cooldowns should've been reset")
        end
        V.pcargoCdK = V.cargoCdK
    end
end)
SN_Special:add_separator()
SN_Special:add_text("Instant Sell")
SN_Special:add_button("Instant Sell",
function()
	script.run_in_fiber(
		function (script)
			globals.set_float(L.XMg, 0)
			stats_set_packed_bools(32359, 32363, true)
			locals.set_int("gb_contraband_sell", L.SCVMTl, 7)
			script:sleep(500)
			locals.set_int("gb_contraband_sell", L.SCVISl, 99999)
			sleep(500)
			for i = 0, 4 do
				if stats.get_int(MPX() .. "CONTOTALFORWHOUSE" .. i) > 0 then
					stats.set_int(MPX() .. "SPCONTOTALFORWHOUSE" .. i, stats.get_int(MPX() .. "CONTOTALFORWHOUSE" .. i) - 1)
				end
			end
			locals.set_int("gb_contraband_sell", L.SCVISl, 99999)
		end
	)
end)

-- MC Businesses
local SN_MB = SN_Business:add_tab("MC Businesses ")
SN_MB:add_text("Resupply All Businesses")
SN_MB:add_button("Resupply All", function()
	script.run_in_fiber(function(mcResupply)
		globals.set_int(1673807 + 1 + 6, 1)
		globals.set_int(1673807 + 1 + 6, 1)
		globals.set_int(1673807 + 1 + 6, 1) -- Acid Lab Supplies
		gui.show_message("Acid Lab", "Resupplying your Acid Lab")
		globals.set_int(1673807 + 1 + 5, 1)
		globals.set_int(1673807 + 1 + 5, 1)
		globals.set_int(1673807 + 1 + 5, 1) -- Bunker Supplies
		gui.show_message("Bunker", "Resupplying your Bunker")
		globals.set_int(1673807 + 1 + 0, 1)
		globals.set_int(1673807 + 1 + 0, 1)
		globals.set_int(1673807 + 1 + 0, 1) -- Counterfeit Cash Factory Supplies
		gui.show_message("Counterfeit Cash Factory", "Resupplying your Counterfeit Cash Factory")
		globals.set_int(1673807 + 1 + 1, 1)
		globals.set_int(1673807 + 1 + 1, 1)
		globals.set_int(1673807 + 1 + 1, 1) -- Document Forge Supplies
		gui.show_message("Document Forge", "Resupplying your Document Forge")
		globals.set_int(1673807 + 1 + 2, 1)
		globals.set_int(1673807 + 1 + 2, 1)
		globals.set_int(1673807 + 1 + 2, 1) -- Weed Farm Supplies
		gui.show_message("Weed Farm", "Resupplying your Weed Farm")
		globals.set_int(1673807 + 1 + 3, 1)
		globals.set_int(1673807 + 1 + 3, 1)
		globals.set_int(1673807 + 1 + 3, 1) -- Meth Lab Suplies
		gui.show_message("Meth Lab", "Resupplying your Meth Lab")
		globals.set_int(1673807 + 1 + 4, 1)
		globals.set_int(1673807 + 1 + 4, 1)
		globals.set_int(1673807 + 1 + 4, 1) -- Cocaine Lockup Supplies
		gui.show_message("Cocaine Lockup", "Resupplying your Cocaine Lockup")
	end)
end)
SN_MB:add_separator()
SN_MB:add_text("Raise Value of Product of MC Business to $1,000,000 +")
SN_MB:add_button("Raise Sale Prices", function()
    globals.set_int(L.MCPwv, 15000) -- price for weed
    globals.set_int(L.MCPmV, 60000) -- price for meth
    globals.set_int(L.MCPcockV, 100000) -- price for cocaine
    globals.set_int(L.MCPfakeV, 20000) -- price for document forge
    globals.set_int(L.MCPcashV, 30000) -- price for cash
	globals.set_int(L.MCPacidV, 6000) --price for acid
    gui.show_message("Production Value", "Production sale value has been increased for all businesses")
end)

-- Arcade loop - 
local SN_arcade = SN_Business:add_tab("Arcade ")
V.arcadeSafe = SN_arcade:add_checkbox("Arcade Safe Loop")
script.register_looped("arcadeloop", function(script)
    script:yield()
    if V.arcadeSafe:is_enabled() == true then
        gui.show_message("Arcade", "Supplying Arcade Safe with money")
        STATS.STAT_SET_INT(joaat(MPX() .. "ARCADE_SAFE_CASH_VALUE"), 2000, true)
        STATS.STAT_SET_INT(joaat(MPX() .. "ARCADE_PAY_TIME_LEFT"), -1, true)
        script:sleep(5000)
    end
end)
SN_arcade:add_separator()
SN_arcade:add_button("Collect Arcade Safe", function()
    V.safeValue = stats.get_int(MPX() .. "ARCADE_SAFE_CASH_VALUE")
    if V.safeValue > 0 then
        locals.set_int("am_mp_arcade", 133 + 144, 1)
        gui.show_message("Diamond Casino Heist", "Safe money collected")
    else
        gui.show_message("Diamond Casino Heist", "Arcade safe is empty")
    end
end)

-- Garment Factory --
local SN_Garment = SN_Business:add_tab("Garment Factory ")
SN_Garment:add_text("Garment Factory")

SN_Garment:add_button("Collect Safe", function()
    V.safeValue = stats.get_int(MPX() .. "HDEN24_SAFE_CASH_VALUE")
    if V.safeValue > 0 then
        -- Collect safe logic
        gui.show_message("Garment Factory", "Safe money collected: $" .. V.safeValue)
    else
        gui.show_message("Garment Factory", "Safe is empty")
    end
end)

SN_Garment:add_button("Unbrick Computer", function()
    stats.set_int(MPX() .. "HACKER24_GEN_BS", -24607)
    gui.show_message("Garment Factory", "Computer unbricked")
end)

SN_Garment:add_button("Skip Setup", function()
    stats.set_int(MPX() .. "HACKER24_GEN_BS", -1)
    gui.show_message("Garment Factory", "Setup skipped. Change session to apply")
end)

-- Bail Office --
local SN_BailOffice = SN_Business:add_tab("Bail Office ")

SN_BailOffice:add_button("Collect Safe", function()
    V.safeValue = stats.get_int(MPX() .. "BAIL_SAFE_CASH_VALUE")
    if V.safeValue > 0 then
        gui.show_message("Bail Office", "Safe money collected: $" .. V.safeValue)
    else
        gui.show_message("Bail Office", "Safe is empty")
    end
end)
SN_BailOffice:add_button("All to Max Payout",
function ()
	stats.set_int(MPX() .. "BOUNTY24_STD_TARG_RWD_0", 90000)
	stats.set_int(MPX() .. "BOUNTY24_STD_TARG_RWD_1", 90000)
	stats.set_int(MPX() .. "BOUNTY24_STD_TARG_RWD_2", 90000)
end)
SN_BailOffice:add_button("Free All Prisoners", function()
    stats.set_int(MPX() .. "BAIL_PRISONER_POSIX0", 0)
    stats.set_int(MPX() .. "BAIL_PRISONER_POSIX1", 0)
    stats.set_int(MPX() .. "BAIL_PRISONER_POSIX2", 0)
    gui.show_message("Bail Office", "All prisoners freed")
end)
SN_BailOffice:add_text("Note: Do that outside Bail Office")

-- Money Tool --
local SN_MoneyT = Silent:add_tab("Money Tool ")

-- Casino --
V.CasinoPrizes = {
    { name = "Clothing 1", index = 0 },
    { name = "Clothing 2", index = 8 },
    { name = "Clothing 3", index = 12 },
    { name = "2,500 RP", index = 1 },
    { name = "5,000 RP", index = 5 },
    { name = "7,500 RP", index = 9 },
    { name = "10,000 RP", index = 13 },
    { name = "15,000 RP", index = 17 },
    { name = "$20,000", index = 2 },
    { name = "$30,000", index = 6 },
    { name = "$40,000", index = 14 },
    { name = "$50,000", index = 19 },
    { name = "10,000 Chips", index = 3 },
    { name = "15,000 Chips", index = 7 },
    { name = "20,000 Chips", index = 10 },
    { name = "25,000 Chips", index = 15 },
    { name = "Discount", index = 4 },
    { name = "Mystery", index = 11 },
    { name = "Vehicle", index = 18 }
}

local SN_Casino = SN_MoneyT:add_tab("Casino ")

SN_Casino:add_text("Lucky Wheel")
V.prizeNames = {}
for _, prize in ipairs(V.CasinoPrizes) do
    table.insert(V.prizeNames, prize.name)
end
V.luckyPrizeIndex = 0
SN_Casino:add_imgui(function()
    ImGui.Text("Select Prize:")
    local newIndex, changed = ImGui.Combo("##LuckyPrize", V.luckyPrizeIndex, V.prizeNames, #V.prizeNames)
    if changed then
        V.luckyPrizeIndex = newIndex
        gui.show_message("Casino", "Selected prize: " .. V.prizeNames[V.luckyPrizeIndex + 1])
    end
end)
SN_Casino:add_button("Give Prize", function()
    V.selected = V.CasinoPrizes[V.luckyPrizeIndex + 1]
    locals.set_int("casino_lucky_wheel", 302 + 14, V.selected.index)
    locals.set_int("casino_lucky_wheel", 302 + 45, 11)
    gui.show_message("Casino", "Prize given: " .. V.selected.name)
end)
SN_Casino:add_separator()
SN_Casino:add_text("Slot Machines")
SN_Casino:add_button("Rig Slots", function()
    V.randomTable = L.CRS
    for i = 3, 196 do
        if i ~= 67 and i ~= 132 then
            locals.set_int("casino_slots", V.randomTable + i, 6)
        end
    end
    gui.show_message("Casino", "Slots should've been rigged")
end)
SN_Casino:add_sameline()
SN_Casino:add_button("Lose Slots", function()
    V.randomTable = L.CRS
    for i = 3, 196 do
        if i ~= 67 and i ~= 132 then
            locals.set_int("casino_slots", V.randomTable + i, 0)
        end
    end
    gui.show_message("Casino", "Slots should've been rigged")
end)

SN_Casino:add_separator()
SN_Casino:add_text("Roulette")

SN_Casino:add_button("Land On Black 13", function()
    script.run_in_fiber(function()
        network.force_script_host("casinoroulette")
        script:sleep(500)
        for i = 0, 5 do
            locals.set_int("casinoroulette", 146 + 1357 + 153 + i, 13)
        end
        gui.show_message("Casino", "Ball should land on Black 13")
    end)
end)

SN_Casino:add_sameline()
SN_Casino:add_button("Land On Red 16", function()
    script.run_in_fiber(function()
        network.force_script_host("casinoroulette")
        script:sleep(500)
        for i = 0, 5 do
            locals.set_int("casinoroulette", 146 + 1357 + 153 + i, 16)
        end
        gui.show_message("Casino", "Ball should land on Red 16")
    end)
end)

SN_Casino:add_separator()
SN_Casino:add_text("Casino Limits")

local bypassCasinoLimits = SN_Casino:add_checkbox("Bypass Casino Limits (CAUTION)")

script.register_looped("bypass_casino_limits", function()
    if bypassCasinoLimits:is_enabled() then
        stats.set_int("MPPLY_CASINO_CHIPS_WON_GD", 0)
        stats.set_int("MPPLY_CASINO_CHIPS_WONTIM", 0)
        stats.set_int("MPPLY_CASINO_GMBLNG_GD", 0)
        stats.set_int("MPPLY_CASINO_BAN_TIME", 0)
        stats.set_int("MPPLY_CASINO_CHIPS_PURTIM", 0)
        stats.set_int("MPPLY_CASINO_CHIPS_PUR_GD", 0)
    end
end)

SN_Casino:add_separator()
SN_Casino:add_text("Chips Limit Editor")

local chipsLimit = SN_Casino:add_input_int("Chips Limit")
chipsLimit:set_value(20000)

SN_Casino:add_button("Apply Acquire Limit", function()
    tunables.set_int("VC_CASINO_CHIP_MAX_BUY", chipsLimit:get_value())
    tunables.set_int("VC_CASINO_CHIP_MAX_BUY_PENTHOUSE", chipsLimit:get_value())
    gui.show_message("Casino", "Acquire limit set to " .. chipsLimit:get_value())
end)

SN_Casino:add_sameline()
SN_Casino:add_button("Apply Trade Limit", function()
    tunables.set_int("VC_CASINO_CHIP_MAX_SELL", chipsLimit:get_value())
    gui.show_message("Casino", "Trade limit set to " .. chipsLimit:get_value())
end)

SN_Casino:add_button("Reset to Default", function()
    chipsLimit:set_value(20000)
    tunables.set_int("VC_CASINO_CHIP_MAX_BUY", 20000)
    tunables.set_int("VC_CASINO_CHIP_MAX_BUY_PENTHOUSE", 50000)
    tunables.set_int("VC_CASINO_CHIP_MAX_SELL", 10000000)
    gui.show_message("Casino", "Limits reset to default")
end)

-- Easy Money --
local SN_EasyMoney = SN_MoneyT:add_tab("Easy Money ")
SN_EasyMoney:add_text("RISK WARNING")
SN_EasyMoney:add_text("Using money loops may result in a ban")
local acknowledgeRisk = SN_EasyMoney:add_checkbox("I Acknowledge the Risks")

function TriggerTransaction(hash)
    script.execute_as_script("shop_controller", function()
        if NETSHOPPING.NET_GAMESERVER_BASKET_IS_ACTIVE() then
            NETSHOPPING.NET_GAMESERVER_BASKET_END()
        end

        V.price = NETSHOPPING.NET_GAMESERVER_GET_PRICE(hash, 0x57DE404E, true)
        V.success, transactionId = NETSHOPPING.NET_GAMESERVER_BEGIN_SERVICE(-1135378931, 0x57DE404E, hash, 0x562592BB, V.price, 2)
        if V.success then
            NETSHOPPING.NET_GAMESERVER_CHECKOUT_START(transactionId)
        end
    end)
end

SN_EasyMoney:add_separator()
SN_EasyMoney:add_text("Freeroam (Enable Risk Acknowledgment first)")

local loopDelay = SN_EasyMoney:add_input_int("Loop Delay (ms)")
loopDelay:set_value(333)

V.loop50k = SN_EasyMoney:add_checkbox("50K Loop")
script.register_looped("50kTransaction", function(script)
    script:yield()
    if V.loop50k:is_enabled() and acknowledgeRisk:is_enabled() then
        TriggerTransaction(0x610F9AB4)
        script:sleep(loopDelay:get_value())
    elseif V.loop50k:is_enabled() and not acknowledgeRisk:is_enabled() then
        gui.show_message("Easy Money", "You must acknowledge the risks first!")
        V.loop50k:set_enabled(false)
    end
end)

V.loop100k = SN_EasyMoney:add_checkbox("100K Loop")
script.register_looped("100kTransaction", function(script)
    script:yield()
    if V.loop100k:is_enabled() and acknowledgeRisk:is_enabled() then
        TriggerTransaction(joaat("SERVICE_EARN_AMBIENT_JOB_AMMUNATION_DELIVERY"))
        script:sleep(loopDelay:get_value())
    elseif V.loop100k:is_enabled() and not acknowledgeRisk:is_enabled() then
        gui.show_message("Easy Money", "You must acknowledge the risks first!")
        V.loop100k:set_enabled(false)
    end
end)

V.loop180k = SN_EasyMoney:add_checkbox("180K Loop")
script.register_looped("180kTransaction", function(script)
    script:yield()
    if V.loop180k:is_enabled() and acknowledgeRisk:is_enabled() then
        TriggerTransaction(0x615762F1)
        script:sleep(loopDelay:get_value())
    elseif V.loop180k:is_enabled() and not acknowledgeRisk:is_enabled() then
        gui.show_message("Easy Money", "You must acknowledge the risks first!")
        V.loop180k:set_enabled(false)
    end
end)

V.loop680k = SN_EasyMoney:add_checkbox("680K Loop")
script.register_looped("680kTransaction", function(script)
    script:yield()
    if V.loop680k:is_enabled() and acknowledgeRisk:is_enabled() then
        TriggerTransaction(joaat("SERVICE_EARN_BETTING"))
        script:sleep(loopDelay:get_value())
    elseif V.loop680k:is_enabled() and not acknowledgeRisk:is_enabled() then
        gui.show_message("Easy Money", "You must acknowledge the risks first!")
        V.loop680k:set_enabled(false)
    end
end)

SN_MoneyT:add_separator()
SN_MoneyT:add_text("Bank Transactions")

SN_MoneyT:add_button("Deposit All Cash", function()
    local charSlot = stats.get_int("MPPLY_LAST_MP_CHAR")
    local walletMoney = NETSHOPPING.NETWORK_GET_VC_WALLET_BALANCE(charSlot)
    if walletMoney > 0 then
        NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(charSlot, walletMoney)
        gui.show_message("Money Tool", "Deposited: $" .. walletMoney)
    else
        gui.show_message("Money Tool", "No cash to deposit")
    end
end)

SN_MoneyT:add_sameline()
SN_MoneyT:add_button("Withdraw All Cash", function()
    local charSlot = stats.get_int("MPPLY_LAST_MP_CHAR")
    local bankMoney = NETSHOPPING.NETWORK_GET_VC_BANK_BALANCE()
    if bankMoney > 0 then
        NETSHOPPING.NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(charSlot, bankMoney)
        gui.show_message("Money Tool", "Withdrawn: $" .. bankMoney)
    else
        gui.show_message("Money Tool", "No money in bank")
    end
end)

SN_MoneyT:add_separator()
SN_MoneyT:add_text("Money Amount Editor")

local moneyAmount = SN_MoneyT:add_input_int("Amount")
moneyAmount:set_value(0)

SN_MoneyT:add_button("Deposit Amount", function()
    local amount = moneyAmount:get_value()
    if amount > 0 then
        local charSlot = stats.get_int("MPPLY_LAST_MP_CHAR")
        local walletMoney = NETSHOPPING.NETWORK_GET_VC_WALLET_BALANCE(charSlot)
        local depositAmount = (amount > walletMoney) and walletMoney or amount
        NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(charSlot, depositAmount)
        gui.show_message("Money Tool", "Deposited: $" .. depositAmount)
    else
        gui.show_message("Money Tool", "Enter an amount first")
    end
end)

SN_MoneyT:add_sameline()
SN_MoneyT:add_button("Withdraw Amount", function()
    local amount = moneyAmount:get_value()
    if amount > 0 then
        local charSlot = stats.get_int("MPPLY_LAST_MP_CHAR")
        local bankMoney = NETSHOPPING.NETWORK_GET_VC_BANK_BALANCE()
        local withdrawAmount = (amount > bankMoney) and bankMoney or amount
        NETSHOPPING.NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(charSlot, withdrawAmount)
        gui.show_message("Money Tool", "Withdrawn: $" .. withdrawAmount)
    else
        gui.show_message("Money Tool", "Enter an amount first")
    end
end)

SN_MoneyT:add_sameline()
SN_MoneyT:add_button("Remove Amount", function()
    local amount = moneyAmount:get_value()
    if amount > 0 then
        globals.set_int(2708554 + 36, amount)
        gui.show_message("Money Tool", "Removed: $" .. amount)
    else
        gui.show_message("Money Tool", "Enter an amount first")
    end
end)

-- Miscellaneous --
local SN_Miscellaneous = Silent:add_tab("Miscellaneous ")
-- Vehicle Utilities --
function FastAcc(speed)
	V.vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), true)
	VEHICLE.SET_VEHICLE_FORWARD_SPEED(V.vehicle, speed/2)
	VEHICLE.SET_VEHICLE_MAX_SPEED(V.vehicle, speed)
end

local SN_VehUtils = SN_Miscellaneous:add_tab("Vehicle Utilities ")
SN_VehUtils:add_text("Set Top Speed Of Vehicle")
V.vehTopSpeed = SN_VehUtils:add_input_int("Top Speed")
SN_VehUtils:add_button("Set Top Speed",
function ()
	FastAcc(V.vehTopSpeed:get_value() - 100)
end)
V.fastAcc = SN_VehUtils:add_checkbox("Fast Acceleration Loop")
script.register_looped("fastacc",
function (script)
	script:yield()
	if V.fastAcc:is_enabled() then
		FastAcc(V.vehTopSpeed:get_value() -100)
		script:sleep(500)
	end
end)
SN_VehUtils:add_separator()
SN_VehUtils:add_text("Vehicle unlocker")

SN_VehUtils:add_button("Unlock Removed Vehicles",
function ()
    globals.set_int(262145 + 34437, 1)
    globals.set_int(262145 + 34615, 1)
    globals.set_int(262145 + 34621, 1)
    globals.set_int(262145 + 34661, 1)
    globals.set_int(262145 + 34587, 1)
    globals.set_int(262145 + 34583, 1)
    globals.set_int(262145 + 34581, 1)
    globals.set_int(262145 + 34639, 1)
    globals.set_int(262145 + 34453, 1)
    globals.set_int(262145 + 34657, 1)
    globals.set_int(262145 + 34659, 1)
    globals.set_int(262145 + 34413, 1)
    globals.set_int(262145 + 34455, 1)
    globals.set_int(262145 + 34419, 1)
    globals.set_int(262145 + 34519, 1)
    globals.set_int(262145 + 34585, 1)
    globals.set_int(262145 + 34543, 1)
    globals.set_int(262145 + 34491, 1)
    globals.set_int(262145 + 34411, 1)
    globals.set_int(262145 + 34525, 1)
    globals.set_int(262145 + 34555, 1)
    globals.set_int(262145 + 34521, 1)
    globals.set_int(262145 + 34523, 1)
    globals.set_int(262145 + 34439, 1)
    globals.set_int(262145 + 34675, 1)
    globals.set_int(262145 + 34653, 1)
    globals.set_int(262145 + 34611, 1)
    globals.set_int(262145 + 34457, 1)
    globals.set_int(262145 + 34651, 1)
    globals.set_int(262145 + 34669, 1)
    globals.set_int(262145 + 34665, 1)
    globals.set_int(262145 + 34673, 1)
    globals.set_int(262145 + 34601, 1)
    globals.set_int(262145 + 34629, 1)
    globals.set_int(262145 + 34547, 1)
    globals.set_int(262145 + 34623, 1)
    globals.set_int(262145 + 34527, 1)
    globals.set_int(262145 + 34475, 1)
    globals.set_int(262145 + 34449, 1)
    globals.set_int(262145 + 34645, 1)
    globals.set_int(262145 + 34591, 1)
    globals.set_int(262145 + 34671, 1)
    globals.set_int(262145 + 34559, 1)
    globals.set_int(262145 + 34531, 1)
    globals.set_int(262145 + 34529, 1)
    globals.set_int(262145 + 34563, 1)
    globals.set_int(262145 + 34649, 1)
    globals.set_int(262145 + 34573, 1)
    globals.set_int(262145 + 34655, 1)
    globals.set_int(262145 + 34515, 1)
    globals.set_int(262145 + 34617, 1)
    globals.set_int(262145 + 34683, 1)
    globals.set_int(262145 + 34593, 1)
    globals.set_int(262145 + 34443, 1)
    globals.set_int(262145 + 34445, 1)
    globals.set_int(262145 + 34571, 1)
    globals.set_int(262145 + 34595, 1)
    globals.set_int(262145 + 34619, 1)
    globals.set_int(262145 + 34681, 1)
    globals.set_int(262145 + 34609, 1)
    globals.set_int(262145 + 34465, 1)
    globals.set_int(262145 + 34481, 1)
    globals.set_int(262145 + 34557, 1)
    globals.set_int(262145 + 34577, 1)
    globals.set_int(262145 + 34597, 1)
    globals.set_int(262145 + 34603, 1)
    globals.set_int(262145 + 34607, 1)
    globals.set_int(262145 + 34635, 1)
    globals.set_int(262145 + 34667, 1)
    globals.set_int(262145 + 34663, 1)
    globals.set_int(262145 + 34447, 1)
    globals.set_int(262145 + 34567, 1)
    globals.set_int(262145 + 34471, 1)
    globals.set_int(262145 + 34633, 1)
    globals.set_int(262145 + 34431, 1)
    globals.set_int(262145 + 34637, 1)
    globals.set_int(262145 + 34613, 1)
    globals.set_int(262145 + 34625, 1)
    globals.set_int(262145 + 34415, 1)
    globals.set_int(262145 + 34565, 1)
    globals.set_int(262145 + 34463, 1)
    globals.set_int(262145 + 34575, 1)
    globals.set_int(262145 + 34485, 1)
    globals.set_int(262145 + 34631, 1)
    globals.set_int(262145 + 34605, 1)
    globals.set_int(262145 + 34535, 1)
    globals.set_int(262145 + 34537, 1)
    globals.set_int(262145 + 34687, 1)
    globals.set_int(262145 + 17319, 1)
    globals.set_int(262145 + 17321, 1)
    globals.set_int(262145 + 20042, 1)
    globals.set_int(262145 + 21695, 1)
    globals.set_int(262145 + 21696, 1)
    globals.set_int(262145 + 22640, 1)
    globals.set_int(262145 + 22645, 1)
    globals.set_int(262145 + 22646, 1)
    globals.set_int(262145 + 22651, 1)
    globals.set_int(262145 + 22654, 1)
    globals.set_int(262145 + 23805, 1)
    globals.set_int(262145 + 23817, 1)
    globals.set_int(262145 + 23869, 1)
    globals.set_int(262145 + 25455, 1)
    globals.set_int(262145 + 25458, 1)
    globals.set_int(262145 + 25475, 1)
    globals.set_int(262145 + 26418, 1)
    globals.set_int(262145 + 28278, 1)
    globals.set_int(262145 + 28279, 1)
    globals.set_int(262145 + 28918, 1)
    globals.set_int(262145 + 28919, 1)
    globals.set_int(262145 + 29693, 1)
    globals.set_int(262145 + 17443, 1)
    globals.set_int(262145 + 17444, 1)
    globals.set_int(262145 + 17445, 1)
    globals.set_int(262145 + 17447, 1)
    globals.set_int(262145 + 17453, 1)
    globals.set_int(262145 + 17455, 1)
    globals.set_int(262145 + 17458, 1)
    globals.set_int(262145 + 17459, 1)
    globals.set_int(262145 + 17460, 1)
    globals.set_int(262145 + 17462, 1)
end)


local SN_unlocker = SN_Miscellaneous:add_tab("Unlocker Menu ")
SN_unlocker:add_text("Unlock All the Things you want")
SN_unlocker:add_button("Unlock All Parachutes",
	function()
		stats.set_packed_stat_bool(3609, true)
		stats_set_packed_bools(31791, 31796, true)
		stats_set_packed_bools(34378, 34379, true)
	end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock All Tattoos",
	function()
		for i = 0, 53 do
			stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_" .. i, -1)
		end
		stats.set_int(MPX() .. "TATTOO_FM_CURRENT_32", -1)
	end)
	SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock Diamond Casino Outfits", function() stats_set_packed_bools(28225, 28248, true) end)

SN_unlocker:add_button("Enable Fast Run and Reload",
function () 
	for i = 1, 3 do
		stats.set_int(MPX() .. "CHAR_FM_ABILITY_" .. i .. "_UNLCK", -1)
		stats.set_int(MPX() .. "CHAR_ABILITY_" .. i .. "_UNLCK", -1)
	end
	gui.show_message("SUCCESSFULLY ENABLED FAST RUN AND RELOAD", "CHANGE SESSION TO SEE THE RESULT")
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Disable Fast Run and Reload",
function () 
	for i = 1, 3 do
		stats.set_int(MPX() .. "CHAR_FM_ABILITY_" .. i .. "_UNLCK", 0)
		stats.set_int(MPX() .. "CHAR_ABILITY_" .. i .. "_UNLCK", 0)
	end
	gui.show_message("SUCCESSFULLY DISABLED FAST RUN AND RELOAD", "CHANGE SESSION TO SEE THE RESULT")
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock Halloween Vehicles",
function ()
	globals.set_int(262145 + 12114, 1)
end)
SN_unlocker:add_button("BASE5 T-SHIRT",
function() 
	globals.set_int(262145 + 23900, 1) 
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock Mercenaries Masks",function() 
	for i = 34713, 34731 do
		globals.set_int(262145 + i, 1)
	end
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock Flight School Gold Medals",
	function()
		for i = 0, 9 do
			stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_" .. i , -1)
			stats.set_int(MPX() .. "PILOT_SCHOOL_MEDAL_" .. i, -1)
			stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_" .. i, true)
		end
		stats.set_int("MPPLY_NUM_CAPTURES_CREATED", 100)
	end)
SN_unlocker:add_button("Unlock Trade Prices for Cop Cars",
	function()
		stats.set_int(MPX() .. "SALV23_GEN_BS", -1)
		stats.set_int(MPX() .. "SALV23_INST_PROG", -1)
		stats.set_int(MPX() .. "SALV23_SCOPE_BS", -1)
		stats.set_int(MPX() .. "MOST_TIME_ON_3_PLUS_STARS", 300000)
	end
)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock Trade Prices for Arena War Cars", function()
    stats_set_packed_bools(24963, 25109, true)
end)
SN_unlocker:add_button("Unlock The Shocker",
function ()
	stats.set_packed_stat_bool(51196, true)
	gui.show_message("THE SHOCK HAS BEEN ADDED TO YOUR INVENTORY", "PLEASE JOIN A NEW SESSION TO USE IT")
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock Hidden Liveries",
function ()
	for i = 0, 20 do
		stats.set_int("MPPLY_XMASLIVERIES" .. i, -1)
	end
end)
SN_unlocker:add_button("Unlock Xmas Plates",
function ()
	stats.set_int("MPPLY_XMAS23_PLATES0", -1)
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock Taxi Liveries",
function ()
	stats.set_int(MPX() .. "AWD_TAXIDRIVER", 50)
	stats.set_masked_int(MPX() .. "DLC22022PSTAT_INT536", 10, 16, 8)
end)
SN_unlocker:add_button("Unlock Halloween Face Paint",
function ()
	globals.set_int(L.FMg + 12116, 1)
end)
SN_unlocker:add_button("Unlock Skull Tattoo",
function () 
	stats.set_int(MPX() .. "PLAYER_HEADSHOTS", 500)
end)

SN_unlocker:add_separator()
SN_unlocker:add_text("Unlock Weapon Liveries")

SN_unlocker:add_button("Dildodude Camo | Micro SMG", function() stats.set_packed_stat_bool(36788, true) end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Dildodude Camo | Pump Shotgun", function() stats.set_packed_stat_bool(36787, true) end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Employee of the Month Fin. | Micro SMG", function() stats.set_packed_stat_bool(41657, true) end)
SN_unlocker:add_button("Santa's Helper Finish | Heavy Sniper", function() stats.set_packed_stat_bool(42069, true) end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Season's Greetings | Pistol Mk II", function() stats.set_packed_stat_bool(36786, true) end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Skull Santa Finish | Special Carbine", function() stats.set_packed_stat_bool(42122, true) end)
SN_unlocker:add_button("Snowman Finish | Combat Pistol", function() stats.set_packed_stat_bool(42068, true) end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Suede Bucks Finish | Carbine Rifle", function() stats.set_packed_stat_bool(41658, true) end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Uncle T Finish | RPG", function() stats.set_packed_stat_bool(41659, true) end)
SN_unlocker:add_separator()
SN_unlocker:add_text("Unlock Bootm Dollar Bounties Items")
SN_unlocker:add_button("Unlock Clothes",
function ()
	stats.set_packed_stat_bool(51217, true) -- Gold Pisswasser Shorts
    stats.set_packed_stat_bool(51240, true)  -- Silver Gun Necklace
	stats.set_packed_stat_bool(51241, true)  -- Black Gun Necklace
	stats.set_packed_stat_bool(51242, true)  -- Gold Gun Necklace
	stats.set_packed_stat_bool(51243, true)  -- Rose Gun Necklace
	stats.set_packed_stat_bool(51244, true)  -- Bronze Gun Necklace
	stats.set_packed_stat_bool(51221, true)  -- Halloween Spooky Tee
	stats.set_packed_stat_bool(51216, true)  -- Pisswasser Good Time Tee
	stats.set_packed_stat_bool(51220, true)  -- Día de Muertos Tee
	stats.set_packed_stat_bool(51239, true)  -- Rockstar Red Logo Sweater
	stats.set_packed_stat_bool(51219, true)  -- Mid Autumn Festival Sundress (female)
	stats.set_packed_stat_bool(51218, true)  -- Mid Autumn Festival Shirt
	stats.set_packed_stat_bool(51245, true)  -- Black Yeti Fall Sweater
	stats.set_packed_stat_bool(51246, true)  -- White Yeti Fall Sweater
	stats.set_packed_stat_bool(51247, true)  -- Red Yeti Fall Sweater
	stats.set_packed_stat_bool(42287, true)  -- Pizza This... Forwards Cap, Pizza This... Backwards Cap, Pizza This... Outfit
	stats.set_packed_stat_bool(51215, true)  -- Brown Alpine Hat
	stats.set_packed_stat_bool(42257, true)  -- The Street Artist
	stats.set_packed_stat_bool(42268, true)  -- Ghosts Exposed Outfit
	stats.set_packed_stat_bool(42286, true)  -- Ludendorff Survivor
	stats.set_packed_stat_bool(51215, true)  -- Alpine Outfit
	stats.set_packed_stat_bool(51237, true)  -- Tan Turkey
	stats.set_packed_stat_bool(51238, true)  -- Brown Turkey
	stats.set_packed_stat_bool(51234, true)  -- Orange Glow Skeleton Onesie
	stats.set_packed_stat_bool(51235, true)  -- Purple Glow Skeleton Onesie
	stats.set_packed_stat_bool(51236, true)  -- Green Glow Skeleton Onesie
	stats.set_packed_stat_bool(51258, true)  -- Pizza This... Tee
	
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Unlock Masks",
function ()
	stats.set_packed_stat_bool(51222, true)  -- Black Demon Goat Mask
	stats.set_packed_stat_bool(51223, true)  -- Red Demon Goat Mask
	stats.set_packed_stat_bool(51224, true)  -- Tan Demon Goat Mask
	stats.set_packed_stat_bool(51225, true)  -- Black Creepy Cat Mask
	stats.set_packed_stat_bool(51226, true)  -- Gray Creepy Cat Mask
	stats.set_packed_stat_bool(51227, true)  -- Brown Creepy Cat Mask
	stats.set_packed_stat_bool(51228, true)  -- Gray Hooded Skull Mask
	stats.set_packed_stat_bool(51229, true)  -- Red Hooded Skull Mask
	stats.set_packed_stat_bool(51230, true)  -- Blue Hooded Skull Mask
	stats.set_packed_stat_bool(51231, true)  -- Red Flaming Skull Mask
	stats.set_packed_stat_bool(51232, true)  -- Green Flaming Skull Mask
	stats.set_packed_stat_bool(51233, true)  -- Orange Flaming Skull Mask

end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Special Clothes",
function ()
	stats.set_packed_stat_bool(32407, true)  -- Bottom Dollar Jacket
	stats.set_packed_stat_bool(32408, true)  -- The Bottom Dollar
	stats.set_packed_stat_bool(51250, true)  -- Cobalt Jackal Racing Pants
	stats.set_packed_stat_bool(51251, true)  -- Khaki 247 Chino Pants
	stats.set_packed_stat_bool(51248, true)  -- The Diamond Jackpot Tee
	stats.set_packed_stat_bool(51249, true)  -- Cobalt Jackal Racing Jersey
	stats.set_packed_stat_bool(51253, true)  -- Purple Güffy Cardigan
	stats.set_packed_stat_bool(51252, true)  -- Demon Biker Jacket
	stats.set_packed_stat_bool(51254, true)  -- SA Denim Biker Jacket
	stats.set_packed_stat_bool(51255, true)  -- Green 247 Shirt
	stats.set_packed_stat_bool(51256, true)  -- Barbed Wire Shirt

end)
SN_unlocker:add_sameline()

SN_unlocker:add_separator()
SN_unlocker:add_text("Unlock All Collectables")
function unlock_packed_bools(from, to)
    for i = from, to do
        stats.set_packed_stat_bool(i, true)
    end
end
SN_unlocker:add_button("Unlock Signal jammers",
function ()
	unlock_packed_bools(28099, 28148)
end)

SN_unlocker:add_sameline()
SN_unlocker:add_button("LD Organics",
function ()
	unlock_packed_bools(34262, 34361)
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("Playing Cards & Action Figures",
function ()
	unlock_packed_bools(26811, 26964)
end)
SN_unlocker:add_sameline()
SN_unlocker:add_button("SnowMans",
function ()
	unlock_packed_bools(36630, 36654)
end)


-- LSCM ---
local SN_LSCM = SN_Miscellaneous:add_tab("LSCM Unlocker Menu ")

SN_LSCM:add_button("Unlock All Rep Lvl 1000", function()
	for i = 262145 + 31046, 262145 + 31075 do
		globals.set_float(i, 100000)
	end
end)
SN_LSCM:add_button("Unlock Trade Prices for Headlights", function() stats_set_packed_bools(24980, 24991, true) end)

SN_LSCM:add_button("Unlock Prize Ride",
	function()
		stats.set_bool(MPX() .. "CARMEET_PV_CHLLGE_CMPLT", true)
		stats.set_bool(MPX() .. "CARMEET_PV_CLMED", false)
	end
)


-- Gun Van
local SN_gun_van_tab = Silent:add_tab("Gun Van Menu ")

V.gunvan_locations = {
	vec3:new(-29.532, 6435.136, 31.162),
	vec3:new(1705.214, 4819.167, 41.75),
	vec3:new(1795.522, 3899.753, 33.869),
	vec3:new(1335.536, 2758.746, 51.099),
	vec3:new(795.583, 1210.78, 338.962),
	vec3:new(-3192.67, 1077.205, 20.594),
	vec3:new(-789.719, 5400.921, 33.915),
	vec3:new(-24.384, 3048.167, 40.703),
	vec3:new(2666.786, 1469.324, 24.237),
	vec3:new(-1454.966, 2667.503, 3.2),
	vec3:new(2340.418, 3054.188, 47.888),
	vec3:new(1509.183, -2146.795, 76.853),
	vec3:new(1137.404, -1358.654, 34.322),
	vec3:new(-57.208, -2658.793, 5.737),
	vec3:new(1905.017, 565.222, 175.558),
	vec3:new(974.484, -1718.798, 30.296),
	vec3:new(779.077, -3266.297, 5.719),
	vec3:new(-587.728, -1637.208, 19.611),
	vec3:new(733.99, -736.803, 26.165),
	vec3:new(-1694.632, -454.082, 40.712),
	vec3:new(-1330.726, -1163.948, 4.313),
	vec3:new(-496.618, 40.231, 52.316),
	vec3:new(275.527, 66.509, 94.108),
	vec3:new(260.928, -763.35, 30.559),
	vec3:new(-478.025, -741.45, 30.299),
	vec3:new(894.94, 3603.911, 32.56),
	vec3:new(-2166.511, 4289.503, 48.733),
	vec3:new(1465.633, 6553.67, 13.771),
	vec3:new(1101.032, -335.172, 66.944),
	vec3:new(149.683, -1655.674, 29.028),
}

V.van_locations = {
	"Paleto Bay - 1",
	"Grapeseed - 2",
	"Sandy Shores - 3",
	"Grand Senora - 4",
	"Vinewood Hills - 5",
	"Chumash - 6",
	"Paleto Forest - 7",
	"Zancudo River - 8",
	"Power Station - 9",
	"Lago Zancudo - 10",
	"Grand Senora - 11",
	"El Burro Heights - 12",
	"Murrieta Heights - 13",
	"Elysian Island - 14",
	"Tataviam - 15",
	"La Mesa - 16",
	"Terminal - 17",
	"La Puerta - 18",
	"La Mesa - 19",
	"Del Perro - 20",
	"Magellan Ave - 21",
	"West Vinewood - 22",
	"Downtown Vinewood - 23",
	"Pillbox Hill - 24",
	"Little Seoul - 25",
	"Alamo Sea - 26",
	"North Chumash - 27",
	"Mount Chiliad - 28",
	"Mirror Park - 29",
	"Davis - 30",
}

-- Originally by SilentSalo
V.weapons_data = {
	"WEAPON_KNIFE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_HAMMER",
	"WEAPON_BOTTLE",
	"WEAPON_DAGGER",
	"WEAPON_KNUCKLE",
	"WEAPON_MACHETE",
	"WEAPON_FLASHLIGHT",
	"WEAPON_SWITCHBLADE",
	"WEAPON_BATTLEAXE",
	"WEAPON_POOLCUE",
	"WEAPON_WRENCH",
	"WEAPON_HATCHET",
	"WEAPON_BAT",
	"WEAPON_CROWBAR",
	"WEAPON_STUNROD",
	"WEAPON_PISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_FLAREGUN",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_REVOLVER",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_DOUBLEACTION",
	"WEAPON_RAYPISTOL",
	"WEAPON_CERAMICPISTOL",
	"WEAPON_NAVYREVOLVER",
	"WEAPON_GADGETPISTOL",
	"WEAPON_STUNGUN_MP",
	"WEAPON_MICROSMG",
	"WEAPON_SMG",
	"WEAPON_SMG_MK2",
	"WEAPON_ASSAULTSMG",
	"WEAPON_COMBATPDW",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_MINISMG",
	"WEAPON_MG",
	"WEAPON_COMBATMG",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_GUSENBERG",
	"WEAPON_RAYCARBINE",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_SPECIALCARBINE_MK2",
	"WEAPON_BULLPUPRIFLE",
	"WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_COMPACTRIFLE",
	"WEAPON_MILITARYRIFLE",
	"WEAPON_HEAVYRIFLE",
	"WEAPON_TACTICALRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_PUMPSHOTGUN_MK2",
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_MUSKET",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_DBSHOTGUN",
	"WEAPON_AUTOSHOTGUN",
	"WEAPON_COMBATSHOTGUN",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_PRECISIONRIFLE",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_RPG",
	"WEAPON_MINIGUN",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_RAYMINIGUN",
	"WEAPON_EMPLAUNCHER",
	"WEAPON_RAILGUNXM3",
	"WEAPON_TECPISTOL",
	"WEAPON_FIREWORK",
	"WEAPON_BATTLERIFLE",
	"WEAPON_SNOWLAUNCHER",
}

V.selected_loc = 0
V.selected_slot = 0
V.is_typing = false
V.weapon_skins = false
V.gta_plus_blip = false
V.livery_lock = false
V.weapon_editor_popup = false
V.filter_text = ""
V.weapon_name = ""

V.gun_van_loc = 0

local function help_marker(text)
	ImGui.SameLine()
	ImGui.TextDisabled("(?)")
	if ImGui.IsItemHovered() then
		ImGui.BeginTooltip()
		ImGui.PushTextWrapPos(ImGui.GetFontSize() * 35)
		ImGui.TextUnformatted(text)
		ImGui.PopTextWrapPos()
		ImGui.EndTooltip()
	end
end

local function render_weapon_editor()
	ImGui.SetNextWindowSize(700, 420)
	ImGui.OpenPopup("Weapon Editor")

	if
		ImGui.BeginPopupModal(
			"Weapon Editor",
			V.weapon_editor_popup,
			ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoCollapse | ImGuiWindowFlags.NoMove | ImGuiWindowFlags.Modal
		)
	then
		V.selected_slot =
			ImGui.Combo("Select Slot", V.selected_slot, { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" }, 10)

		V.filter_text = ImGui.InputText("Weapon Name", V.filter_text, 100)
		if ImGui.IsItemActive() then
			V.is_typing = true
		else
			V.is_typing = false
		end

		if ImGui.BeginListBox("##weapons", 450, 200) then
			for index, item in ipairs(V.weapons_data) do
				V.display_name = weapons.get_weapon_display_name(item)
				if string.find(V.display_name:lower(), V.filter_text:lower()) then
					if ImGui.Selectable(V.display_name) then
						V.filter_text = V.display_name
						V.weapon_name = item
					end
				end
			end
			ImGui.EndListBox()
		end

		if ImGui.Button("Set Weapon") then
			V.is_weapon_valid = weapons.get_weapon_display_name(V.weapon_name) ~= ""

			if V.is_weapon_valid then
				tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. V.selected_slot, joaat(V.weapon_name))
			else
				gui.show_error("Gun Van", "Invalid weapon.")
			end
		end

		ImGui.SameLine()

		if ImGui.Button("Remove Weapon") then
			tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. V.selected_slot, 0)
		end

		if ImGui.Button("Close") then
			V.selected_slot = 0
			V.filter_text = ""
			V.weapon_name = ""
			V.weapon_editor_popup = false
			ImGui.CloseCurrentPopup()
		end

		ImGui.EndPopup()
	end
end

script.register_looped("Gun Van", function()
	V.gun_van_loc = globals.get_int(2652579 + 2706)

	if V.is_typing then
		PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
	end

	if V.weapon_skins then
		tunables.set_bool(1490225691, false)
	end

	if V.livery_lock then
		V.value = locals.get_int("gunclub_shop", 199 + 747) | (1 << 8)
		locals.set_int("gunclub_shop", 199 + 747, V.value)
	end

	if V.gta_plus_blip then
		V.gun_van_sprite = HUD.GET_FIRST_BLIP_INFO_ID(844)

		tunables.set_float(15999531, 10000.0)
		if HUD.DOES_BLIP_EXIST(V.gun_van_sprite) then
			HUD.SET_BLIP_AS_SHORT_RANGE(V.gun_van_sprite, false)
		end
	end
end)

SN_gun_van_tab:add_imgui(function()
	if V.weapon_editor_popup then
		render_weapon_editor()
	end

	ImGui.Text("Current Location: " .. (V.gun_van_loc ~= -1 and V.gun_van_loc + 1 or "N/A"))

	ImGui.SetNextItemWidth(265)
	V.selected_loc = ImGui.Combo("##selected_loc", V.selected_loc, V.van_locations, 30)

	ImGui.SameLine()

	if ImGui.Button("Set New Gun Van Location") then
		globals.set_int(2652579 + 2706, V.selected_loc)
	end

	ImGui.SameLine()

	if ImGui.Button("Teleport") then
		script.run_in_fiber(function()
			V.coords = V.gunvan_locations[V.selected_loc + 1]
			PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), V.coords.x, V.coords.y, V.coords.z)
		end)
	end

	V.weapon_skins, on_tick = ImGui.Checkbox("Weapon Skins", V.weapon_skins)
	help_marker("Enables the special liveries for Knife and Baseball Bat.")

	if on_tick then
		if not weapon_skins then
			tunables.set_bool(1490225691, true)
		end
	end

	livery_lock, on_tick = ImGui.Checkbox("Remove Livery Lock", livery_lock)
	help_marker(
		"Removes the hard-coded lock on special weapon liveries, such as Season's Greetings, Employee of the Month etc."
	)

	if on_tick then
		if not livery_lock then
			V.value = locals.get_int("gunclub_shop", 199 + 747) & ~(1 << 8)
			locals.set_int("gunclub_shop", 199 + 747, V.value)
		end
	end

	gta_plus_blip, on_tick = ImGui.Checkbox("Blip Always Visible", gta_plus_blip)
	help_marker("The Gun Van will always be blipped on the map, just like in GTA+.")

	if on_tick then
		if not gta_plus_blip then
			tunables.set_float(15999531, 500.0)
		end
	end

	discount, on_tick = ImGui.Checkbox("Jewish Trade Skills (-10%)", discount)
	help_marker("Allows 10% off off any weapon in gun van")

	if on_tick then
		if discount then
			globals_set_ints(L.GVADg + 1, L.GVADg + 9, 1, 1036831744)
			globals_set_ints(L.GVTDg + 1, L.GVTDg + 3, 1, 1036831744)
			globals_set_ints(L.GVWDg + 1, L.GVWDg + 5, 1, 1036831744)
		else
			globals_set_ints(L.GVADg + 1, L.GVADg + 9, 1, 0)
			globals_set_ints(L.GVTDg + 1, L.GVTDg + 3, 1, 0)
			globals_set_ints(L.GVWDg + 1, L.GVWDg + 5, 1, 0)
		end
	end
	ImGui.Separator()

	if ImGui.TreeNode("Weapons") then
		for i = 0, 9 do
			V.weapon_hash = tunables.get_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. i)

			if V.weapon_hash ~= 0 then
				local weapon_name = weapons.get_weapon_display_name(V.weapon_hash)
				local weapon_discount =
					math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_WEAPON_DISCOUNT_" .. i) * 100.0)

				ImGui.Text(i + 1 .. " - " .. weapon_name .. " (" .. weapon_discount .. "%)")
			end
		end

		if ImGui.Button("Edit Weapons") then
			V.weapon_editor_popup = true
		end

		ImGui.Separator()
		ImGui.TreePop()
	end

	if ImGui.TreeNode("Throwables") then
		for i = 0, 2 do
			V.throwable_hash = tunables.get_int("XM22_GUN_VAN_SLOT_THROWABLE_TYPE_" .. i)

			if V.throwable_hash ~= 0 then
				V.throwable_name = weapons.get_weapon_display_name(V.throwable_hash)
				V.throwable_discount =
					math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_THROWABLE_DISCOUNT_" .. i) * 100.0)

				ImGui.Text(i + 1 .. " - " .. V.throwable_name .. " (" .. V.throwable_discount .. "%)")
			end
		end

		ImGui.Separator()
		ImGui.TreePop()
	end

	if ImGui.TreeNode("Body Armor") then
		V.armour_discounts = {}

		for i = 0, 4 do
			V.armour_discounts[i + 1] = math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_ARMOUR_DISCOUNT_" .. i) * 100.0)
		end

		ImGui.Text("Super Light Armor (" .. V.armour_discounts[1] .. "%)")
		ImGui.Text("Light Armor (" .. V.armour_discounts[2] .. "%)")
		ImGui.Text("Standard Armor (" .. V.armour_discounts[3] .. "%)")
		ImGui.Text("Heavy Armor (" .. V.armour_discounts[4] .. "%)")
		ImGui.Text("Super Heavy Armor (" .. V.armour_discounts[5] .. "%)")

		ImGui.TreePop()
	end
end)

-- Credits --
local SN_Credits = Silent:add_tab("Credits ")
SN_Credits:add_text("Original script dev: SilentSalo")
SN_Credits:add_text("xnightli06x")
SN_Credits:add_text("oregano_laborant")
