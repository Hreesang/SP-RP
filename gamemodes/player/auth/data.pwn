#if defined _inc_data
	#undef _inc_data
#endif

enum {
	AUTH_MSG_DEFAULT,
	AUTH_MSG_WRONG_PASS,
	AUTH_MSG_WRONG_LENGTH
} ;

#define MAX_PASSWORD_LENGTH		(65)
#define MIN_PASSWORD_LENGTH		(4)
#define MAX_PASSSALT_LENGTH		(15)
#define MAX_UNIQUE_ID_LENGTH	( 12 )

#define MAX_WEAPON_SLOTS (13)

enum E_PLAYER_ACCOUNT_DATA {

	E_PLAYER_ACCOUNT_ID,
	E_PLAYER_ACCOUNT_NAME [ MAX_PLAYER_NAME ],

	E_PLAYER_ACCOUNT_NAMESTYLE,

	E_PLAYER_ACCOUNT_PASSWORD [ MAX_PASSWORD_LENGTH ],
	E_PLAYER_ACCOUNT_PASSSALT [ MAX_PASSSALT_LENGTH ],

	E_PLAYER_ACCOUNT_STAFFLEVEL,
	E_PLAYER_ACCOUNT_CONTRIBUTOR,
	E_PLAYER_ACCOUNT_PREMIUMLEVEL,
	E_PLAYER_ACCOUNT_REPORTS_DONE,
	E_PLAYER_ACCOUNT_QUESTIONS_DONE,

	E_PLAYER_ACCOUNT_SUPPORTER,

	E_PLAYER_ACCOUNT_FORUMNAME [ 64 ],
	E_PLAYER_ACCOUNT_DISCORDNAME [ 64 ],
	E_PLAYER_ACCOUNT_EMAIL [ 256 ],

	E_PLAYER_ACCOUNT_GUNACCESS,
	E_PLAYER_ACCOUNT_GUNBAN,

	// For big rewards, i.e. 100k reward when hitting 100 players
	E_PLAYER_ACCOUNT_REWARD_AMOUNT, // The amount to give
	E_PLAYER_ACCOUNT_REWARD_CLAIMED, // Claimed on character
	E_PLAYER_ACCOUNT_REWARD_IP[64], // Used to check if people make alts!


	E_PLAYER_ACCOUNT_SETTINGS_TIPS,
	E_PLAYER_ACCOUNT_SETTINGS_GZES, // gangzones
	E_PLAYER_ACCOUNT_SETTINGS_BLNK, // blinkers
} ;

new Account [ MAX_PLAYERS ] [ E_PLAYER_ACCOUNT_DATA ] ;

// This enum stores the three possible characters upon login
// It is then reset. This just makes it so we don't need to 
// have diff sets of data stored in our character array...
enum E_PLAYER_CHARACTER_BUFFER_DATA {

	E_CHAR_BUFFER_ID,
	E_CHAR_BUFFER_ACC_ID,
	E_CHAR_BUFFER_NAME [ MAX_PLAYER_NAME ],
	E_CHAR_BUFFER_RP_NAME [ MAX_PLAYER_NAME ],
	E_CHAR_BUFFER_FACTION_ID,
	E_CHAR_BUFFER_FACTION_TIER,
	E_CHAR_BUFFER_FACTION_RANK[64],
	E_CHAR_BUFFER_HOURS_PLAYED,
	E_CHAR_BUFFER_SKIN,
	E_CHAR_BUFFER_HITMAN_KILLED,
	E_CHAR_BUFFER_HITMAN_UNLOCKED,
	E_CHAR_BUFFER_LAST_LOGIN,
	E_CHAR_BUFFER_LAST_LOGIN_STR[32]
} ;

#define MAX_CHARACTERS 	( 5 )
new CharacterBuffer [ MAX_PLAYERS ] [ MAX_CHARACTERS ] [ E_PLAYER_CHARACTER_BUFFER_DATA ] ;

enum E_PLAYER_CHARACTER_DATA {

	E_CHARACTER_ID,
	E_CHARACTER_ACCOUNT_ID,

	E_CHARACTER_NAME [ MAX_PLAYER_NAME ],
	E_CHARACTER_NAME_RP [ MAX_PLAYER_NAME ], // Cached RP name with spaces
	E_CHARACTER_NAME_MASK [ MAX_PLAYER_NAME ], // Cached RP name with spaces (or mask, if they're wearing)
	E_CHARACTER_NAME_CACHED_AT,
	E_CHARACTER_UNIQUEID [ MAX_UNIQUE_ID_LENGTH ],
	E_CHARACTER_IP [ 32 ],

	E_CHARACTER_REGISTERED,

	E_CHARACTER_SKINID,
	E_CHARACTER_SKIN_MODEL[96],
	E_CHARACTER_SKIN_DIR[96],
	E_CHARACTER_GENDER,
	Float: E_CHARACTER_HEALTH,
	Float: E_CHARACTER_ARMOUR,

