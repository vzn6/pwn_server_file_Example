#include <a_samp>
#include <a_actor>
#include <fixes>


#if defined FILTERSCRIPT





public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Blank Filterscript by your name here");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{

}

#endif

new botcar;
#define Update 100
#define DIALOG_HELP 2
#define DIALOG_WELCOME 2
#define DIALOG_MENU 2
#define DIALOG_INPUT 3
#define DIALOG_INFO 4
#define DIALOG_VEH_LIST 2
#define DIALOG_GUN_LIST 2
new Text:SpeedShow[MAX_PLAYERS];
new STimer[MAX_PLAYERS];
new babka1;
new babka2;
new bot_start;
new Text3D:circleMarker;


public OnGameModeInit()
	{
	///////////////////////////MAPPING//////////////////////////////////
	CreateObject(983, 2023.99475, 1337.07849, 10.49030,   0.00000, 0.00000, 90.00000);
	CreateObject(983, 2017.60779, 1337.07849, 10.49030,   0.00000, 0.00000, 90.00000);
	CreateObject(983, 2017.60181, 1349.08105, 10.49030,   0.00000, 0.00000, 90.00000);
	CreateObject(983, 2023.99475, 1349.08582, 10.49030,   0.00000, 0.00000, 90.00000);
	CreateObject(983, 2023.99475, 1332.11597, 10.49060,   0.00000, 0.00000, 90.00000);
	CreateObject(983, 2023.99475, 1353.88245, 10.49480,   0.00000, 0.00000, 90.00000);
	CreateObject(1340, 2025.24512, 1357.71130, 10.94170,   0.00000, 0.00000, -11.00000);
	CreateObject(1340, 2026.20337, 1361.45972, 10.94120,   0.00000, 0.00000, -25.00000);
	CreateObject(1229, 2036.95374, 1360.21667, 11.39250,   0.00000, 0.00000, 0.00000);
	CreateObject(1229, 2036.95020, 1360.24463, 11.39460,   0.00000, 0.00000, 180.00000);
	CreateObject(1229, 2036.99048, 1326.83167, 11.17030,   0.00000, 0.00000, 0.00000);
	CreateObject(1229, 2036.97998, 1326.89636, 11.17060,   0.00000, 0.00000, 180.00000);
	CreateObject(792, 2026.82227, 1348.49463, 10.03850,   0.00000, 0.00000, 0.00000);
	CreateObject(792, 2026.82227, 1337.79187, 10.03250,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2023.16370, 1337.47131, 10.49500,   0.00000, 0.00000, 90.00000);
	CreateObject(640, 2017.88904, 1337.47131, 10.49430,   0.00000, 0.00000, 90.00000);
	CreateObject(640, 2017.88904, 1348.72559, 10.49100,   0.00000, 0.00000, 90.00000);
	CreateObject(640, 2022.73254, 1326.81152, 10.49450,   0.00000, 0.00000, 0.00000);
	CreateObject(638, 2015.55078, 1338.44299, 10.48900,   0.00000, 0.00000, 180.00000);
	CreateObject(638, 2015.51355, 1347.72888, 10.49210,   0.00000, 0.00000, 0.00000);
	CreateObject(8990, 2011.68860, 1345.96997, 11.01790,   0.00000, 0.00000, 180.00000);
	CreateObject(8990, 1999.53857, 1345.74500, 11.01790,   0.00000, 0.00000, 180.00000);
	CreateObject(8990, 1986.03857, 1345.74500, 11.01790,   0.00000, 0.00000, 180.00000);
	CreateObject(8990, 1986.03857, 1345.74500, 11.01790,   0.00000, 0.00000, 180.00000);
	CreateObject(8990, 1988.56885, 1340.03235, 11.01790,   0.00000, 0.00000, 0.00000);
	CreateObject(8990, 1987.82886, 1328.34631, 11.01790,   0.00000, 0.00000, 0.00000);
	CreateObject(8990, 2001.78076, 1340.07373, 11.02360,   0.00000, 0.00000, 0.00000);
	CreateObject(8990, 2010.67236, 1340.04370, 11.02460,   0.00000, 0.00000, 0.00000);
	CreateObject(792, 2027.16479, 1319.88684, 10.03250,   0.00000, 0.00000, 0.00000);
	CreateObject(792, 2026.82227, 1308.23438, 10.03250,   0.00000, 0.00000, 0.00000);
	CreateObject(792, 2026.62939, 1367.92358, 10.03250,   0.00000, 0.00000, 0.00000);
	CreateObject(792, 2027.97937, 1378.50684, 10.03250,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2023.13757, 1348.71460, 10.49450,   0.00000, 0.00000, 90.00000);
	CreateObject(640, 2022.73254, 1321.80981, 10.49450,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2022.73254, 1316.91895, 10.49450,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2022.73254, 1312.27319, 10.49450,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2023.23987, 1307.16919, 10.49450,   0.00000, 0.00000, 11.00000);
	CreateObject(640, 2024.59070, 1301.98633, 10.49450,   0.00000, 0.00000, 18.00000);
	CreateObject(640, 2022.73254, 1359.00806, 10.49450,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2022.73254, 1364.37927, 10.49450,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2022.73254, 1369.73083, 10.49450,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2023.45557, 1380.29602, 10.49450,   0.00000, 0.00000, -15.52500);
	CreateObject(640, 2022.73254, 1375.02051, 10.49450,   0.00000, 0.00000, 0.00000);
	CreateObject(640, 2024.87463, 1385.14990, 10.49450,   0.00000, 0.00000, -18.00000);
	CreateObject(1232, 2027.33972, 1354.06335, 12.28880,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2027.33972, 1332.08264, 12.28880,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2027.33972, 1373.58020, 12.28880,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2028.92249, 1387.24768, 12.28880,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2027.33972, 1314.01001, 12.28880,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2029.09253, 1301.83276, 12.28880,   0.00000, 0.00000, 0.00000);
	CreateObject(1339, 2019.37683, 1345.82581, 10.45990,   0.00000, 0.00000, 33.00000);
	CreateObject(2671, 2020.31567, 1345.29272, 9.82240,   0.00000, 0.00000, 0.00000);
	CreateObject(2672, 2020.50867, 1346.08142, 10.11000,   0.00000, 0.00000, -18.00000);
	CreateObject(2670, 2020.35010, 1340.12122, 9.90000,   0.00000, 0.00000, 11.00000);
	CreateObject(2671, 2021.45911, 1339.44812, 9.82240,   0.00000, 0.00000, 0.00000);
	CreateObject(955, 2018.23438, 1347.30566, 10.26960,   0.00000, 0.00000, 84.00000);
	CreateObject(955, 2018.23438, 1347.30566, 10.26960,   0.00000, 0.00000, 84.00000);
	CreateObject(1776, 2018.26282, 1338.55774, 10.72080,   0.00000, 0.00000, 98.00000);
	CreateObject(2672, 2026.49451, 1357.12744, 10.11000,   0.00000, 0.00000, -18.00000);
	CreateObject(2670, 2026.31201, 1359.22351, 9.90000,   0.00000, 0.00000, 33.00000);
	CreateObject(2672, 2027.14954, 1360.89587, 10.11000,   0.00000, 0.00000, -69.00000);
	CreateObject(2671, 2027.65051, 1356.37720, 9.82240,   0.00000, 0.00000, 62.00000);
	CreateObject(2671, 2029.10986, 1360.25720, 9.82240,   0.00000, 0.00000, -113.00000);
	CreateObject(1346, 2022.89258, 1295.08411, 11.16700,   0.00000, 0.00000, 47.00000);
	CreateObject(1346, 2009.87402, 1239.49341, 11.16700,   0.00000, 0.00000, 113.00000);
	CreateObject(985, 1704.78027, 1601.78699, 10.83530,   0.00000, 0.00000, -105.00000);
	CreateObject(967, 1779.66443, 821.91522, 9.69370,   0.00000, 0.00000, 90.00000);
	CreateObject(966, 1795.04126, 822.39508, 9.66610,   0.00000, 0.00000, 0.00000);
	CreateObject(966, 1781.37903, 822.40338, 9.66610,   0.00000, 0.00000, 180.00000);
	CreateObject(967, 1815.09741, 821.84259, 9.69370,   0.00000, 0.00000, 270.00000);
	CreateObject(966, 1813.26624, 822.39508, 9.66610,   0.00000, 0.00000, 0.00000);
	CreateObject(966, 1799.60400, 822.40338, 9.66610,   0.00000, 0.00000, 180.00000);
	CreateObject(967, -1653.80164, 537.14984, 37.27150,   0.00000, 0.00000, 225.99899);
	CreateObject(967, -1675.26233, 557.48108, 37.27150,   0.00000, 0.00000, 47.00000);
	CreateObject(966, -1674.42419, 558.41870, 37.24730,   0.00000, 0.00000, 136.50000);
	CreateObject(966, -1463.33643, 425.43521, 37.24730,   0.00000, 0.00000, -44.00000);
	CreateObject(966, -1652.90955, 537.87634, 37.24730,   0.00000, 0.00000, -44.00000);
	CreateObject(966, -1662.79578, 547.32788, 37.24730,   0.00000, 0.00000, 136.50000);
	CreateObject(8990, 2090.92432, 1709.13477, 10.45100,   0.00000, 0.00000, 62.00000);
	CreateObject(8990, 2087.96436, 1696.21436, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(8990, 2088.00195, 1683.32324, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(8990, 2088.08374, 1670.02905, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(8990, 2088.07373, 1658.40820, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(8990, 2094.52466, 1651.23926, 10.45100,   0.00000, 0.00000, -0.32900);
	CreateObject(8990, 2108.03564, 1651.69995, 10.45100,   0.00000, 0.00000, 6.40500);
	CreateObject(8990, 2120.65137, 1654.45789, 10.45100,   0.00000, 0.00000, 15.54400);
	CreateObject(8990, 2130.64258, 1658.47632, 10.45100,   0.00000, 0.00000, 27.56900);
	CreateObject(8990, 2138.65356, 1664.18689, 10.45100,   0.00000, 0.00000, 42.96100);
	CreateObject(8990, 2145.78638, 1673.48254, 10.45100,   0.00000, 0.00000, 65.08700);
	CreateObject(8990, 2100.64136, 1714.20874, 10.45100,   0.00000, 0.00000, -8.59500);
	CreateObject(8990, 2110.57324, 1712.41882, 10.45100,   0.00000, 0.00000, -11.00000);
	CreateObject(8990, 2120.92749, 1709.40686, 10.45100,   0.00000, 0.00000, -23.07600);
	CreateObject(8990, 2132.17017, 1703.79883, 10.45100,   0.00000, 0.00000, -33.00000);
	CreateObject(8990, 2140.65747, 1696.11841, 10.45100,   0.00000, 0.00000, -51.63300);
	CreateObject(8990, 2146.23022, 1686.03833, 10.45100,   0.00000, 0.00000, -76.00000);
	CreateObject(3462, 2090.45313, 1661.55725, 11.24180,   0.00000, 0.00000, 0.00000);
	CreateObject(3462, 2090.45313, 1703.34888, 11.24180,   0.00000, 0.00000, 0.00000);
	CreateObject(3471, 2095.95093, 1711.53528, 11.24500,   0.00000, 0.00000, 138.15199);
	CreateObject(3471, 2090.66333, 1654.66760, 11.24500,   0.00000, 0.00000, 207.00000);
	CreateObject(898, 2101.14648, 1701.46143, 6.22500,   0.00000, 0.00000, 84.00000);
	CreateObject(898, 2103.36475, 1664.10632, 6.22500,   0.00000, 0.00000, 11.00000);
	CreateObject(3509, 2100.34961, 1712.55603, 9.73438,   3.14159, 0.00000, 2.35619);
	CreateObject(3509, 2115.86450, 1700.93323, 9.73438,   3.14159, 0.00000, 2.35619);
	CreateObject(3509, 2117.11719, 1664.37793, 9.73438,   3.14159, 0.00000, 2.35619);
	CreateObject(1232, 2087.47559, 1651.70435, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2087.51636, 1663.32446, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2087.54834, 1676.59961, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2087.49463, 1690.04004, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2087.50342, 1703.36194, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2093.66431, 1715.52966, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2105.75171, 1714.10120, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2121.23877, 1710.22668, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2133.87305, 1703.68042, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2143.18896, 1695.14917, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2147.74512, 1685.48267, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2147.33032, 1675.36121, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2141.93311, 1665.92822, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2131.87988, 1658.46960, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2118.31104, 1653.13794, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2102.89258, 1650.62854, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2151.32251, 1653.43835, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2163.31470, 1657.01367, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2178.01660, 1661.35181, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2177.98291, 1696.17078, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2165.62671, 1702.55994, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1232, 2151.35059, 1710.25769, 12.22230,   0.00000, 0.00000, 0.00000);
	CreateObject(1215, 2178.22803, 1665.30017, 10.56740,   356.85840, 0.00000, 3.14160);
	CreateObject(1215, 2178.22290, 1671.08057, 10.56740,   356.85840, 0.00000, 3.14160);
	CreateObject(1215, 2178.19824, 1676.66028, 10.56740,   356.85840, 0.00000, 3.14160);
	CreateObject(1215, 2178.25464, 1681.95850, 10.56740,   356.85840, 0.00000, 3.14160);
	CreateObject(1215, 2178.27539, 1686.62622, 10.56740,   356.85840, 0.00000, 3.14160);
	CreateObject(1215, 2178.28857, 1691.52258, 10.56740,   356.85840, 0.00000, 3.14160);
	CreateObject(8990, 2088.73047, 1632.19519, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(8990, 2089.16016, 1593.56580, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(8990, 2088.91968, 1613.43188, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(8990, 2089.24854, 1574.85352, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(8990, 2089.05469, 1557.49353, 10.45100,   0.00000, 0.00000, 89.77200);
	CreateObject(652, 2137.53394, 1995.61182, 9.13280,   3.14160, 0.00000, 2.57440);
	CreateObject(652, 2137.51758, 1978.17139, 9.13280,   3.00000, 0.00000, 127.00000);
	CreateObject(652, 2137.00122, 1962.70605, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2136.86035, 1946.54968, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2136.82178, 1930.20056, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2136.99438, 1901.71399, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2136.86670, 1885.21289, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2137.04614, 1864.04553, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2129.33154, 1847.77722, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2117.20435, 1823.23755, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2107.22412, 1803.19434, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(652, 2107.22412, 1803.19434, 9.13280,   3.00000, 0.00000, -113.00000);
	CreateObject(3437, 2137.15454, 1946.36511, 9.42330,   91.00000, 0.00000, 0.00000);
	CreateObject(3437, 2137.37012, 1925.56274, 9.42330,   91.00000, 0.00000, 0.00000);
	///////////////////////////////////vehicles///////////////////////////////////////////////////
    CreateVehicle(522, 2026.4240, 1330.1967, 10.4935, 259.0000, -1, -1, 100);
	CreateVehicle(522, 2025.7858, 1328.8352, 10.2703, 259.0000, -1, -1, 100);
	CreateVehicle(522, 2025.5114, 1327.5439, 10.2697, 259.0000, -1, -1, 100);
	CreateVehicle(522, 2025.2968, 1324.9170, 10.2694, 259.0000, -1, -1, 100);
	CreateVehicle(522, 2025.2556, 1326.3223, 10.2695, 259.0000, -1, -1, 100);

	babka1 = CreateActor(130, 2025.0117, 1362.1936, 10.6827, -107.0);
	babka2 = CreateActor(129, 2024.4597, 1358.3734, 12.9879, -98.0);
	
	bot_start = CreateActor(147, 1960.4569, 1345.5535, 14.8643, 125.0);

	circleMarker = Create3DTextLabel("~r~o", -1, 2026.8490, 1359.5745, 1359.5745, 10.0, 0);

	SetGameModeText("test rp");
	AddPlayerClass(228, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);

	LimitGlobalChatRadius(20);
	ConnectNPC("LS_bus_BOT1","lv_ls1");

	botcar = CreateVehicle(437, 0.0, 0.0, 5.0, 0.0, 2, 1, 5000);

	return 1;
	}


public OnGameModeExit()
{
	DestroyActor(babka1);
	DestroyActor(babka2);
    DestroyActor(bot_start);
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 2083.2710, 1381.0349, 30.0168);
    SetPlayerCameraPos(playerid, 2083.2710, 1381.3349, 23.0168);
    SetPlayerCameraLookAt(playerid, 32.2710, 121.0349, 0.0168);
	return 1;
}

forward clock();
public OnPlayerConnect(playerid)
{
clock();
GameTextForPlayer(playerid, "~b~~h~WELCOME TO REALITY ROLE PLAY", 15000, 9);
PlayAudioStreamForPlayer(playerid, "url");

SpeedShow[playerid] = TextDrawCreate(510.000000,400.000000,"0");
TextDrawBackgroundColor(SpeedShow[playerid],0x00000FF);
TextDrawLetterSize(SpeedShow[playerid],0.899999,2.510000);
TextDrawFont(SpeedShow[playerid],3);
TextDrawColor(SpeedShow[playerid],0x0086ffAA);
TextDrawSetOutline(SpeedShow[playerid],1);
TextDrawSetProportional(SpeedShow[playerid],1);
TextDrawSetShadow(SpeedShow[playerid],1);
STimer[playerid] = SetTimerEx("UpdateSpeed", Update, 1, "d", playerid);


return 1;
}
public clock(){
 new Text:Clock;
 TextDrawDestroy(Clock);
 new hour,minute,second;
 new string[256];
 gettime(hour,minute,second);
 if (minute <= 9){format(string,25,"%d:0%d",hour,minute);}
 else {format(string,25,"%d:%d",hour,minute);}
 TextDrawHideForAll(Clock);
 Clock = TextDrawCreate(547.0, 24.0, string);
 TextDrawLetterSize(Clock, 0.6, 1.8);
 TextDrawFont(Clock, 3);
 TextDrawSetOutline(Clock, 2);
 TextDrawShowForAll(Clock);
 SetTimer("clock",1000,0);
 if (hour == 0){SetWorldTime(0);}
 if (hour == 1){SetWorldTime(1);}
 if (hour == 2){SetWorldTime(2);}
 if (hour == 3){SetWorldTime(3);}
 if (hour == 4){SetWorldTime(4);}
 if (hour == 5){SetWorldTime(5);}
 if (hour == 6){SetWorldTime(6);}
 if (hour == 7){SetWorldTime(7);}
 if (hour == 8){SetWorldTime(8);}
 if (hour == 9){SetWorldTime(9);}
 if (hour == 10){SetWorldTime(10);}
 if (hour == 11){SetWorldTime(11);}
 if (hour == 12){SetWorldTime(12);}
 if (hour == 13){SetWorldTime(13);}
 if (hour == 14){SetWorldTime(14);}
 if (hour == 15){SetWorldTime(15);}
 if (hour == 16){SetWorldTime(16);}
 if (hour == 17){SetWorldTime(17);}
 if (hour == 18){SetWorldTime(18);}
 if (hour == 19){SetWorldTime(19);}
 if (hour == 20){SetWorldTime(20);}
 if (hour == 21){SetWorldTime(21);}
 if (hour == 22){SetWorldTime(22);}
 if (hour == 23){SetWorldTime(23);}
 if (hour == 24){SetWorldTime(24);}
 
 return 1;
 }

public OnPlayerDisconnect(playerid, reason)
{
KillTimer(STimer[playerid]);
TextDrawDestroy(SpeedShow[playerid]);
return 1;
}

public OnPlayerSpawn(playerid)
{
GivePlayerMoney(playerid, 1000);
StopAudioStreamForPlayer(playerid);


if(IsPlayerNPC(playerid))
{
new npcname[MAX_PLAYER_NAME+2];
GetPlayerName(playerid, npcname, sizeof(npcname));
if(!strcmp(npcname, "LS_avtobus_BOT1", true))
{
PutPlayerInVehicle(playerid, botcar, 0);
SetSpawnInfo(playerid,0,130,0.0,0.0,0.0,0.0,0,0,0,0,0,0);
}
return 1;

        
}
return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
TextDrawHideForPlayer(playerid,SpeedShow[playerid]); 
return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
    SetPlayerChatBubble(playerid, text, 0xfcfaffAA, 15, 10000);
    return 1; 
	
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp(cmdtext, "/cars", true, 5) == 0)
	{
    ShowPlayerDialog(playerid, 1, DIALOG_STYLE_INPUT, "Cars", "Enter car ID:", "Enter", "Cancel");
    return 1;
	}
//////////////////////
	if (strcmp(cmdtext, "/guns", true, 5) == 0)
	{
    ShowPlayerDialog(playerid, 2, DIALOG_STYLE_INPUT, "Guns", "Enter gun ID:", "Enter", "Cancel");
    return 1;
	}
//////////////////////
    if(strcmp(cmdtext, "/kick", true) == 0)
    {
        Kick(playerid);
        return 1;
	}
/////////////////////
    if (strcmp(cmdtext, "/skinchange", true, 11) == 0)
	{
    ShowPlayerDialog(playerid, 3, DIALOG_STYLE_INPUT, "Skins", "Enter skin ID:", "Enter", "Cancel");
    return 1;
	}

    if (strcmp(cmdtext, "/givearm", true, 8) == 0)
	{
    ShowPlayerDialog(playerid, 4, DIALOG_STYLE_INPUT, "Give armour", " give ?:", "Give", "Cancel");
    return 1;
	}

	if (!strcmp("/food", cmdtext, true))
	{
	if(IsPlayerInRangeOfPoint(playerid, 3.0, 2026.8490, 1359.5745, 11.0000))
	{
 	GivePlayerMoney(playerid, -120);
	SetPlayerHealth(playerid, 100.0);
	SendClientMessage(playerid, 0xa87b32, ">>You've bought a food");
 	}
 	else
 	{
 	SendClientMessage(playerid, -1, "");
 	}
 	return 1;
     }

	if (!strcmp("/talk", cmdtext, true))
    {
   	if(IsPlayerInRangeOfPoint(playerid, 3.0, 1960.4569, 1345.55355, 14.8643))
    	{
	ShowPlayerDialog(playerid, DIALOG_WELCOME, DIALOG_STYLE_MSGBOX, "REALITY ROLE PLAY", "Nothing for now", "Exit");
        }
  	else
        {
  	SendClientMessage(playerid, -1, "Not found a target to talk");
        }
    return 1;
	}
///////////////////////////////////////////////////////////////////////////////////////

if (!strcmp("/Menu", cmdtext, true))
    {
    ShowPlayerDialog(playerid, DIALOG_MENU, DIALOG_STYLE_LIST, "Menu", "Test1\nTest2\nTest3\nTest4\nTest5");
    return 1;
 	}
///////////////////////////////////////////////////
	return 0;
}
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == PLAYER_STATE_DRIVER)
	{
	                  TextDrawShowForPlayer(playerid,SpeedShow[playerid]);
	}
	if(oldstate == PLAYER_STATE_DRIVER)
	{
	                  TextDrawHideForPlayer(playerid,SpeedShow[playerid]);
	}
	return 1;
	}

	public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
    if(pickupid == EnterMayor)
    {
        SetPlayerPos(playerid, 246.3426, 107.7004, 1003.4749);
        SetPlayerVirtualWorld(playerid, 0);
        SetPlayerInterior(playerid, 5);
    }
    if(pickupid == mayorExit)
    {
        SetPlayerPos(playerid, 1041.5769, 1016.9237, 11.4930);
        SetPlayerVirtualWorld(playerid, 0);
        SetPlayerInterior(playerid, 0);
		RemovePlayerMapIcon(playerid, 0);
		SetPlayerMapIcon(playerid, 1, 1960.4569, 1345.5535, 14.8643, 0, -1, 2);
    }
    if(pickupid == PassportMARKER)
    {
	GivePlayerMoney(playerid, -120);
	RemovePlayerMapIcon(playerid, 0);
	}
    if(pickupid == LicenseMARKER)
    {
 	GivePlayerMoney(playerid, -120);
    }
    if(pickupid == ClothesShopEnter)
    {
    SetPlayerPos(playerid, 2109.0732, 2069.2363, -2.1900);
    }
    if(pickupid == ClothesShopExit)
    {
    SetPlayerPos(playerid, 2089.1196, 2066.4390, 10.6338);
    }
    return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{


	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
    if(IsPlayerInRangeOfPoint(playerid, 3.0, 2026.8490, 1359.5745, 11.0000))
    {
        Attach3DTextLabelToPlayer(circleMarker, playerid, 0.0, 0.0, 1.0);
        if(GetPVarInt(playerid, "message_sent") == 0)
        {
            SendClientMessage(playerid, -1, "You are near of fastfood buying place");
            SendClientMessage(playerid, -1, "/food - Buy a burger(It will costs $120, and restores 100% HP)");
            SetPVarInt(playerid, "message_sent", 1);
        }
           else if(IsPlayerInRangeOfPoint(playerid, 10.0, 2023.4395, 1294.7465, 14.8695))
    {
            if(GetPVarInt(playerid, "message_sent") == 0)
            SendClientMessage(playerid, -1, "No nearest fastfood places");
            SetPVarInt(playerid, "message_sent", 1);
    }
}
    else
    {
        SetPVarInt(playerid, "message_sent", 0);
    }
    return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if (dialogid == 1)
    {
        if (response == 0) return 1;

        new carid = strval(inputtext);
        new Float:playerx, Float:playery, Float:playerz;
        GetPlayerPos(playerid, playerx, playery, playerz);
        CreateVehicle(carid, playerx, playery, playerz + 5, 0, 42, 42, -1);
       	
    }
/////////////////////////////////////////
	if (dialogid == 2)
    {
        if (response == 0) return 1;

        new gunid = strval(inputtext);
        GivePlayerWeapon(playerid, gunid, 1000);
    }
/////////////////////////////////////////
    if (dialogid == 3)
    {
        if (response == 0) return 1;

        new skinid = strval(inputtext);
       	SetPlayerSkin(playerid, skinid);
    }
/////////////////////////////////////////
 	if (dialogid == 4)
    {
    if (response == 0) return 1;

	new armour = strval(inputtext);
	SetPlayerArmour(playerid, armour);
    }
///////////////////////////////////////////
    return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
new string[32];
new Float:health;
SendClientMessage(playerid,  0xff0000AA, "Player info");
format(string, sizeof(string), "Money - $%i.", GetPlayerMoney(clickedplayerid));
SendClientMessage(playerid,  0xff0000AA, string);
GetPlayerHealth(clickedplayerid, health);
format(string, sizeof(string), "Health - %f.", health);
SendClientMessage(playerid,  0xff0000AA, string);

format(string, sizeof(string), "Skin - %i.", GetPlayerSkin(clickedplayerid));
SendClientMessage(playerid,  0xff0000AA, string);

format(string, sizeof(string), "Latency - %i ms.", GetPlayerPing(clickedplayerid));
SendClientMessage(playerid,  0xff0000AA, string);

format(string, sizeof(string), "Score - %i.", GetPlayerScore(clickedplayerid));
SendClientMessage(playerid,  0xff0000AA, string);
return 1;
}



