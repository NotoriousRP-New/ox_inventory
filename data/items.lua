return {

	--CURRENCY

	['money'] = {
		label = 'Money',
	},

	--CARDS Identification

	['driver_license'] = {
		label = 'drivers license',
		weight = 0,
		stack = false,
		close = true,
		consume = 0,
		description = "Permit to show you can drive a vehicle",
		server = {
			export = 'qb-idcard.driverlicense',
		},
	},

	['id_card'] = {
		label = 'ID Card',
		weight = 0,
		stack = false,
		consume = 0,
		close = true,
		description = "A card containing all your information to identify yourself",
		server = {
			export = 'qb-idcard.idcard',
		},
	},

	---AMMO BOXES

    ["boxammo-rifle"] = {
        label = "Box of 5.56 NATO",
        weight = 60,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-rifle', 20)
                end
            },
        }
    },

	["boxammo-rifle2"] = {
        label = "Box of 7.62 SOVIET",
        weight = 120,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-rifle2', 20)
                end
            },
        }
    },

	["boxammo-9"] = {
        label = "Box of 9mm",
        weight = 200,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-9', 30)
                end
            },
        }
    },

	["boxammo-22"] = {
        label = "Box of .22 LR",
        weight = 40,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-22', 20)
                end
            },
        }
    },

	["boxammo-38"] = {
        label = "Box of .38 LC",
        weight = 160,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-38', 20)
                end
            },
        }
    },

	["boxammo-44"] = {
        label = "Box of .44 Magnum",
        weight = 280,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-44', 20)
                end
            },
        }
    },

	["boxammo-45"] = {
        label = "Box of .45 ACP",
        weight = 120,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-45', 20)
                end
            },
        }
    },

	["boxammo-50"] = {
        label = "Box of .50 AE",
        weight = 300,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-50', 20)
                end
            },
        }
    },

	["boxammo-shotgun"] = {
        label = "Box of Shotgun Pellets",
        weight = 300,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-shotgun', 10)
                end
            },
        }
    },

	["boxammo-heavysniper"] = {
        label = "Box of .50 BMG",
        weight = 320,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-heavysniper', 10)
                end
            },
        }
    },

	["boxammo-sniper"] = {
        label = "Box of 7.62 NATO",
        weight = 320,
        stack = true,
        close = false,
        buttons = {
            {
                label = 'Unpack Ammo',
                action = function(slot)
                    TriggerServerEvent('ammoboxes:server:use', slot, 'ammo-sniper', 10)
                end
            },
        }
    },


	--RADIO 
	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = true,
		close = true,
		client = {
			export = 'ac_radio.openRadio',
			remove = function(total)
				-- Disconnets a player from the radio when all his radio items are removed.
				if total < 1 and GetConvar('radio_noRadioDisconnect', 'true') == 'true' then
					exports.ac_radio:leaveRadio()
				end
			end
		}
	},


	--FOOD & DRINK
	
	--BASIC DRINKS
	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40) },
			anim = 'drinking',
			prop = 'water',
			usetime = 2500,
			cancel = true,
		}
	},
	['coffee'] = {
		label = 'Coffee',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'coffee',
			usetime = 2500,
			cancel = true,
		}
	},
	['fanta'] = {
		label = 'Fanta',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'fanta',
			usetime = 2500,
			cancel = true,
		}
	},
	['7up'] = {
		label = '7up',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = '7up',
			usetime = 2500,
			cancel = true,
		}
	},
	['cocacola'] = {
		label = 'Coca Cola',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'cocacola',
			usetime = 2500,
			cancel = true,
		}
	},
	['colazero'] = {
		label = 'Coke Zero',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'colazero',
			usetime = 2500,
			cancel = true,
		}
	},
	['drpepper'] = {
		label = 'Dr Pepper',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'drpepper',
			usetime = 2500,
			cancel = true,
		}
	},
	['lipton'] = {
		label = 'Lipton Ice Tea',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'lipton',
			usetime = 2500,
			cancel = true,
		}
	},
	['mtndew'] = {
		label = 'Mountain Dew',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'mtndew',
			usetime = 2500,
			cancel = true,
		}
	},
	['pepsi'] = {
		label = 'Pepsi',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'pepsi',
			usetime = 2500,
			cancel = true,
		}
	},
	['pepsimax'] = {
		label = 'Pepsi Max',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'pepsimax',
			usetime = 2500,
			cancel = true,
		}
	},
	['sprite'] = {
		label = 'Sprite',
		weight = 500,
		client = {
			status = { thirst = math.random(20, 40), stressRelief = math.random(1,3) },
			anim = 'drinking',
			prop = 'sprite',
			usetime = 2500,
			cancel = true,
		}
	},

}