	Float: E_CHARACTER_LAST_POS_X,
	Float: E_CHARACTER_LAST_POS_Y,
	Float: E_CHARACTER_LAST_POS_Z,
	Float: E_CHARACTER_LAST_POS_A,
	E_CHARACTER_LAST_POS_INT,
	E_CHARACTER_LAST_POS_VW,

	E_CHARACTER_ADMINLVL,
	E_CHARACTER_HELPERLVL,
	E_CHARACTER_CHAT_STYLE,

	E_CHARACTER_ASOLDHOUSE, // IF ASOLD, PUT MONEY HERE
	E_CHARACTER_RENTEDHOUSE,

	E_CHARACTER_PAGER_FREQ,
	E_CHARACTER_PAGER_NICK[11],

	// PLAYER ITEMS
	E_CHARACTER_DRIVERSLICENSE,
	E_CHARACTER_GUNLICENSE,

	// CASH / LEVEL
	E_CHARACTER_CASH,
	E_CHARACTER_BANKCASH,
	E_CHARACTER_SAVINGS,
	E_CHARACTER_PAYCHECK, // STORES JOB PAYOUT

	E_CHARACTER_LEVEL,
	E_CHARACTER_HOURS,
	E_CHARACTER_EXP,

	E_CHARACTER_REGISTERDATE,
	E_CHARACTER_LOGINDATE,

	E_CHARACTER_PHONE_NUMBER,
	E_CHARACTER_PHONE_COLOUR,
	E_CHARACTER_PHONE_BACKGROUND,
	E_CHARACTER_PHONE_CREDIT,
	E_CHARACTER_PHONE_BATTERY,

	// Make these save!
	E_CHARACTER_FACTIONID,
	E_CHARACTER_FACTIONTIER,
	E_CHARACTER_FACTIONRANK[64],
	E_CHARACTER_FACTION_SQUAD,
	E_CHARACTER_FACTION_SQUAD2,
	E_CHARACTER_FACTION_SQUAD3,
	E_CHARACTER_FACTION_BADGE,
	E_CHARACTER_FACTION_SUSPENSION,

	// arrest-data
	E_CHARACTER_ARREST_TIME,
	Float: E_CHARACTER_ARREST_X,
	Float: E_CHARACTER_ARREST_Y,
	Float: E_CHARACTER_ARREST_Z,
	E_CHARACTER_ARREST_VW,
	E_CHARACTER_ARREST_INT,

	E_CHARACTER_OUTSTANDING_FINES,

	// temp var to refund players
	E_CHARACTER_SOLD_FURNITURE,
	E_CHARACTER_SOLD_PROPERTY,
	E_CHARACTER_PROPERTYSPAWN,

	E_CHARACTER_MASKID,

	// hud disabling
	E_CHARACTER_HUD_DIRECTION, // disabled by default, enabled thru /settings
	E_CHARACTER_HUD_TERRITORY,
	E_CHARACTER_HUD_VEH_FADEIN,
	E_CHARACTER_HUD_TRADEMARK,
	E_CHARACTER_HUD_VEHICLE,
	E_CHARACTER_HUD_MINIGAME,
	E_CHARACTER_HUD_CLOCK,

	// Weed System
	E_CHARACTER_BLUNT_STRAIN,
	E_CHARACTER_BLUNT_PROGRESS,


	// Bandage system
	E_CHARACTER_BANDAGE_COOLDOWN, // target cooldown
	E_CHARACTER_LAST_BANDAGE_CD, // personal cooldown
	E_CHARACTER_HELPUP_CD,
	E_CHARACTER_HEAL_CD,

	// Admin jail
	E_CHARACTER_AJAIL_TIME,
	E_CHARACTER_OAJAIL_REASON[256],
	E_CHARACTER_OAJAIL_ADMIN[24],

	// GD Script
	E_CHARACTER_GD_WOOD,
	E_CHARACTER_GD_METAL,
	E_CHARACTER_GD_PARTS,


	// Tutorial
	E_CHARACTER_TUTORIAL,


	// Ammo
	E_CHARACTER_AMMO_A,
	E_CHARACTER_AMMO_B,
	E_CHARACTER_AMMO_C,
	E_CHARACTER_AMMO_D,
	E_CHARACTER_AMMO_E,
	E_CHARACTER_AMMO_F,
	E_CHARACTER_AMMO_G,
	E_CHARACTER_AMMO_H,
	E_CHARACTER_AMMO_I,
	E_CHARACTER_AMMO_J,

	E_CHARACTER_VL_SLOT_0,
	E_CHARACTER_VL_SLOT_1,
	E_CHARACTER_VL_SLOT_2,
	E_CHARACTER_VL_SLOT_3,
	E_CHARACTER_VL_SLOT_4,
	E_CHARACTER_VL_SLOT_5,
	E_CHARACTER_VL_SLOT_6,
	E_CHARACTER_VL_SLOT_7,
	E_CHARACTER_VL_SLOT_8,
	E_CHARACTER_VL_SLOT_9,

