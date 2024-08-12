
enum E_AREA_ZONE {
	E_AREA_ZONE_NAME[5],

	Float: E_AREA_ZONE_MIN_X,
	Float: E_AREA_ZONE_MIN_Y,
	Float: E_AREA_ZONE_MAX_X,
	Float: E_AREA_ZONE_MAX_Y
};

static const gAreaZones[][E_AREA_ZONE] = {
	{ "516", 	1606.0, 	-2178.0, 		2215.0, 	-1838.0 	} ,
	{ "218", 	1196.0, 	-2782.0, 		2981.0, 	-2178.0 	} ,
	{ "310", 	2215.0, 	-2178.0, 		2981.0, 	-1838.0 	} ,
	{ "151", 	2215.0, 	-1838.0, 		2981.0, 	-1519.0 	} ,
	{ "415", 	1689.0, 	-1838.0, 		2215.0, 	-1519.0 	} ,
	{ "424", 	2067.0, 	-1519.0, 		2645.0, 	-1151.0 	} ,
	{ "616", 	2644.0, 	-1519.0, 		2981.0, 	-1046.0 	} ,
	{ "624", 	1689.0, 	-1519.0, 		2067.0, 	-1074.0 	} ,
	{ "624", 	1689.0, 	-1074.0, 		1988.0, 	-976.00 	} ,
	{ "843", 	1987.0, 	-1074.0, 		2067.0, 	-976.00 	} ,
	{ "843", 	1765.0, 	-976.0, 		2989.0, 	-260.00 	} ,
	{ "843", 	2067.0, 	-1151.0, 		2643.0, 	-975.00 	} ,
	{ "843", 	2643.0, 	-1047.0, 		2984.0, 	-976.00 	} ,
	{ "206", 	1056.0, 	-1841.0, 		1689.0, 	-976.00 	} ,
	{ "206", 	1056.0, 	-2178.0, 		1606.0, 	-1840.0 	} ,
	{ "206", 	908.0, 		-2516.0, 		1196.0, 	-2178.0 	} ,
	{ "206", 	908.0, 		-2179.0, 		1056.0, 	-1841.0 	} ,
	{ "313", 	908.0, 		-1841.0, 		1056.0, 	-1503.0 	} ,
	{ "313", 	-1.0, 		-2194.0, 		908.0, 		-1503.0 	} ,
	{ "313", 	445.0, 		-1503.0, 		1055.0, 	-1217.0 	} ,
	{ "802", 	3.0, 		-1503.0, 		445.0, 		-1218.0 	} ,
	{ "802", 	134.0, 		-1217.0, 		877.0, 		-882.00 	} ,
	{ "802", 	876.0, 		-976.0, 		1765.0, 	-468.00 	} ,
	{ "802", 	877.0, 		-1217.0, 		1056.0, 	-976.00 	} ,
	{ "808", 	-68.0, 		-882.0, 		876.0, 		-468.00 	} ,
	{ "808", 	877.0, 		-468.0, 		1765.0, 	-192.00 	} ,
	{ "808", 	236.0, 		-468.0, 		876.0, 		-192.00 	} ,
	{ "837", 	928.0, 		-192.0, 		2956.0, 	608.00  	} ,
	{ "837", 	1765.0, 	-262.0, 		2983.0, 	-192.00 	} ,
	{ "891", 	236.0, 		-192.0, 		926.0, 		490.000 	} ,
	{ "891", 	-986.0, 	-468.0, 		236.0, 		376.000 	} ,
	{ "734", 	-1.0, 		-2984.0, 		167.0, 		-2368.0 	} ,
	{ "734", 	-3001.0, 	-2984.0, 		-1.0, 		-830.00 	} ,
	{ "734", 	-1.0, 		-1220.0, 		137.0, 		-876.00 	} ,
	{ "891", 	-990.0, 	-832.0, 		-68.0, 		-468.00 	} ,
	{ "937", 	-742.0, 	608.0, 			3000.0, 	2992.00 	} ,
	{ "937", 	-742.0, 	376.0, 			236.0, 		608.000  	} ,
	{ "937", 	238.0, 		492.0, 			928.0, 		608.000  	} ,
	{ "967", 	-2240.0, 	1574.0, 		-742.0, 	3000.00 	} ,
	{ "967", 	-1332.0, 	376.0, 			-742.0, 	1574.00 	} ,
	{ "967", 	-3000.0, 	2046.0, 		-2240.0, 	3000.00 	} ,
	{ "739", 	-3000.0, 	376.0, 			-1332.0, 	1574.00 	} ,
	{ "739", 	-3000.0, 	1572.0, 		-2240.0, 	2046.00 	} ,
	{ "754", 	-3000.0, 	-830.0, 		-988.0, 	376.000 	} 
} ;

stock GetPlayerAreaZone(Float:x, Float:y, zone[], len = sizeof zone)
{
 	for(new i = 0; i != sizeof(gAreaZones); i++ )
 	{
		if(x >= gAreaZones[i][E_AREA_ZONE_MIN_X] && x <= gAreaZones[i][E_AREA_ZONE_MAX_X] &&
		 	y >= gAreaZones[i][E_AREA_ZONE_MIN_Y] && y <= gAreaZones[i][E_AREA_ZONE_MAX_Y])
		{
		    return format(zone, len, gAreaZones[i][E_AREA_ZONE_NAME], 0);
		}
	}
	return format(zone, len, "000", 0);
}
enum SAZONE_MAIN {
		SAZONE_NAME[28],
		Float:SAZONE_AREA[6]
};

static const gMainZones[][SAZONE_MAIN] = { 
	//	NAME                            AREA (Xmin,Ymin,Zmin,Xmax,Ymax,Zmax)
    {"Los Santos",                  {44.60,-2892.90,-242.90,2997.00,-768.00,900.00}},
    {"Las Venturas",                {869.40,596.30,-242.90,2997.00,2993.80,900.00}},
    {"Bone County",                 {-480.50,596.30,-242.90,869.40,2993.80,900.00}},
    {"Tierra Robada",               {-2997.40,1659.60,-242.90,-480.50,2993.80,900.00}},
    {"Tierra Robada",               {-1213.90,596.30,-242.90,-480.50,1659.60,900.00}},
    {"San Fierro",                  {-2997.40,-1115.50,-242.90,-1213.90,1659.60,900.00}},
    {"Red County",                  {-1213.90,-768.00,-242.90,2997.00,596.30,900.00}},
    {"Flint County",                {-1213.90,-2892.90,-242.90,44.60,-768.00,900.00}},
    {"Whetstone",                   {-2997.40,-2892.90,-242.90,-1213.90,-1115.50,900.00}},
	{"Mexico",						{15766.9795,-16282.4258,-242.90,16313.5371,-15661.5615,900.00}}
};



stock GetCoords2DMainZone(Float:x, Float:y, zone[], len)
{
 	for(new i = 0; i != sizeof(gMainZones); i++ )
 	{
		if(x >= gMainZones[i][SAZONE_AREA][0] && x <= gMainZones[i][SAZONE_AREA][3] && y >= gMainZones[i][SAZONE_AREA][1] && y <= gMainZones[i][SAZONE_AREA][4])
		{
		    return format(zone, len, gMainZones[i][SAZONE_NAME], 0);
		}
	}
	return 0;
}