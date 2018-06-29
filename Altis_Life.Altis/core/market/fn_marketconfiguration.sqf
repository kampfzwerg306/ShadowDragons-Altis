/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = 
[
	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	
	["goldbar", 195000, 0, 495000, 12, 1,
		[
			["diamondc",5], //If you sell 1x goldbar, the market system will "buy" 1x diamondc => diamondc price will increase due to more demand of diamondc than supply
			["oilp",3],
			["iron_r",6],
			["salt_r",3],
			["cement",3],
			["copper_r",5],
			["glass",6],
			["zigaretten",4],
			["wine",3],
            ["uran238",1]
		]
	],
	
	["oilp", 5550, 0, 10250, 6, 1, 
		[
			["goldbar",3],
			["diamondc",2],
			["iron_r",2],
			["salt_r",2],
			["cement",2],
			["copper_r",2],
			["glass",2],
			["wine",2],
			["zigaretten",2],
            ["uran238",2]
		]
	],
	
	["iron_r", 2300, 0, 5000, 6, 1,
		[
			["diamondc",1], 
			["oilp",1],
			["goldbar",1],
			["salt_r",1],
			["cement",1],
			["copper_r",1],
			["glass",1],
			["wine",1],
			["zigaretten",1],
            ["uran238",1]
		]
	],
	
	["diamondc", 3500, 0, 11250, 8, 2, 
		[
			["goldbar",3], 
			["oilp",3],
			["iron_r",3],
			["salt_r",3],
			["cement",3],
			["copper_r",3],
			["glass",5],
			["wine",2],
			["zigaretten",3],
            ["uran238",2]
		]
	],
	
	["copper_r", 1250, 0, 4200, 6, 1,  
		[
			["goldbar",4],
            ["oilp",4],
            ["iron_r",4],
            ["salt_r",4],
            ["cement",4],
            ["diamond_c",4],
            ["glass",5],
            ["wine",2],
            ["zigaretten",5],
            ["uran238",5]
		]
	],
	
	["salt_r", 2250, 0, 4580, 6, 1, 
		[
			["diamondc",6], 
			["oilp",7],
			["iron_r",7],
			["copper_r",5],
			["goldbar",7],
			["cement",5],
			["glass",5],
			["wine",4],
			["zigaretten",6],
            ["uran238",6]
		]
	],
	
	["glass", 2250, 0, 6250, 6, 1, 
		[
			["diamondc",5], 
			["oilp",5],
			["iron_r",5],
			["copper_r",5],
			["salt_r",5],
			["cement",5],
			["goldbar",5],
			["wine",1],
			["zigaretten",5],
            ["uran238",5]
		]
	],
	
	["cement", 3600, 0, 6800, 6, 1, 
		[
			["diamondc",4], 
			["oilp",4],
			["iron_r",4],
			["copper_r",4],
			["salt_r",4],
			["goldbar",4],
			["glass",4],
			["wine",4],
			["zigaretten",4],
            ["uran238",4]
		]
	],
	
	["wine", 2050, 0, 4280, 4, 1, 
		[
			["diamondc",7], 
			["oilp",6],
			["iron_r",5],
			["goldbar",7],
			["copper_r",8],
			["salt_r",4],
			["cement",6],
			["glass",7],
			["zigaretten",5],
			["uran238",7]
		]
	],

	["uran238", 7000, 0, 9500, 3, 2,
		[
			["diamondc",1],
            ["oilp",1],
            ["iron_r",1],
            ["goldbar",1],
            ["copper_r",1],
            ["salt_r",1],
            ["cement",1],
            ["glass",1],
            ["zigaretten",1],
            ["wine",1]
		]
	],

    ["zigaretten", 2155, 0, 4560, 3, 5,
        [
			["diamondc",1],
            ["oilp",1],
            ["iron_r",1],
            ["goldbar",1],
            ["copper_r",1],
            ["salt_r",1],
            ["cement",1],
            ["glass",1],
            ["uran238",1],
            ["wine",1]
        ]
    ],
	
	// ILLEGAL //
	["cocainep", 6400, 0, 9570, 5, 2,
		[
			["heroinp",1],
			["warhead",1],
			["zigarren",1],
			["marijuana",1],
			["methp",1],
			["moonshine",1],
			["turtle",1]
		]
	],
	
	["heroinp", 5850, 0, 8450, 5, 2,
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["marijuana",1],
			["methp",1],
			["moonshine",1],
			["turtle",1]
		]
	],
	
	["marijuana", 2800, 0, 8450, 5, 2,
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["heroinp",1],
			["methp",1],
			["moonshine",1],
			["turtle",1]
		]
	],

	["methp", 7000, 0, 9123, 5, 2,
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["heroinp",1],
			["marijuana",1],
			["moonshine",1],
			["turtle",1]
		]
	],
	
	["moonshine", 3100, 0, 8575, 5, 2,
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["heroinp",1],
			["marijuana",1],
			["methp",1],
			["turtle",1]
		]
	],
	
	["turtle", 6000, 0, 6500, 6, 2,  
		[
			["cocainep",1],
			["warhead",1],
			["zigarren",1],
			["heroinp",1],
			["marijuana",1],
			["methp",1],
			["moonshine",1]
		]
	],

    ["zigarren", 2200, 0, 7500, 5, 3,
        [
            ["cocainep",2],
            ["warhead",2],
            ["heroinp",2],
            ["marijuana",2],
            ["methp",2],
            ["moonshine",2]
        ]
    ],

    ["warhead", 5000, 0, 8570, 9, 4,
        [
            ["cocainep",2],
            ["zigarren",2],
            ["heroinp",2],
            ["marijuana",2],
            ["methp",2],
            ["moonshine",2]
        ]
    ],

    ["ornate", 55, 0, 80, 9, 4,
        [
            ["mackerel",2],
            ["tuna",2],
            ["mullet",2],
            ["catshark",2],
            ["salema",2]
        ]
    ],

    ["mackerel", 175, 0, 250, 9, 4,
        [
            ["salema",2],
            ["tuna",2],
            ["mullet",2],
            ["catshark",2],
            ["ornate",2]
        ]
    ],    

    ["tuna", 700, 0, 1200, 9, 4,
        [
            ["salema",2],
            ["mackerel",2],
            ["mullet",2],
            ["catshark",2],
            ["ornate",2]
        ]
    ],    

    ["mullet", 250, 0, 550, 9, 4,
        [
            ["salema",2],
            ["mackerel",2],
            ["tuna",2],
            ["catshark",2],
            ["ornate",2]
        ]
    ],

    ["catshark", 300, 0, 550, 9, 4,
        [
            ["salema",2],
            ["mackerel",2],
            ["tuna",2],
            ["mullet",2],
            ["ornate",2]
        ]
    ],

    ["salema", 45, 0, 125, 9, 4,
        [
            ["mackerel",2],
            ["tuna",2],
            ["mullet",2],
            ["catshark",2],
            ["ornate",2]
        ]
    ]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
life_market_shortnames = []; //shortnames if in market

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";

	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];

		if ((_x select 0) == "oilp") then {
			life_current_oil_price = _x select 0; 
		};
		if ((_x select 0) == "iron_r") then {
			life_current_iron_price = _x select 0; 
		};
		if ((_x select 0) == "copper_r") then {
			life_current_copper_price = _x select 0; 
		};
		if ((_x select 0) == "glass") then {
			life_current_glass_price = _x select 0; 
		};

	}
	foreach life_market_resources;

	publicVariable "life_current_oil_price";
	publicVariable "life_current_iron_price";
	publicVariable "life_current_copper_price";
	publicVariable "life_current_glass_price";



	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