	E_CHARACTER_PROPERTY_REFUND,
	E_CHARACTER_VEHICLE_REFUND,
	E_CHARACTER_VOICELINE_SOUND,

	E_CHARACTER_UPDATE_REWARD,

	E_CHARACTER_WEED_SUPPLIES [ 3 ],
	E_CHARACTER_COKE_SUPPLIES [ 3 ],
	E_CHARACTER_CRACK_SUPPLIES [ 3 ],
	E_CHARACTER_METH_SUPPLIES [ 3 ],

	// Drugs
	E_CHARACTER_RESPECT,
	E_CHARACTER_FEAR,
	E_CHARACTER_FnR_GIVABLE,

	// Drugs
	E_CHARACTER_DRUG_EFFECT_TICKS,
	E_CHARACTER_DRUG_EFFECT_ACTIVE,
	E_CHARACTER_DRUG_EFFECT_PARAM,
	E_CHARACTER_DRUG_EFFECT_TYPE,
	E_CHARACTER_DRUG_EFFECT_CD,

	E_CHARACTER_MOLE,

	E_CHARACTER_PROP_FOOD,
	E_CHARACTER_PROP_FOOD_TIME,
	E_CHARACTER_PROP_FOOD_USES,

	E_CHARACTER_PROP_DRINK,
	E_CHARACTER_PROP_DRINK_TIME,
	E_CHARACTER_PROP_DRINK_USES,

	E_CHARACTER_PROP_CIGARETTE,
	E_CHARACTER_PROP_CIGARETTE_USES,

	E_CHARACTER_PROP_MENU,
	E_CHARACTER_PROP_CRATE,

	E_CHARACTER_HITMAN,
	E_CHARACTER_HITMAN_RANK,

	E_CHARACTER_HITMAN_KILLED,
	E_CHARACTER_HITMAN_UNLOCKED,

	E_CHARACTER_ROBBERY_COOLDOWN,

	E_CHARACTER_FIGHTSTYLE,
	E_CHARACTER_FIGHTSTYLE_TICK,

	E_CHARACTER_SPRAYTAG_WIPE_CD,
	E_CHARACTER_SPRAYTAG_DYNAMIC,
	E_CHARACTER_SPRAYTAG_STATIC,
	E_CHARACTER_SPRAYTAG_DYN_TEXT [ 64 ],
	E_CHARACTER_SPRAYTAG_DYN_FCOLOR,
	E_CHARACTER_SPRAYTAG_DYN_CD,
	E_CHARACTER_SPRAYTAG_STATIC_CD,

	E_CHARACTER_DRIVER_WARNINGS,

	E_CHARACTER_CHOPSHOP_CD,
	E_CHARACTER_LOCKPICK,
	E_CHARACTER_GYM_SETUP,
	E_CHARACTER_GYM_ENERGY,
	E_CHARACTER_GYM_ENERGY_INTERNAL,
	E_CHARACTER_GYM_WEIGHT,
	E_CHARACTER_GYM_WEIGHT_XP,
	E_CHARACTER_GYM_WEIGHT_DEFER,
	E_CHARACTER_GYM_WEIGHT_INTERNAL,
	E_CHARACTER_GYM_MUSCLE,
	E_CHARACTER_GYM_MUSCLE_XP,
	E_CHARACTER_GYM_MUSCLE_INTERNAL,
	E_CHARACTER_GYM_HUNGER,
	E_CHARACTER_GYM_HUNGER_INTERNAL,
	E_CHARACTER_GYM_THIRST,
	E_CHARACTER_GYM_THIRST_INTERNAL,

	E_CHARACTER_CRASHED_DUTY,

	E_CHARACTER_SOLD_FUELSTATION,
	E_CHARACTER_STRAWMAN,

	E_CHARACTER_VEH_DUP,
	E_CHARACTER_PROP_DUP,

	E_CHARACTER_ATTRIB_SEX,
	E_CHARACTER_ATTRIB_AGE,
	E_CHARACTER_ATTRIB_RACE,
	E_CHARACTER_ATTRIB_EYES,
	E_CHARACTER_ATTRIB_HAIR,
	E_CHARACTER_ATTRIB_BODY,
	E_CHARACTER_ATTRIB_HEIGHT,
	E_CHARACTER_ATTRIB_DESC[128]

} ;

new Character [ MAX_PLAYERS ] [ E_PLAYER_CHARACTER_DATA ] ;
 
enum PlayerVars {

	E_PLAYER_CHARACTER_FOUND,

	bool: player_islogged,
	bool: player_isregistered,

	bool:E_PLAYER_CHOSE_CHARACTER,
	bool:E_PLAYER_SPAWNED_CHARACTER,
	E_PLAYER_SPAWN_OPTIONS_COUNT,

