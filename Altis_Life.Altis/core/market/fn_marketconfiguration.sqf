/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],

////////////MAIN CONFIG

life_market_resources = [
	
	// Default İsler
	
	["oil_processed", 3200, 0, 3850, 3, 1, 
		[ 
			["diamond_cut",1], 
			["iron_refined",1],
			["copper_refined",1],
			["gold_refined",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["diamond_cut", 2000, 0, 2500, 5, 2, 
		[ 
			["oil_processed",1],
			["iron_refined",1],
			["copper_refined",1],
			["gold_refined",1],
			["salt_refined",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["copper_refined", 1500, 0, 2000, 2, 1, 
		[ 
			["diamond_cut",1], 
			["oil_processed",1],
			["iron_refined",1],
			["gold_refined",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["iron_refined", 3200, 0, 3700, 3, 1,  
		[ 
			["diamond_cut",1], 
			["oil_processed",1],
			["copper_refined",1],
			["gold_refined",1],
			["salt_refined",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["salt_refined", 1450, 0, 1950, 2, 1, 
		[ 

			["copper_refined",1],
			["gold_refined",1],
			["glass",1] 
		] 
	],
	
	["glass", 1450, 0, 1950, 2, 1, 
		[ 
			["diamond_cut",1], 
			["oil_processed",1],
			["iron_refined",1],
			["copper_refined",1]
		] 
	],
	
	["cement", 1950, 0, 2500, 2, 1, 
		[ 

			["oil_processed",1],
			["iron_refined",1],
			["copper_refined",1],
			["glass",1]
		] 
	],
	
	["goldbar", 55000, 0, 95000, 2, 1, 
		[ 
			["diamond_cut",1], 
			["oil_processed",1],
			["iron_refined",1],
			["copper_refined",1],
			["glass",1]
		] 
	],
	
	["marijuana", 2350, 0, 3000, 10, 7,   
		[ 
			["cocaine_processed",1],
			["heroin_processed",1]
		] 
	],

	["cocaine_processed", 5000, 0, 6000, 15, 10,   
		[ 
			["marijuana",1], 
			["heroin_processed",1]
		] 
	],
		
	["heroin_processed", 2560, 0, 3560, 15, 10,   
		[ 
			["marijuana",1], 
			["cocaine_processed",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};