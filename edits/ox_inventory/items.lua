return {
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["heavy_duty_muzzle_brake"] = {
		label = "HD Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
	},

	["precision_muzzle_brake"] = {
		label = "Precision Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["barrel_attachment"] = {
		label = "Barrel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A barrel for a weapon",
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
	},

	["veh_plates"] = {
		label = "Plates",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle plates",
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
	},

	["perseuscamo_attachment"] = {
		label = "Perseus Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A perseus camo for a weapon",
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
	},

	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth",
		client = {
			image = "meth_baggy.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["smallscope_attachment"] = {
		label = "Small Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A small scope for a weapon",
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
	},

	["comp_attachment"] = {
		label = "Compensator",
		weight = 1000,
		stack = true,
		close = true,
		description = "A compensator for a weapon",
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
	},

	["squared_muzzle_brake"] = {
		label = "Squared Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
	},

	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A microphone for the news",
	},

	["suppressor_attachment"] = {
		label = "Suppressor",
		weight = 1000,
		stack = true,
		close = true,
		description = "A suppressor for a weapon",
	},

	["largescope_attachment"] = {
		label = "Large Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A large scope for a weapon",
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
	},

	["item_bench"] = {
		label = "Workbench",
		weight = 15000,
		stack = false,
		close = false,
		description = "A workbench to craft items.",
		client = {
			image = "workbench.png",
		}
	},

	["geocamo_attachment"] = {
		label = "Geometric Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A geometric camo for a weapon",
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
	},

	["holoscope_attachment"] = {
		label = "Holo Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A holo scope for a weapon",
	},

	["drum_attachment"] = {
		label = "Drum",
		weight = 1000,
		stack = true,
		close = true,
		description = "A drum for a weapon",
	},

	["veh_armor"] = {
		label = "Armor",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle armor",
	},

	["boomcamo_attachment"] = {
		label = "Boom Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A boom camo for a weapon",
	},

	["veh_exterior"] = {
		label = "Exterior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle exterior",
	},

	["veh_engine"] = {
		label = "Engine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle engine",
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
	},

	["veh_turbo"] = {
		label = "Turbo",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle turbo",
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
	},

	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
	},

	["veh_brakes"] = {
		label = "Brakes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle brakes",
	},

	["weed_ogkush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["advscope_attachment"] = {
		label = "Advanced Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "An advanced scope for a weapon",
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "The power is yours!",
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
	},

	["bellend_muzzle_brake"] = {
		label = "Bellend Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
	},

	["weed_ogkush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
	},

	["veh_interior"] = {
		label = "Interior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle interior",
	},

	["tenkgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
	},

	["veh_suspension"] = {
		label = "Suspension",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle suspension",
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
	},

	["clip_attachment"] = {
		label = "Clip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A clip for a weapon",
	},

	["coffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
	},

	["weed_whitewidow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["veh_wheels"] = {
		label = "Wheels",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle wheels",
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
	},

	["medscope_attachment"] = {
		label = "Medium Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A medium scope for a weapon",
	},

	["tactical_muzzle_brake"] = {
		label = "Tactical Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brakee for a weapon",
	},

	["digicamo_attachment"] = {
		label = "Digital Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A digital camo for a weapon",
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
	},

	["luxuryfinish_attachment"] = {
		label = "Luxury Finish",
		weight = 1000,
		stack = true,
		close = true,
		description = "A luxury finish for a weapon",
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
	},

	["nvscope_attachment"] = {
		label = "Night Vision Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A night vision scope for a weapon",
	},

	["skullcamo_attachment"] = {
		label = "Skull Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A skull camo for a weapon",
	},

	["leopardcamo_attachment"] = {
		label = "Leopard Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A leopard camo for a weapon",
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
	},

	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
	},

	["fat_end_muzzle_brake"] = {
		label = "Fat End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
	},

	["split_end_muzzle_brake"] = {
		label = "Split End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
	},

	["veh_transmission"] = {
		label = "Transmission",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle transmission",
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
	},

	["flashlight_attachment"] = {
		label = "Flashlight",
		weight = 1000,
		stack = true,
		close = true,
		description = "A flashlight for a weapon",
	},

	["flat_muzzle_brake"] = {
		label = "Flat Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
	},

	["veh_xenons"] = {
		label = "Xenons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle xenons",
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
	},

	["veh_toolbox"] = {
		label = "Toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "Check vehicle status",
	},

	["patriotcamo_attachment"] = {
		label = "Patriot Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A patriot camo for a weapon",
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
	},

	["weed_purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
	},

	["zebracamo_attachment"] = {
		label = "Zebra Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A zebra camo for a weapon",
	},

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
	},

	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal...",
	},

	["grip_attachment"] = {
		label = "Grip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A grip for a weapon",
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
	},

	["veh_tint"] = {
		label = "Tints",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle tint",
	},

	["brushcamo_attachment"] = {
		label = "Brushstroke Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A brushstroke camo for a weapon",
	},

	["slanted_muzzle_brake"] = {
		label = "Slanted Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
	},

	["veh_neons"] = {
		label = "Neons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle neons",
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
	},

	["weed_whitewidow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
	},

	["sessantacamo_attachment"] = {
		label = "Sessanta Nove Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A sessanta nove camo for a weapon",
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
	},

	["tirerepairkit"] = {
		label = "Tire Repair Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A kit to repair your tires",
	},

	["thermalscope_attachment"] = {
		label = "Thermal Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A thermal scope for a weapon",
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		description = "An oxygen tube and a rebreather",
		client = {
			image = "diving_tube.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
	},

	["weed_purplehaze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["woodcamo_attachment"] = {
		label = "Woodland Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A woodland camo for a weapon",
	},

	["bank_card"] = {
		label = "Bank Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Used to access ATM",
	},

	["attachment_bench"] = {
		label = "Attachment Workbench",
		weight = 15000,
		stack = false,
		close = false,
		description = "A workbench for crafting attachments.",
		client = {
			image = "attworkbench.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},
	-- Start of MrNewbCustomPlates
	["customizableplate"] = {
		label = "Custom Plate",
		weight = 2000,
		stack = false,
		close = true,
		description = "This will change the plate on a car you own!",
	},
	-- End of MrNewbCustomPlates
	-- Start of MrNewbWeaponTints
	['newbserialfile'] = {
		label = 'Heavy File',
		stack = false,
		close = true,
		allowArmed = true,
		weight = 10,
		server = {
			export = 'MrNewbWeaponTints.newbserialfile'
		},
		consume = 0.50
	},
	['greentint'] = {
		label = 'Green Weapon Tint',
		stack = false,
		close = true,
		allowArmed = true,
		weight = 10,
		server = {
			export = 'MrNewbWeaponTints.setweapontint',
			tint = 1
		}
	},
	['goldtint'] = {
		label = 'Gold Weapon Tint',
		stack = false,
		close = true,
		allowArmed = true,
		weight = 10,
		server = {
			export = 'MrNewbWeaponTints.setweapontint',
			tint = 2
		}
	},
	['pinktint'] = {
		label = 'Pink Weapon Tint',
		stack = false,
		close = true,
		allowArmed = true,
		weight = 10,
		server = {
			export = 'MrNewbWeaponTints.setweapontint',
			tint = 3
		}
	},
	['armytint'] = {
		label = 'Army Weapon Tint',
		stack = false,
		close = true,
		allowArmed = true,
		weight = 10,
		server = {
			export = 'MrNewbWeaponTints.setweapontint',
			tint = 4
		}
	},
	['lspdtint'] = {
		label = 'LSPD Weapon Tint',
		stack = false,
		close = true,
		allowArmed = true,
		weight = 10,
		server = {
			export = 'MrNewbWeaponTints.setweapontint',
			tint = 5
		}
	},
	['orangetint'] = {
		label = 'Orange Weapon Tint',
		stack = false,
		close = true,
		allowArmed = true,
		weight = 10,
		server = {
			export = 'MrNewbWeaponTints.setweapontint',
			tint = 6
		}
	},
	['platinumtint'] = {
		label = 'Platinum Weapon Tint',
		stack = false,
		close = true,
		allowArmed = true,
		weight = 10,
		server = {
			export = 'MrNewbWeaponTints.setweapontint',
			tint = 7
		}
	},
	-- End of MrNewbWeaponTints
	-- Start of nc-trapphone
	['trapphone'] = {
		label = 'Trap Phone',
		weight = 35,
		stack = false,
		close = true,
	},
	-- End of nc-trapphone
	-- Start of md-drugs
	["coke"] = {
		label = "Raw Cocaine",
		weight = 1000,
		stack =true,
		close = false,
		description = "Raw Cocaine",
		client = {
			image = "coke.png",
		}
	},
	["coca_leaf"] = {
		label = "Cocaine leaves",
		weight = 1500,
		stack =true,
		close = false,
		description = "Cocaine leaves that must be processed !",
	},
	["poppyresin"] = {
		label = "Poppy resin",
		weight = 2000,
		stack =true,
		close = false,
		description = "It sticks to your fingers when you handle it.",
	},
	["heroin"] = {
		label = "Weak Heroin Powder",
		weight = 500,
		stack =true,
		close = true,
		description = "Dragon Chasin?",
		client = {
			image = "loosecoke.png",
		}
	},
	["bakingsoda"] = {
		label = "Baking Soda",
		weight = 300,
		stack =true,
		close = false,
		description = "Household Baking Soda!",
	},
	["loosecoke"] = {
		label = "Loose Coke",
		weight = 100,
		stack =true,
		close = true,
		description = "Cut Cocaine",
	},
	["loosecokestagetwo"] = {
		label = "More Pure Loose Coke",
		weight = 100,
		stack =true,
		close = true,
		description = "Cut Cocaine",
	},
	["loosecokestagethree"] = {
		label = "Purest Loose Coke",
		weight = 100,
		stack =true,
		close = true,
		description = "Cut Cocaine",
	},
	["cokebaggystagetwo"] = {
		label = "Bag of Good Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Bagged Cocaine",
		client = {
			image = "cocaine_baggystagetwo.png",
		}
	},
	["cokebaggystagethree"] = {
		label = "Bag of Great Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Bagged Cocaine",
		client = {
			image = "cocaine_baggystagethree.png",
		}
	},
	["cokestagetwo"] = {
		label = "Better Raw Cocaine",
		weight = 100,
		stack =true,
		close = false,
		description = "Raw cocaine",
	},
	["cokestagethree"] = {
		label = "Best Raw Cocaine",
		weight = 100,
		stack =true,
		close = false,
		description = "Raw cocaine",
	},
	["lysergic_acid"] = {
		label = "Lysergic Acid",
		weight = 100,
		stack = true,
		close = true,
		description = "Acid to make acid?",
	},
	["diethylamide"] = {
		label = "Diethylamide",
		weight = 100,
		stack = true,
		close = true,
		description = "die? I sure hope not!",
	},
	["lsd_one_vial"] = {
		label = "Tier 1 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
	},
	["lsd_vial_two"] = {
		label = "Tier 2 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
	},
	["lsd_vial_three"] = {
		label = "Tier 3 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
	},
	["lsd_vial_four"] = {
		label = "Tier 4 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
	},
	["lsd_vial_five"] = {
		label = "Tier 5 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
	},
	["lsd_vial_six"] = {
		label = "Tier 6 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
	},
	["tab_paper"] = {
		label = "Tab Paper",
		weight = 100,
		stack = true,
		close = true,
		description = "Paper To Dip LSD On",
	},
	["smileyfacesheet"] = {
		label = "Smiley Face Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "You Are Cute When You Smile - Creepy Dudes",
		client = {
			image = "smileysheet.png",
		}
	},
	["wildcherrysheet"] = {
		label = "Wild Cherry Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "Lets Get Wild",
	},
	["yinyangsheet"] = {
		label = "Yin and Yang Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "All Together In Harmony",
	},
	["pineapplesheet"] = {
		label = "Pineapple Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "When You Hold It Upside It Means Something Different",
	},
	["bartsheet"] = {
		label = "Cluckin Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "A Cluckin Good Time",
	},
	["gratefuldeadsheet"] = {
		label = "Maze Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "I heard Its aMAZEing.. get it.. ill stop now",
	},
	["smiley_tabs"] = {
		label = "Smiley Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "You Are Cute When You Smile - Creepy Dudes",
	},
	["wildcherry_tabs"] = {
		label = "Wild Cherry Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "Lets Get Wild",
	},
	["yinyang_tabs"] = {
		label = "Yin and Yang Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "All Together In Harmony",
	},
	["pineapple_tabs"] = {
		label = "Pineapple Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "When You Hold It Upside It Means Something Different",
	},
	["bart_tabs"] = {
		label = "Cluckin Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "A Cluckin Good Time",
	},
	["gratefuldead_tabs"] = {
		label = "Maze Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "I heard Its aMAZEing.. get it.. ill stop now",
	},
	["lsdlabkit"] = {
		label = "LSD Mixing Table",
		weight = 1000,
		stack = true,
		close = true,
		description = "How Can A Big Ass Table Fit In One Slot",
		client = {
			image = "labkit.png",
		}
	},
	["heroinstagetwo"] = {
		label = "Better Heroin",
		weight = 250,
		stack =true,
		close = false,
		description = "Raw Heroin",
		client = {
			image = "cokestagetwo.png",
		}
	},
	["heroinstagethree"] = {
		label = "Best Heroin",
		weight = 250,
		stack =true,
		close = false,
		description = "Raw Heroin",
		client = {
			image = "cokestagethree.png",
		}
	},
	["heroincut"] = {
		label = "Cut Heroin",
		weight = 250,
		stack =true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "loosecoke.png",
		}
	},
	["heroincutstagetwo"] = {
		label = "Better Cut Heroin",
		weight = 250,
		stack =true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "loosecokestagetwo.png",
		}
	},
	["heroincutstagethree"] = {
		label = "Best Cut Heroin",
		weight = 250,
		stack =true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "loosecokestagethree.png",
		}
	},
	["heroinlabkit"] = {
		label = "Heroin Lab Kit",
		weight = 250,
		stack =true,
		close = false,
		description = "How Can A Big Ass Table Fit In One Slot",
		client = {
			image = "labkit.png",
		}
	},
	["heroinvial"] = {
		label = "Vial Of Heroin",
		weight = 250,
		stack =true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroin.png",
		}
	},
	["heroinvialstagetwo"] = {
		label = "Better Vial of Heroin",
		weight = 250,
		stack =true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroinstagetwo.png",
		}
	},
	["heroinvialstagethree"] = {
		label = "Best Vial Of Heroin",
		weight = 250,
		stack =true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroinstagethree.png",
		}
	},
	["heroin_ready"] = {
		label = "Heroin Syringe",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
	},
	["heroin_readystagetwo"] = {
		label = "Heroin Syringe 2",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
	},
	["heroin_readystagethree"] = {
		label = "Heroin Syringe 3",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
	},
	["emptyvial"] = {
		label = "Empty Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm, What Can Go In This?",
	},
	["needle"] = {
		label = "Syringe",
		weight = 250,
		stack =true,
		close = false,
		description = "I Swear Officer, Its For Diabetes",
		client = {
			image = "syringe.png",
		}
	},
	["crackrock"] = {
		label = "Crack Rock",
		weight = 250,
		stack =true,
		close = false,
		description = "This Isnt The Rock The Hippie Girl Told Me About",
		client = {
			image = "crackrock1.png",
		}
	},
	["crackrockstagetwo"] = {
		label = "Better Crack Rock",
		weight = 250,
		stack =true,
		close = false,
		description = "This Rocks!",
		client = {
			image = "crackrock2.png",
		}
	},
	["crackrockstagethree"] = {
		label = "Best Crack Rock",
		weight = 250,
		stack =true,
		close = false,
		description = "This Rocks!",
		client = {
			image = "crackrock3.png",
		}
	},
	["baggedcracked"] = {
		label = "Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag1.png",
		}
	},
	["baggedcrackedstagetwo"] = {
		label = "Better Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag2.png",
		}
	},
	["baggedcrackedstagethree"] = {
		label = "Best Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag3.png",
		}
	},
	["shrooms"] = {
		label = "Shrooms",
		weight = 250,
		stack = true,
		close = false,
		description = "Holy Shit ake mushroom",
	},
	["prescription_pad"] = {
		label = "Prescription Pad",
		weight = 10,
		stack = true,
		close = false,
		description = "Write Your Prescriptions here",
		client = {
			image = "prescriptionpad.png",
		}
	},
	["vicodin_prescription"] = {
		label = "Vicie Prescription",
		weight = 250,
		stack =true,
		close = false,
		description = "If Only This Helped With The Pain inside",
		client = {
			image = "adderalprescription.png",
		}
	},
	["adderal_prescription"] = {
		label = "Mdderal Prescription",
		weight = 250,
		stack =true,
		close = false,
		description = "I CAN DO EVERYTHING",
		client = {
			image = "adderalprescription.png",
		}
	},
	["morphine_prescription"] = {
		label = "Morphin Prescription",
		weight = 250,
		stack =true,
		close = false,
		description = "I Cant Feel Anything",
		client = {
			image = "adderalprescription.png",
		}
	},
	["xanax_prescription"] = {
		label = "Zany Prescription",
		weight = 250,
		stack =true,
		close = false,
		description = "Ahhh Sweet Comfort",
		client = {
			image = "adderalprescription.png",
		}
	},
	["adderal"] = {
		label = "Madderal",
		weight = 100,
		stack = true,
		close = true,
		description = "If Only This Helped With The Pain inside",
	},
	["vicodin"] = {
		label = "Vicie",
		weight = 100,
		stack = true,
		close = true,
		description = "I CAN DO EVERYTHING",
	},
	["morphine"] = {
		label = "Morphin",
		weight = 100,
		stack = true,
		close = true,
		description = "I Cant Feel Anything",
	},
	["xanax"] = {
		label = "Zany",
		weight = 100,
		stack = true,
		close = true,
		description = "Ahhh Sweet Comfort",
	},
	["adderalbottle"] = {
		label = "Madderal Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},
	["vicodinbottle"] = {
		label = "Vicie Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},
	["morphinebottle"] = {
		label = "Morphin Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},
	["xanaxbottle"] = {
		label = "Zany Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottle Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},
	["isosafrole"] = {
		label = "Isosafrole",
		weight = 100,
		stack = true,
		close = true,
	},
	["mdp2p"] = {
		label = "MDP2P",
		weight = 100,
		stack = true,
		close = true,
	},
	["raw_xtc"] = {
		label = "Raw XTC",
		weight = 100,
		stack = true,
		close = true,
	},
	["singlepress"] = {
		label = "Single Pill Press",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "pillpress.png",
		}
	},
	["white_xtc"] = {
		label = "1 Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedwhite.png",
		}
	},
	["white_xtc2"] = {
		label = "2 Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedwhite.png",
		}
	},
	["white_xtc3"] = {
		label = "3 Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedwhite.png",
		}
	},
	["white_xtc4"] = {
		label = "4 Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedwhite.png",
		}
	},
	["red_xtc"] = {
		label = "1 Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedred.png",
		}
	},
	["red_xtc2"] = {
		label = "2 Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedred.png",
		}
	},
	["red_xtc3"] = {
		label = "3 Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedred.png",
		}
	},
	["red_xtc4"] = {
		label = "4 Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedred.png",
		}
	},
	["orange_xtc"] = {
		label = "1 Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedorange.png",
		}
	},
	["orange_xtc2"] = {
		label = "2 Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedorange.png",
		}
	},
	["orange_xtc3"] = {
		label = "3 Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedorange.png",
		}
	},
	["orange_xtc4"] = {
		label = "4 Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedorange.png",
		}
	},
	["blue_xtc"] = {
		label = "1 Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedblue.png",
		}
	},
	["blue_xtc2"] = {
		label = "2 Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedblue.png",
		}
	},
	["blue_xtc3"] = {
		label = "3 Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedblue.png",
		}
	},
	["blue_xtc4"] = {
		label = "4 Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "unstampedblue.png",
		}
	},
	["white_playboys"] = {
		label = "1 Stack White Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_white.png",
		}
	},
	["white_playboys2"] = {
		label = "2 Stack White Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_white.png",
		}
	},
	["white_playboys3"] = {
		label = "3 Stack White Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_white.png",
		}
	},
	["white_playboys4"] = {
		label = "4 Stack White Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_white.png",
		}
	},
	["blue_playboys"] = {
		label = "1 Stack Blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_blue.png",
		}
	},
	["blue_playboys2"] = {
		label = "2 Stack Blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_blue.png",
		}
	},
	["blue_playboys3"] = {
		label = "3 Stack Blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_blue.png",
		}
	},
	["blue_playboys4"] = {
		label = "4 Stack Blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_blue.png",
		}
	},
	["red_playboys"] = {
		label = "1 Stack Red Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_red.png",
		}
	},
	["red_playboys2"] = {
		label = "2 Stack Red Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_red.png",
		}
	},
	["red_playboys3"] = {
		label = "3 Stack Red Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_red.png",
		}
	},
	["red_playboys4"] = {
		label = "4 Stack Red Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_red.png",
		}
	},
	["orange_playboys"] = {
		label = "1 Stack Orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_orange.png",
		}
	},
	["orange_playboys2"] = {
		label = "2 Stack Orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_orange.png",
		}
	},
	["orange_playboys3"] = {
		label = "3 Stack Orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_orange.png",
		}
	},
	["orange_playboys4"] = {
		label = "4 Stack Orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "playboy_orange.png",
		}
	},
	["white_aliens"] = {
		label = "1 Stack White Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_white.png",
		}
	},
	["white_aliens2"] = {
		label = "2 Stack White Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_white.png",
		}
	},
	["white_aliens3"] = {
		label = "3 Stack White Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_white.png",
		}
	},
	["white_aliens4"] = {
		label = "4 Stack White Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_white.png",
		}
	},
	["blue_aliens"] = {
		label = "1 Stack Blue Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_blue.png",
		}
	},
	["blue_aliens2"] = {
		label = "2 Stack Blue Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_blue.png",
		}
	},
	["blue_aliens3"] = {
		label = "3 Stack Blue Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_blue.png",
		}
	},
	["blue_aliens4"] = {
		label = "4 Stack Blue Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_blue.png",
		}
	},
	["red_aliens"] = {
		label = "1 Stack Red Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_red.png",
		}
	},
	["red_aliens2"] = {
		label = "2 Stack Red Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_red.png",
		}
	},
	["red_aliens3"] = {
		label = "3 Stack Red Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_red.png",
		}
	},
	["red_aliens4"] = {
		label = "4 Stack Red Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_red.png",
		}
	},
	["orange_aliens"] = {
		label = "1 Stack Orange Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_orange.png",
		}
	},
	["orange_aliens2"] = {
		label = "2 Stack Orange Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_orange.png",
		}
	},
	["orange_aliens3"] = {
		label = "3 Stack Orange Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_orange.png",
		}
	},
	["orange_aliens4"] = {
		label = "4 Stack Orange Aliens",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "alien_orange.png",
		}
	},
	["white_pl"] = {
		label = "1 Stack White PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_white.png",
		}
	},
	["white_pl2"] = {
		label = "2 Stack White PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_white.png",
		}
	},
	["white_pl3"] = {
		label = "3 Stack White PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_white.png",
		}
	},
	["white_pl4"] = {
		label = "4 Stack White PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_white.png",
		}
	},
	["blue_pl"] = {
		label = "1 Stack Blue PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_blue.png",
		}
	},
	["blue_pl2"] = {
		label = "2 Stack Blue PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_blue.png",
		}
	},
	["blue_pl3"] = {
		label = "3 Stack Blue PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_blue.png",
		}
	},
	["blue_pl4"] = {
		label = "4 Stack Blue PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_blue.png",
		}
	},
	["red_pl"] = {
		label = "1 Stack Red PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_red.png",
		}
	},
	["red_pl2"] = {
		label = "2 Stack Red PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_red.png",
		}
	},
	["red_pl3"] = {
		label = "3 Stack Red PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_red.png",
		}
	},
	["red_pl4"] = {
		label = "4 Stack Red PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_red.png",
		}
	},
	["orange_pl"] = {
		label = "1 Stack Orange PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_orange.png",
		}
	},
	["orange_pl2"] = {
		label = "2 Stack Orange PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_orange.png",
		}
	},
	["orange_pl3"] = {
		label = "3 Stack Orange PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_orange.png",
		}
	},
	["orange_pl4"] = {
		label = "4 Stack Orange PL",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "PL_orange.png",
		}
	},
	["white_trolls"] = {
		label = "1 Stack White Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_white.png",
		}
	},
	["white_trolls2"] = {
		label = "2 Stack White Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_white.png",
		}
	},
	["white_trolls3"] = {
		label = "3 Stack White Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_white.png",
		}
	},
	["white_trolls4"] = {
		label = "4 Stack White Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_white.png",
		}
	},
	["blue_trolls"] = {
		label = "1 Stack Blue Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_blue.png",
		}
	},
	["blue_trolls2"] = {
		label = "2 Stack Blue Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_blue.png",
		}
	},
	["blue_trolls3"] = {
		label = "3 Stack Blue Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_blue.png",
		}
	},
	["blue_trolls4"] = {
		label = "4 Stack Blue Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_blue.png",
		}
	},
	["red_trolls"] = {
		label = "1 Stack Red Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_red.png",
		}
	},
	["red_trolls2"] = {
		label = "2 Stack Red Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_red.png",
		}
	},
	["red_trolls3"] = {
		label = "3 Stack Red Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_red.png",
		}
	},
	["red_trolls4"] = {
		label = "4 Stack Red Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_red.png",
		}
	},
	["orange_trolls"] = {
		label = "1 Stack Orange Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_orange.png",
		}
	},
	["orange_trolls2"] = {
		label = "2 Stack Orange Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_orange.png",
		}
	},
	["orange_trolls3"] = {
		label = "3 Stack Orange Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_orange.png",
		}
	},
	["orange_trolls4"] = {
		label = "4 Stack Orange Trolls",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "troll_orange.png",
		}
	},
	["white_cats"] = {
		label = "1 Stack White Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_white.png",
		}
	},
	["white_cats2"] = {
		label = "2 Stack White Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_white.png",
		}
	},
	["white_cats3"] = {
		label = "3 Stack White Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_white.png",
		}
	},
	["white_cats4"] = {
		label = "4 Stack White Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_white.png",
		}
	},
	["blue_cats"] = {
		label = "1 Stack Blue Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_blue.png",
		}
	},
	["blue_cats2"] = {
		label = "2 Stack Blue Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_blue.png",
		}
	},
	["blue_cats3"] = {
		label = "3 Stack Blue Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_blue.png",
		}
	},
	["blue_cats4"] = {
		label = "4 Stack Blue Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_blue.png",
		}
	},
	["red_cats"] = {
		label = "1 Stack Red Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_red.png",
		}
	},
	["red_cats2"] = {
		label = "2 Stack Red Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_red.png",
		}
	},
	["red_cats3"] = {
		label = "3 Stack Red Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_red.png",
		}
	},
	["red_cats4"] = {
		label = "4 Stack Red Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_red.png",
		}
	},
	["orange_cats"] = {
		label = "1 Stack Orange Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_orange.png",
		}
	},
	["orange_cats2"] = {
		label = "2 Stack Orange Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_orange.png",
		}
	},
	["orange_cats3"] = {
		label = "3 Stack Orange Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_orange.png",
		}
	},
	["orange_cats4"] = {
		label = "4 Stack Orange Cats",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "kitty_orange.png",
		}
	},
	["dualpress"] = {
		label = "Dual Pill Press",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "pillpress.png",
		}
	},
	["triplepress"] = {
		label = "Triple Pill Press",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "pillpress.png",
		}
	},
	["quadpress"] = {
		label = "Quad Pill Press",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "pillpress.png",
		}
	},
	["spores"] = {
		label = "Spores",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "shrooms.png",
		}
	},
	["cokeburner"] = {
		label = "Coke Burner",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "gta5phone.png",
		}
	},
	["crackburner"] = {
		label = "Crack Burner",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "gta5phone.png",
		}
	},
	["heroinburner"] = {
		label = "Heroin Burner",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "gta5phone.png",
		}
	},
	["lsdburner"] = {
		label = "LSD Burner",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "gta5phone.png",
		}
	},
	["cactusbulb"] = {
		label = "Cactus Bulb",
		weight = 100,
		stack = true,
		close = true,
	},
	["driedmescaline"] = {
		label = "Mescaline",
		weight = 100,
		stack = true,
		close = true,
	},
	["mdlean"] = {
		label = "Sizzurup",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "Sizzurup.png",
		}
	},
	["mdreddextro"] = {
		label = "Red Dextro",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "reddextro.png",
		}
	},
	["wetcannabis"] = {
		label = "Wet Cannabis",
		weight = 100,
		stack = true,
		close = true,
	},
	["drycannabis"] = {
		label = "Dry Cannabis",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "driedcannabis.png",
		}
	},
	["weedgrinder"] = {
		label = "Weed Grinder",
		weight = 100,
		stack = true,
		close = true,
	},
	["mdbutter"] = {
		label = "Butter",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "butter.png",
		}
	},
	["cannabutter"] = {
		label = "Canna-Butter",
		weight = 100,
		stack = true,
		close = true,
	},
	["specialbrownie"] = {
		label = "Special Brownie",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "chocolate.png",
		}
	},
	["specialcookie"] = {
		label = "Special Cookie",
		weight = 100,
		stack = true,
		close = true,
	},
	["specialmuffin"] = {
		label = "Special Muffin",
		weight = 100,
		stack = true,
		close = true,
	},
	["specialchocolate"] = {
		label = "Special Chocolate",
		weight = 100,
		stack = true,
		close = true,
	},
	["grindedweed"] = {
		label = "Keef",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "keef.png",
		}
	},
	["flour"] = {
		label = "Flour",
		weight = 100,
		stack = true,
		close = true,
	},
	["chocolate"] = {
		label = "Chocolate",
		weight = 100,
		stack = true,
		close = true,
	},
	["ephedrine"] = {
		label = "Ephedrine",
		weight = 100,
		stack = true,
		close = true,
	},
	["acetone"] = {
		label = "Acetone",
		weight = 100,
		stack = true,
		close = true,
	},
	["methbags"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
	},
	["blunt"] = {
		label = "Blunts",
		weight = 100,
		stack = true,
		close = true,
	},
	["butane"] = {
		label = "Butane",
		weight = 100,
		stack = true,
		close = true,
	},
	["butanetorch"] = {
		label = "Butane Torch",
		weight = 100,
		stack = true,
		close = true,
	},
	["dabrig"] = {
		label = "Dab Rig",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "dabrig2.png",
		}
	},
	["mdwoods"] = {
		label = "MDWOODS",
		weight = 100,
		stack = true,
		close = true,
	},
	["ciggie"] = {
		label = "Ciggie",
		weight = 100,
		stack = true,
		close = true,
	},
	["tobacco"] = {
		label = "Tobacco",
		weight = 100,
		stack = true,
		close = true,
	},
	["shatter"] = {
		label = "Shatter",
		weight = 100,
		stack = true,
		close = true,
	},
	["bluntwrap"] = {
		label = "Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
	},
	["leanbluntwrap"] = {
		label = "Lean Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
	},
	["dextroblunt"] = {
		label = "Dextro Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
	},
	["leanblunts"] = {
		label = "Lean Blunts",
		weight = 100,
		stack = true,
		close = true,
	},
	["dextroblunts"] = {
		label = "Dextro Blunts",
		weight = 100,
		stack = true,
		close = true,
	},
	["chewyblunt"] = {
		label = "Chewy",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "blunt.png",
		}
	},
	["leancup"] = {
		label = "Empty Cup",
		weight = 100,
		stack = true,
		close = true,
	},
	["cupoflean"] = {
		label = "Lean Cup",
		weight = 100,
		stack = true,
		close = true,
	},
	["cupofdextro"] = {
		label = "Dextro Cup",
		weight = 100,
		stack = true,
		close = true,
	},
	["xtcburner"] = {
		label = "XTC Burner",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "gta5phone.png",
		}
	},
	["dextrobluntwrap"] = {
		label = "Dextro Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
	},
	-- End of md-drugs
	-- Start of md-houserob
	["houselaptop"] = {
        label = "House laptop",
        weight = 1200,
        stack = false,
        close = false,
        description = "Can Probably Hack Something With This",
    },
	["mansionlaptop"] = {
        label = "Mansion laptop",
        weight = 1200,
        stack = false,
        close = false,
        description = "Can Probably Hack Something With This",
    },
	["art1"] = {
        label = "Kitty Sleeping Art",
        weight = 2500,
        stack = false,
        close = false,
        description = "This Is Too Cute",
    },
	["art2"] = {
        label = "Wide Eye Kitty Art",
        weight = 2500,
        stack = false,
        close = false,
        description = "This Is Too Cute",
    },
	["art3"] = {
        label = "Fancy Kitty Art",
        weight = 2500,
        stack = false,
        close = false,
        description = "This Is Too Cute",
    },
	["art4"] = {
        label = "Presidential Kitty Art",
        weight = 2500,
        stack = false,
        close = false,
        description = "Id Vote For This",
    },
	["art5"] = {
        label = "Obi Jesus Painting",
        weight = 2500,
        stack = false,
        close = false,
        description = "I Swore My Allegiance To The Force, To Heaven!",
    },
	["art6"] = {
        label = "Merp Kitty Art",
        weight = 2500,
        stack = false,
        close = false,
        description = "Merp",
    },
	["art7"] = {
        label = "Family Portait",
        weight = 2500,
        stack = false,
        close = false,
        description = "Smile",
    },
	["boombox"] = {
        label = "Boom Box",
        weight = 2500,
        stack = false,
        close = false,
        description = "How Did People Carry This",
    },
	["checkbook"] = {
        label = "Check Book",
        weight = 2500,
        stack = false,
        close = false,
        description = "Do People Use These?",
    },
	["mdlaptop"] = {
        label = "Slow Laptop",
        weight = 2500,
        stack = false,
        close = false,
        description = "Can I Download More Ram?",
        client = {
            image = "laptop.png",
        }
    },
	["mddesktop"] = {
        label = "Desktop",
        weight = 2500,
        stack = false,
        close = false,
        description = "I hope there isnt a virus",
    },
	["mdmonitor"] = {
        label = "Monitor",
        weight = 2500,
        stack = false,
        close = false,
        description = "720HD bb",
    },
	["mdtablet"] = {
        label = "Tablet",
        weight = 2500,
        stack = false,
        close = false,
        description = "Never Will Give This Up",
    },
	["mdspeakers"] = {
        label = "Speakers",
        weight = 2500,
        stack = false,
        close = false,
        description = "Is This Even Loud?",
        client = {
            image = "speaker.png",
        }
    },
	-- End of md-houserob
	-- Start of mana hunting
	['carcass_boar'] = {
		label = 'Boar Carcass',
		weight = 20000,
		stack = false,
		degrade = 5 * 60,
		client = {
            add = function()
                exports.mana_hunting:CarryCarcass()
            end,
            remove = function()
				exports.mana_hunting:CarryCarcass()
            end
        }
	},
	['carcass_hawk'] = {
		label = 'Hawk Carcass',
		weight = 3000,
		stack = false,
		degrade = 5 * 60,
		client = {
            add = function()
                exports.mana_hunting:CarryCarcass()
            end,
            remove = function()
				exports.mana_hunting:CarryCarcass()
            end
        }
	},
	['carcass_cormorant'] = {
		label = 'Cormorant Carcass',
		weight = 3000,
		stack = false,
		degrade = 5 * 60,
		client = {
            add = function()
                exports.mana_hunting:CarryCarcass()
            end,
            remove = function()
				exports.mana_hunting:CarryCarcass()
            end
        }
	},
	['carcass_coyote'] = {
		label = 'Coyote Carcass',
		weight = 3000,
		stack = false,
		degrade = 5 * 60,
		client = {
            add = function()
                exports.mana_hunting:CarryCarcass()
            end,
            remove = function()
				exports.mana_hunting:CarryCarcass()
            end
        }
	},
	['carcass_deer'] = {
		label = 'Deer Carcass',
		weight = 18000,
		stack = false,
		degrade = 5 * 60,
		client = {
            add = function()
                exports.mana_hunting:CarryCarcass()
            end,
            remove = function()
				exports.mana_hunting:CarryCarcass()
            end
        }
	},
	['carcass_mtlion'] = {
		label = 'Mountain Lion Carcass',
		weight = 16000,
		stack = false,
		degrade = 5 * 60,
		client = {
            add = function()
                exports.mana_hunting:CarryCarcass()
            end,
            remove = function()
				exports.mana_hunting:CarryCarcass()
            end
        }
	},
	['carcass_rabbit'] = {
		label = 'Rabbit Carcass',
		weight = 3000,
		stack = false,
		degrade = 5 * 60,
		client = {
            add = function()
                exports.mana_hunting:CarryCarcass()
            end,
            remove = function()
				exports.mana_hunting:CarryCarcass()
            end
        }
	},
	-- End of mana hunting
}