	bool: E_PLAYER_ADMIN_DUTY,
	bool: E_PLAYER_ADMIN_WALLHACK,
	DynamicText3D: E_PLAYER_ADMIN_LABEL,

	bool: E_PLAYER_HELPER_DUTY,

	player_hasboombox,

	player_hasseatbelton,
	player_isrefuelingvehicle, // vids start at 1, so 0 = not refueling
	player_refuelcooldown,
	
	E_PLAYER_ANIM_PRELOADED,

	E_PLAYER_PAYCHECK_INCR, // how many paychecks player has been ingame
	E_PLAYER_MODSHOP_ENTERED, // E_MOD_SHOP_ID

	E_PLAYER_GPS_CP, 

	// Some sporky stuff
	E_PLAYER_SPOOFING_ATTACH,
	E_PLAYER_CONNECTED_IP[64],

	// Phone system
	player_phonecalling,
	bool: player_viewphone,

	E_PLAYER_PHONE_ALERT_TICKS,
	E_PLAYER_PHONE_RINGTONE_TICK,
	E_PLAYER_PHONE_DECLINE_CALL,
	E_PLAYER_PHONE_ACCEPT_CALL,
	E_PLAYER_PHONE_MISSED_CALL_NR,
	E_PLAYER_PHONE_INBOX_PAGE,
	E_PLAYER_PHONE_CHECKED_INBOX,
	E_PLAYER_PHONE_PHONEBOOK_PAGE,
	bool: E_PLAYER_PHONE_STATUS,

	// faction
	E_PLAYER_PD_RADIO_CHANNEL,

	bool: E_PLAYER_FIRST_SPAWN,
	bool: E_PLAYER_FRESH_SPAWN,
	E_PLAYER_FRESH_SPAWN_MSG_CD,

	// Injury system
	E_PLAYER_INJUREDMODE,
	bool: E_PLAYER_DEATH_RESPAWN,

	E_PLAYER_INJURED_LAST_VEH,
	E_PLAYER_INJURED_LAST_VEH_SEAT,

	Float: E_PLAYER_INJURED_POS_X,
	Float: E_PLAYER_INJURED_POS_Y,
	Float: E_PLAYER_INJURED_POS_Z,
	Float: E_PLAYER_INJURED_POS_A,

	E_PLAYER_INJURED_EXECUTE_CD,

	E_PLAYER_INJURED_INT,
	E_PLAYER_INJURED_VW,

	E_PLAYER_INJURY_TICK,
	E_PLAYER_INJURY_MIN_TICK,
	E_PLAYER_INJURY_ANIMATION,
	E_PLAYER_INJURY_REASON[64],

	// if player dies and calls onplayerdeath
	E_PLAYER_ONPLAYERDEATH,

	// when a player was list billed at hospital (not saved in db atm)
	E_PLAYER_LAST_HOSPITAL_BILL_AT,

	// Blood trial system
	bool: E_PLAYER_INJURED_BLEEDING,
	bool: E_PLAYER_REFRESH_PUDDLE_OBJS,
	E_PLAYER_INJURY_REFRESH_PUDDLE,
	E_PLAYER_BLOOD_TICK,
	E_PLAYER_BLOOD_PUDDLE_COUNT,

	E_PLAYER_LAST_VEH_ENTER_TIME,
	E_PLAYER_LAST_VEH_TICK,

	// Last vehicle
	E_PLAYER_LAST_VEHICLE,
	E_PLAYER_LAST_VEHICLE_SEAT,

	// info box
	E_PLAYER_INFO_BOX_TIMEOUT,

	E_PLAYER_INTERACT_PAGE,
	E_PLAYER_DRIVEBY_OLD_WEAPON,
	E_PLAYER_DRIVEBY_COOLDOWN,
	
	bool: E_PLAYER_TASER_EQUIPPED,
	bool: E_PLAYER_IS_TAZED,
	E_PLAYER_IS_TAZED_TIME,
	E_PLAYER_TAZER_OLD_WEAPON,
	E_PLAYER_TAZER_OLD_AMMO,

	bool: E_PLAYER_BEANBAG_EQUIPPED,
	bool: E_PLAYER_IS_BEANBAGGED,
	E_PLAYER_IS_BEANBAGGED_TIME,

	E_PLAYER_IS_TACKLED,
	E_PLAYER_HAS_TACKLED,
	bool:E_PLAYER_TACKLE_ACTIVE,

	E_PLAYER_CAR_TOW_TICK,

	// Editing Objects
	E_PLAYER_IS_MOVING_GATE,
	E_PLAYER_IS_MOVING_PDOBJ,

	E_PLAYER_CRIM_RECORD_PAGE,
	E_PLAYER_PDOBJ_PAGE,

	E_PLAYER_INT_LIST_PAGE,

	E_PLAYER_RENT_WARNING, // stores enum ID

	E_PLAYER_HAS_GASCAN,
	E_PLAYER_HAS_TOOLKIT,
	E_PLAYER_ROPES,

	E_PLAYER_PM_MOD_WARNING,
	E_PLAYER_PM_BLOCKED,
	E_PLAYER_LAST_PM_SENT_AT,
	E_PLAYER_PM_SPAM_COUNT,
	E_PLAYER_LAST_UPDATE,
	E_PLAYER_PHONE_STATIC_CALL,
	E_PLAYER_PHONE_EMERGENCY,

	E_PLAYER_IS_MASKED,
	E_PLAYER_LAST_MASKED_AT,

	E_PLAYER_HAS_BANDAGE,
	E_PLAYER_OWNED_DRUGS_PAGE,

	E_PLAYER_AC_SAVED_AMMO,

	Float: E_PLAYER_AFK_POS [ 3 ],
	E_PLAYER_AFK_TIME,

	E_PLAYER_IS_SPECTATING,
	Float: E_PLAYER_SPEC_POS_X,
	Float: E_PLAYER_SPEC_POS_Y,
	Float: E_PLAYER_SPEC_POS_Z,
	E_PLAYER_SPEC_INT,
	E_PLAYER_SPEC_VW,
	E_PLAYER_SPEC_VEH,
	bool: E_PLAYER_SPEC_RESYNC,

	E_PLAYER_BLINDFOLDED,
	E_PLAYER_LOOPING_ANIM,

	E_PLAYER_NAMECHANGE_COST,
	E_PLAYER_NAMECHANGE_REQUEST,
	E_PLAYER_NAMECHANGE_NAME [ MAX_PLAYER_NAME ],
	E_PLAYER_NAMECHANGE_REASON [ 100 ],

	E_PLAYER_PLACING_DRUG_PLANT,

	E_PLAYER_TUTORIAL_STAGE,
	E_PLAYER_TUTORIAL_LAST_STAGE,
	bool: E_PLAYER_TUTORIAL_WAITING,
	bool: E_PLAYER_IS_DOING_TUTORIAL,

	E_PLAYER_GUN_AC_TICK,
	E_PLAYER_GUN_AC_WARNING,
	E_PLAYER_GUN_AC_WARNING_EXTRA,


	E_PLAYER_SPOOFED_GUN_AC_WARNING,
	E_PLAYER_SPOOFED_GUN_AC_TICK,

	E_PLAYER_ARMOR_AC_TICK,
	E_PLAYER_ARMOR_AC_WARNING,

	E_PLAYER_AMMO_AC_WARNING,

	E_PLAYER_GUNLIST_PAGE,
	E_PLAYER_VOICELINE_PAGE,
	E_PLAYER_VOICELINE_COOLDOWN,

	E_PLAYER_REPORT_PENDING,
	E_PLAYER_REPORT_TARGET,
	E_PLAYER_REPORT_REASON [ 100 ],
	E_PLAYER_REPORT_COOLDOWN,
	E_PLAYER_REPORT_ALERT_TIME,
	E_PLAYER_REPORT_TIME,


	E_PLAYER_QUESTION_PENDING,
	E_PLAYER_QUESTION_ASKED [ 100 ],
	E_PLAYER_QUESTION_COOLDOWN,
	E_PLAYER_QUESTION_TIME,
	E_PLAYER_QUESTION_ALERT_TIME,

	E_PLAYER_GPSLIST_PAGE,

	// Minigame
	E_PLAYER_MINIGAME_BASKET_CD,
	E_PLAYER_MINIGAME_BASKET_INFO,
	E_PLAYER_MINIGAME_BASKET_INFOTD,
	E_PLAYER_MINIGAME_MSG_CD,
	E_PLAYER_MINIGAME_MSG_CD_2,

	E_PLAYER_EXECUTE_MSG,
	E_PLAYER_DRIVEBY_BRASSKNUCKLES,

	E_PLAYER_TOYS_PAGE,
	
	E_PLAYER_DRUGS_PLACING_OBJECT,
	E_PLAYER_DRUGS_PLACING_TYPE,
	E_PLAYER_DRUGS_PLACING_PARAM,

	E_PLAYER_WEAPON_EQUIPPED [ MAX_WEAPON_SLOTS ],
	E_PLAYER_AMMO_SYNCED 	 [ MAX_WEAPON_SLOTS ],
	E_PLAYER_AMMO_TEMP		 [ MAX_WEAPON_SLOTS ],

	E_PLAYER_AMMO_WARNING,
	E_PLAYER_PING_WARNING,
	E_PLAYER_PACKET_LOSS_WARNING,
	E_PLAYER_WEAPON_WARNING_TIME,

	E_PLAYER_FACTION_DUTY,
	E_PLAYER_GUN_LAST_CMD_CD,

	E_PLAYER_LAST_PROPERTY_ENTERED,
	E_PLAYER_LISTEN,

	E_PLAYER_EDITING_PROP,
	E_PLAYER_HIDING_OOC,
	E_PLAYER_HIDING_RC,
	E_PLAYER_HIDING_FACTION,
	E_PLAYER_HIDING_PAGER,

	E_PLAYER_NICKS_TOGGLED,

	E_HITMAN_CONTRACT_OFFERED,
	E_HITMAN_CONTRACT_COST,

	E_PLAYER_HITMAN_MARKED,
	E_PLAYER_HITMAN_CONTRACT,
	E_PLAYER_HITMAN_KILLER,

	DynamicText3D: E_PLAYER_TAG_LABEL,

	E_PLAYER_TRUCKER_CARRY_BOX,
	E_PLAYER_TRUCKER_CARRY_BOX_ITEM,
	E_PLAYER_TRUCKER_CARRY_BOX_OBJ, // model

	E_PLAYER_HOTLINE_COOLDOWN,

	// For panic button!
	E_PLAYER_PANIC_BUTTON_USED,
	E_PLAYER_PANIC_BUTTON_TICKS,
	bool: E_PLAYER_PANIC_BUTTON_ACCEPTED,
	E_PLAYER_PANIC_BUTTON_TARGET,
	E_PLAYER_PANIC_BUTTON_COLOR,
	Float:E_PLAYER_PANIC_BUTTON_POS[3],
	E_PLAYER_PANIC_BUTTON_PROPERTY,

	E_PLAYER_PAUSE_TAG_UPDATE,

	Float: E_PLAYER_CLIENT_DEATH_POS_X,
	Float: E_PLAYER_CLIENT_DEATH_POS_Y,
	Float: E_PLAYER_CLIENT_DEATH_POS_Z,
	Float: E_PLAYER_CLIENT_DEATH_POS_A,
	E_PLAYER_CLIENT_DEATH_INT,
	E_PLAYER_CLIENT_DEATH_VW,

	// refreshing tags in spec
	E_PLAYER_SPEC_TAG_RESYNC,
	E_PLAYER_ADMIN_CONVO,

	// Not saving guns every sec but 30sec!
	E_PLAYER_OTHER_STUFF_TICK,
	E_PLAYER_WEAPON_SAVE_TICK,
	E_PLAYER_LOGOUT_TICK,
	bool:E_PLAYER_JUST_LOGGED_OUT,
	E_PLAYER_LOGOUT_DMG,
	bool:E_PLAYER_WEAPONS_LOADED,

	// furniture stuff
	E_PLAYER_FURNI_MODE, // prop_sql_id (reset on exit)
	bool: E_FURNI_EDITING_OBJECT,
	bool: E_FURNI_SELECTING_OBJECT,
	E_FURNI_EDITING_OBJECTID,
	E_FURNI_EDITING_EXTRAID,
	E_PLAYER_VIEW_FURNI_PAGE,
	E_PLAYER_FURNI_PERM,	// prop sql id

	E_PLAYER_CAR_RANDOM_EVENT_CD, // car discovery cd


    // Pre-fight pos
    Float: E_PLAYER_GYM_OLD_POS_X,
    Float: E_PLAYER_GYM_OLD_POS_Y,
    Float: E_PLAYER_GYM_OLD_POS_Z,
    Float: E_PLAYER_GYM_OLD_POS_A,

    // Editing Gym
	bool: E_PLAYER_EDITING_GYM,
	E_PLAYER_EDITING_GYM_OBJECT,

    // Using gym
    E_PLAYER_GYM_ID,
    bool: E_PLAYER_GYM_CONTROL,
    
    // Progress
    E_PLAYER_GYM_SPAM_KEYS_CD,
    E_PLAYER_GYM_COOLDOWN,

    // GUI
    bool: E_PLAYER_STAT_GUI_SHOWN,
    E_PLAYER_STAT_GUI_TICK,

    // Animations
    E_GYM_SEQUENCE_ANIM,
    E_GYM_SEQ_ANIM_STATE,

    // Graffiti
	bool: E_PLAYER_EDITING_TAG,
	E_PLAYER_EDIT_TAG_OBJID,

	E_PLAYER_TAGS_STATE,
	E_PLAYER_TAGS_NEARTAG,
	E_PLAYER_TAGS_TIMELEFT,

	Float: E_PLAYER_DYN_TAG_POS_X,
	Float: E_PLAYER_DYN_TAG_POS_Y,
	Float: E_PLAYER_DYN_TAG_POS_Z,

	E_PLAYER_ATTACH_EDIT_TYPE,

	// This makes the anticheat deter it's actions
	// if a player is i.e. paused or in a car.
	E_PLAYER_ANTICHEAT_DETER_TICK, 

	bool: E_PLAYER_INFORM_TD_SHOWN [2],
	bool: E_PLAYER_SKIP_INFORM_TD,
	E_PLAYER_GPS_AREA,
	
	bool: E_PLAYER_AUDIO_STREAM,
	E_PLAYER_PLACING_BOOMBOX,
    E_PLAYER_PLACE_BOOMBOX_ID,
    E_PLAYER_LISTENING_BOOMBOX,

    E_PLAYER_PNS_MENU_CHOICE,
    E_PLAYER_PNS_COLOR_PAGE,
    E_PLAYER_PNS_VIEW_BROWSER,

    E_PLAYER_CHOPSHOP_CARID,
    E_PLAYER_CHOPSHOP_PAYOUT,
    E_PLAYER_CHOPSHOP_DROPPOINT,

    E_PLAYER_USING_PNS,

    E_PLAYER_BURGLARY_GAME,

    E_PLAYER_GARBAGEJOB,
    E_PLAYER_GARBAGEJOB_AREA,
    E_PLAYER_GARBAGEJOB_INDEX,
    E_PLAYER_GARBAGEJOB_OLD_INDEX,
    E_PLAYER_GARBAGEJOB_CARRYING,
    E_PLAYER_GARBAGEJOB_VEHICLE,
	
	// Anti abuse for Garbage job
	E_PLAYER_GARBAGEJOB_COUNT,
	E_PLAYER_GARBAGEJOB_TIMEOUT,

    E_PLAYER_LOCKPICKING,
    E_PLAYER_LOCKPICK_TIER,
    Float: E_PLAYER_LOCKPICK_MARGIN,
    Float: E_PLAYER_LOCKPICK_PRESSURE,
//    E_PLAYER_LOCKPICK_NEARCAR,
    E_PLAYER_LOCKPICKING_CAR,


    E_PLAYER_HOTWIRING,
    E_PLAYER_HOTWIRING_VEHICLEID,
    E_PLAYER_HOTWIRE_WIRE_SELECTED,
    E_PLAYER_HOTWIRE_TIER,

    E_PLAYER_HOTWIRE_A [ 5 ],
    E_PLAYER_HOTWIRE_B [ 5 ],


	E_PLAYER_PAGER_COOLDOWN,
	E_PLAYER_TOY_RELOAD_CD,

	E_PLAYER_HOTWIRE_INFO_CD,
	E_PLAYER_HOTWIRE_INFO_CD2,
	E_PLAYER_HOTWIRE_INFO_CD3,

	E_PLAYER_MAPICON_PAGE,

	E_PLAYER_ADMIN_WARNS_TOGGLED,
	E_PLAYER_ADMIN_CHATS_TOGGLED,
	bool: E_PLAYER_MANAGER_WARNS_TOGGLED,
	bool: E_PLAYER_GYM_STATS_SHOWN,
	bool: E_PLAYER_GYM_UPDATE_SHOWN,
	E_PLAYER_GYM_UPDATE_UNIX,
	E_PLAYER_GYM_EXP_COOLDOWN,

	E_PLAYER_BRAWL_STOPANIM_ABUSE,
	E_PLAYER_AC_MITIGATE_TICK,
	E_PLAYER_AC_MITIGATE_UNIX,

	bool: E_PLAYER_PLACING_FUELSTATION,
	bool: E_PLAYER_EDITING_FUELSTATION,
	E_PLAYER_EDITING_FUELSTATION_ID,
	E_PLAYER_PLACING_FUELST_OBJID,
	E_PLAYER_PLACING_FUELST_TYPE,

	bool: E_PLAYER_NEAR_FUELSTATION,
	E_PLAYER_USING_NOZZLE,
	E_PLAYER_FUEL_COST,
	E_PLAYER_GPS_NO_PATH_WARNING,

	E_PLAYER_GYM_LAST_ACTION_DONE,
	E_PLAYER_GYM_MACHINE_IDLE_TICK,

	// tracks which biz /buy is being used from
	// so we can put money in the till!
	E_PLAYER_BIZ_MENU,
	E_PLAYER_BIZ_MENU_SQL_ID,
	E_PLAYER_TRYING_SKIN,
	E_PLAYER_TRYING_SKIN_NAME[32],
	Float:E_PLAYER_TRYING_SKIN_POS[3],

	// traffic tickets
	E_PLAYER_WRITING_TICKET,
	bool:E_PLAYER_HAS_SPIKES,
	E_PLAYER_HAS_SPIKES_AT,
	bool:E_PLAYER_HIT_SPIKES,
	E_PLAYER_HIT_SPIKE,
	E_PLAYER_HIT_SPIKE_AT,

	// gym anti spam

	E_PLAYER_GYM_DETERRENT,

	bool: E_PLAYER_SAVE_CAMERA,
	bool: E_PLAYER_SWAT_ACTIVE,
	E_PLAYER_SWAT_VEHICLE,
	Float:E_PLAYER_KEVLAR_MODIFIER,

	bool:E_PLAYER_DOING_DMV_TEST,

	E_PLAYER_WARP_AC,
	E_PLAYER_WARP_AC_2,
	bool: E_PLAYER_TOGGLE_DONATOR, // 0 = visible, 1 = invisible
	bool: E_PLAYER_TOGGLE_STRAWMAN, // 0 = visible, 1 = invisible

	bool: E_PLAYER_IS_OOC,

	E_PLAYER_FUEL_JERRYCAN_UPDATE,

	E_PLAYER_CRATE_COOLDOWN,
	E_PLAYER_CRATE_TIME,

	bool: E_PLAYER_ANTIDEV_PM,
	bool: E_PLAYER_ADMIN_HIDDEN,
	bool:E_PLAYER_LICENSE_COOLDOWN,

	E_PLAYER_OWNED_FURNILIST_PAGE,
	bool:E_PLAYER_AT_PROPERTY_ENTER,
	E_PLAYER_PROPERTY_ENTER_IDX,

	bool:E_PLAYER_CREATING_CHAR,
	bool:E_PLAYER_ATTRIBS_EDITABLE,

	bool:E_PLAYER_USING_HOSE,
	E_PLAYER_HOSE_INDEX,
	E_PLAYER_HOSE_UPDATED_AT,
	E_PLAYER_HOSE_ACTION,
	bool:E_PLAYER_HOSE_SYNCED,

	E_PLAYER_DYN_ST_COLOR,

	bool:E_PLAYER_USING_WARDROBE,
	E_PLAYER_CURRENT_WARDROBE,

	E_PLAYER_APRIL_FOOLED,

	E_PLAYER_HOLDABLES_INFO,
	E_PLAYER_HOLDABLES_EDITING,
	E_PLAYER_HOLDABLES_MODELID,
	E_PLAYER_HOLDABLES_INDEX,
	E_PLAYER_HOLDABLES_ANIM,
	bool:E_PLAYER_HOLDABLES_CARRYING,
	Float:E_PLAYER_HOLD_X,
	Float:E_PLAYER_HOLD_Y,
	Float:E_PLAYER_HOLD_Z,
	Float:E_PLAYER_HOLD_RX,
	Float:E_PLAYER_HOLD_RY,
	Float:E_PLAYER_HOLD_RZ

} ;

new PlayerVar [ MAX_PLAYERS ] [ PlayerVars ] ;


enum E_PLAYER_JOB_DATA {

	E_DOCK_JOB_NEXT_TASK_STORE,
	E_DOCK_JOB_NEXT_TASK_COLLECT,
	E_DOCK_JOB_CURRENT_CARGO,
	E_DOCK_JOB_TASK_STREAK

} ;

new PlayerJobVars [ MAX_PLAYERS ] [ E_PLAYER_JOB_DATA ] ;

IsPlayerLogged (playerid) 
{
	return PlayerVar [ playerid ] [ player_islogged ];
}

// This checks if the player has spawned as an actual character
IsPlayerPlaying (playerid) {

	return PlayerVar [ playerid ] [ E_PLAYER_SPAWNED_CHARACTER ] ;
}


// Spooky Attribute Stuff

enum E_ATTRIBUTE
{
    E_ATTRIBUTE_SEX,
    E_ATTRIBUTE_AGE,
    E_ATTRIBUTE_RACE,
    E_ATTRIBUTE_HAIR,
    E_ATTRIBUTE_EYES,
    E_ATTRIBUTE_BODY,
    E_ATTRIBUTE_HEIGHT,
    E_ATTRIBUTE_DESC
}

enum
{
    E_ATTRIBUTE_SEX_MALE = 1,
    E_ATTRIBUTE_SEX_FEMALE
}

enum
{
    E_ATTRIBUTE_RACE_WHITE = 1,
    E_ATTRIBUTE_RACE_BLACK,
    E_ATTRIBUTE_RACE_LATIN,
    E_ATTRIBUTE_RACE_ASIAN
}

enum
{
    E_ATTRIBUTE_HAIR_BALD = 1,
    E_ATTRIBUTE_HAIR_BLACK,
    E_ATTRIBUTE_HAIR_BROWN,
    E_ATTRIBUTE_HAIR_BLONDE,
    E_ATTRIBUTE_HAIR_WHITE,
    E_ATTRIBUTE_HAIR_GRAY,
    E_ATTRIBUTE_HAIR_RED
}

enum
{
    E_ATTRIBUTE_EYES_AMBER = 1,
    E_ATTRIBUTE_EYES_BLUE,
    E_ATTRIBUTE_EYES_BROWN,
    E_ATTRIBUTE_EYES_GRAY,
    E_ATTRIBUTE_EYES_GREEN,
    E_ATTRIBUTE_EYES_HAZEL
}

enum
{
    E_ATTRIBUTE_BODY_SKINNY = 1,
    E_ATTRIBUTE_BODY_SLIM,
    E_ATTRIBUTE_BODY_AVERAGE,
    E_ATTRIBUTE_BODY_PLUMP,
    E_ATTRIBUTE_BODY_OBESE,
    E_ATTRIBUTE_BODY_MUSCULAR
}