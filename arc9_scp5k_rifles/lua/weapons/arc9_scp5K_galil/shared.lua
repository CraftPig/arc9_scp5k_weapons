AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/arc9_scp5k_galil")

SWEP.Category = "ARC9 - SCP: 5K"
SWEP.SubCategory = "Assault Rifles"

SWEP.AdminOnly = false
SWEP.PrintName = "Galil ACE 22N"
SWEP.TrueName = "Galil ACE-N 22"

SWEP.Slot = 2

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Caliber = "5.56x45mm",
	Weight = "3.5kg (7.6 lbs)",
	Origin = "Israel",
	Manufacturer = "Israel Weapon Industries",
	Year = "2014",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "SCP: 5K | Affray Interactive", 
}
SWEP.Description = [[]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/scp5K/galil/v_galil_rifle.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-3, 4, -5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-6, 6, -4), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -0, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK			 = false
SWEP.TPIKnolefthand	 = false
SWEP.NoTPIKVMPos	 = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType                = "ar2"
SWEP.HoldTypeSprint          = "ar2"
SWEP.HoldTypeHolstered       = nil
SWEP.HoldTypeSights       	 = "ar2"
SWEP.HoldTypeCustomize 		 = "slam"
SWEP.HoldTypeBlindfire		 = "ar2"
SWEP.HoldTypeNPC 			 = "ar2"

SWEP.AnimShoot 				 = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload 			 = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload		 = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw 				 = false
SWEP.AnimMelee 				 = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee		 = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Damage -------------------------------------------------------------------------------------------
local BaseDamageVal             = 55
SWEP.DamageMax 					= BaseDamageVal * (GetConVar("arc9_scp5k_mult_dmg"):GetFloat())
SWEP.DamageMin 					= SWEP.DamageMax / 1.5

SWEP.RangeMin 			 		= (100 / 0.0254) / 4
SWEP.RangeMax			 		= (500 / 0.0254) / 6

SWEP.Num 						= 1
SWEP.DamageType			 		= DMG_BULLET

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.7,
    [HITGROUP_RIGHTARM] = 0.7,
    [HITGROUP_LEFTLEG] = 0.7,
    [HITGROUP_RIGHTLEG] = 0.7,
}

-- Phy Bullets
SWEP.PhysBulletMuzzleVelocity 	= 800 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/ 100000

-- Penetration
SWEP.ImpactForce		 		= 1 
SWEP.ArmorPiercing		 		= 0.7
SWEP.Penetration                = (SWEP.PhysBulletMuzzleVelocity * SWEP.ArmorPiercing * BaseDamageVal) / 100000

-- Firing
SWEP.RPM = 705
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{ Mode = 1 },
    { Mode = -1 },
}
if (GetConVar("arc9_scp5k_automaticdefault"):GetBool()) == true then
SWEP.Firemodes = {
	{ Mode = -1 },
    { Mode = 1 },
}
end

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "ar2" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 30
SWEP.SupplyLimit    = 6 + (GetConVar("arc9_scp5k_mult_supply"):GetFloat())

SWEP.AmmoPerShot    = 1 

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.Recoil 					= 0.35 * (GetConVar("arc9_scp5k_mult_recoil"):GetFloat())
SWEP.RecoilMultSights 			= 0.5 * (GetConVar("arc9_scp5k_mult_recoilads"):GetFloat())

SWEP.RecoilUp 					= 4
SWEP.RecoilSide 				= 0

SWEP.RecoilRandomUp 			= 1
SWEP.RecoilRandomSide 			= 3

SWEP.RecoilDissipationRate 		= 40
SWEP.RecoilResetTime 			= 0.1
SWEP.RecoilFullResetTime 		= 0.3

SWEP.RecoilAutoControl 			= 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = nil

-- Weapon Visual Recoil
SWEP.UseVisualRecoil						= true
SWEP.PhysicalVisualRecoil 					= true

SWEP.VisualRecoilCenter 					= Vector(0, 5, -5)

SWEP.VisualRecoilMultHipFire 				= 1.0
SWEP.VisualRecoilMultSights 				= 1.0
SWEP.VisualRecoilMultCrouch 				= 1.0

SWEP.VisualRecoilUp 						= 0
SWEP.VisualRecoilRoll 						= 0
SWEP.VisualRecoilSide 						= 0.0

SWEP.VisualRecoilPunch 						= 0.1
SWEP.VisualRecoilPunchMultSights 			= 1.5



SWEP.VisualRecoilDampingConst 				= 5  -- spring
SWEP.VisualRecoilSpringPunchDamping 		= 5 -- wobbly 
SWEP.VisualRecoilSpringMagnitude 			= 2

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    if recamount > 1 then
		if self:GetInSights() == false then
			up = up + (recamount * 0.015)
			side = (self:GetRecoilSide() * 0.1)
		else
			side = (self:GetRecoilSide() * 0.015)
		end
    end
	
    return up, side, roll, punch
end

SWEP.SubtleVisualRecoil 					= 0.25 -- multiplier, set to something to enable this thing
SWEP.SubtleVisualRecoilDirection 			= 3 -- roll angle, 5 is to right, -5 to left, 0 is nothing etc
SWEP.SubtleVisualRecoilSpeed 				= 1 -- speed of it, be careful with this, 0.3 - 1.75

SWEP.RecoilKick 							= 3.15 * (GetConVar("arc9_scp5k_mult_recoilkick"):GetFloat())
SWEP.RecoilKickDamping 						= 35.0 -- Camera recoil damping


-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.01

SWEP.SpreadAddRecoil 			= 0.0
SWEP.SpreadMultSights			= 0.0
-- SWEP.SpreadMultCrouch 			= 0.0
-- SWEP.SpreadMultMove 			= 0.0
SWEP.SpreadMultMidAir 			= 5.0

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.Sway 						= 0.75
SWEP.SwayMove 					= 1
SWEP.SwayMidAir 				= 20
SWEP.SwayMultCrouch 			= 0.5
SWEP.SwayMultHipFire 			= 0.2
SWEP.SwayMultSights 			= 0.1

SWEP.BarrelLength 				= 35
if (GetConVar("arc9_scp5k_nearwall"):GetBool()) == true then SWEP.BarrelLength = 0 end

SWEP.TriggerDelay 				= true 
SWEP.TriggerDelayCancellable 	= false
SWEP.TriggerDelayTime 			= 0.02
SWEP.DryFireDelay 				= 0.1

SWEP.Speed 						= 0.95
SWEP.SpeedMultSights 			= 0.5
SWEP.SpeedMultShooting			= 0.95

SWEP.AimDownSightsTime 			= 0.3
SWEP.SprintToFireTime 			= 0.3

SWEP.FreeAimRadius 				= 2
SWEP.FreeAimRadiusSights 		= 0

-- Melee ----------------------------------------------------------------------------------------------
SWEP.Bash 				= true

SWEP.BashDamage 		= 30
SWEP.BashRange 			= 75
SWEP.PreBashTime 		= 0.13
SWEP.PostBashTime 		= 0.65
SWEP.BashDamageType 	= DMG_CLUB
SWEP.BashDecal 			= "ExplosiveGunshot"

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 80

SWEP.IronSights = {
    Pos = Vector(-3.115, -1.25, -0.7),
    Ang = Angle(0.18, 0.0, 0),
    Magnification = 1.025,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-2, -8, 3),
    Ang = Angle(0, 0, 45),
}

SWEP.ActivePos = Vector(-0.75, -0.3, -1.8) 
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.MovingPos =  Vector(-0, -0.25, -1.0)
SWEP.MovingAng =  Angle(0, -0, -5)
SWEP.MovingMidPoint = {
    Pos = Vector(0, -1, 1),
    Ang = Angle(0, 0, -15)
}

SWEP.CrouchPos = Vector(-0.0, -0.5, -0.5)
SWEP.CrouchAng = Angle(-2, -0, -15)

SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = false -- No sprintpos during reloads
SWEP.SprintPos = Vector(-0, -0, -4.5) 
SWEP.SprintAng = Angle(30, -0, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(-0, -0, -0)
}

SWEP.NearWallPos = Vector(0, -3, -3.0)
SWEP.NearWallAng = Angle(-0, 0, -15) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(12, 32, 4.5)
SWEP.CustomizeRotateAnchor = Vector(12, -3, -3)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= false
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 0.7

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(0, -0, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/scp5K/galil/w_galil_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 				 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false 
SWEP.ShellScale 				= 1.1
SWEP.ShellCorrectAng 			= Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_556.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

local ShellPath = "weapons/arc9/scp5K/casing/"
SWEP.ShellSounds = { ShellPath .. "BulletCasing_556_Concrete_00.ogg", ShellPath .. "BulletCasing_556_Concrete_01.ogg", ShellPath .. "BulletCasing_556_Concrete_02.ogg",
                     ShellPath .. "BulletCasing_556_Concrete_03.ogg", ShellPath .. "BulletCasing_556_Concrete_04.ogg", ShellPath .. "BulletCasing_556_Concrete_05.ogg",
					 ShellPath .. "BulletCasing_556_Concrete_06.ogg", ShellPath .. "BulletCasing_556_Concrete_07.ogg", ShellPath .. "BulletCasing_556_Concrete_08.ogg",
					 ShellPath .. "BulletCasing_556_Concrete_09.ogg", ShellPath .. "BulletCasing_556_Concrete_10.ogg", ShellPath .. "BulletCasing_556_Concrete_11.ogg",
					 ShellPath .. "BulletCasing_556_Concrete_12.ogg", ShellPath .. "BulletCasing_556_Concrete_13.ogg", ShellPath .. "BulletCasing_556_Concrete_14.ogg",
					 ShellPath .. "BulletCasing_556_Concrete_15.ogg", ShellPath .. "BulletCasing_556_Concrete_16.ogg",
					} 

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 
SWEP.AfterShotQCA 				= 2

SWEP.MuzzleParticle 			= { "muzzleflash_ar" } 
SWEP.AfterShotParticle 			= "barrel_smoke"

-------------------------- TRACERS
SWEP.TracerNum 					= 1 -- Tracer every X

-- Camera ------------------------------------------------------------------------------------------------
SWEP.CamQCA 					= 1 -- QC Attachment for camera movement.

SWEP.CamQCA_Mult 				= 1 -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS 			= nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView 				= false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.
SWEP.CamOffsetAng 				= Angle(-1, 0, 0)

SWEP.BobSprintMult 				= 0.35
SWEP.BobWalkMult 				= 0.75

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
	[1] = "Bullet_00",
	[2] = "Bullet_01",
	[3] = "Bullet_02",
	[3] = "Bullet_03",
	[4] = "Bullet_04",
	[5] = "Bullet_05",
	[6] = "Bullet_06",
}
SWEP.HideBones = {
	"Magazine_01",
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "5K_Galil.Fire" }
SWEP.ShootSoundSilenced       	= { "5K_Galil.FireSil" } 

SWEP.ShootSoundIndoor 			= { "5K.MK18TailIndoor" }  
SWEP.DistantShootSound 			= { "5K.MK18TailOutdoor" }  
SWEP.ShootSoundIndoorSilenced 	= { "5K.SilSMGIndoor" }  
SWEP.DistantShootSoundSilenced  = { "5K.SilRifleOutdoor" }  

SWEP.DryFireSound 				= { "5K.DryfireM4A1" }  
SWEP.FiremodeSound 				= "weapons/arc9/5K/blank.ogg"

SWEP.EnterSightsSound 			= { "5K.AimIn" }  
SWEP.ExitSightsSound 			= { "5K.AimOut" }   

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "0000000000"

SWEP.AttachmentElements = {
	["5K_galil_side_blank"] = { Bodygroups = { {4, 1} } },
	["5K_galil_bottom_blank"] = { Bodygroups = { {5, 1} } },
	["5K_galil_muzzle_blank"] = { Bodygroups = { {2, 1} } },
	["5K_galil_stock_blank"] = { Bodygroups = { {3, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "root",
		Bone = "root",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		InstalledElements = {"5K_galil_muzzle_blank"},
		Pos = Vector(-0, -19.5, 0.3),
        Ang = Angle(0, 90, 0),
		Scale = 1,
    },
	{
        PrintName = "Grip",
        Category = {"grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
		InstalledElements = {"5K_galil_bottom_blank"},
        Bone = "root",
        Pos = Vector(0.0, -10.3, -0.65),
        Ang = Angle(-0, 90, 180),
		Icon_Offset = Vector(0, 0, 3),
		Scale = 1,
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
		InstalledElements = {"5K_galil_side_blank"},
        Bone = "root",
		Pos = Vector(0.8, -10.3, 0.45),
        Ang = Angle(-180, -90, 90),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "root",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"5K_mk18_rear_down", "5K_mk18_front_down"},
		CorrectiveAng = Angle(0.0, 0.0, 0),
		Pos = Vector(-0.0, -4, 2.1),
        Ang = Angle(0, 90, -0),
    },
	-- {
        -- PrintName = "Magazine",
		-- Bone = "jnt_magazine1",
        -- Category = "stalker2_ak74_mag",
		-- Pos = Vector(0, -0, 0),
    -- },
	{
        PrintName = "Ammo",
        Bone = "Bullet_00",
        Category = "go_ammo",
		Pos = Vector(0, -0, 0),
    },
	{
        PrintName = "Stock",
		Bone = "root",
		InstalledElements = {"5K_galil_stock_blank"},
        Category = {"csgo_stock"},
		Pos = Vector(-0, 2, 0),
		Ang = Angle(-0, 90, -0),
		Icon_Offset = Vector(-6.5, 0, 0),
		Scale = 1.2
    },
	{
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
	{ 
        PrintName = "Charm",
        CosmeticOnly = true,
        Category = "charm",
        Bone = "root",
        Pos = Vector(-0.7, 3.0, 0.7),
		Ang = Angle(-0, 90, -0),
		Scale = 1.1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "root",
        Pos = Vector(-0.6, 2.3, 0.1),
		Ang = Angle(-0, 90, -0),
		Scale = 0.7,
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/scp5K/galil/sticker_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/scp5K/galil/sticker_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/scp5K/galil/sticker_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/scp5K/galil/sticker_4.mdl",
        Category = "stickers",
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = true
SWEP.ReloadInSights = true
SWEP.InstantSightIdle = false

SWEP.Animations = {
    ["idle"] = {
        Source = {"idle"},
    },
	["idle_empty"] = {
        Source = {"idle_empty"},
    },
    ------------------------------------------------ Sights
	["enter_sights"] = {
        Source = {"ads_enter"},
		Time = 3,
    },
	["idle_sights"] = {
        Source = {"idle"},
    },
	["exit_sights"] = {
        Source = {"ads_exit"},
		Time = 3,
    },
	["enter_sights_empty"] = {
        Source = {"ads_enter_empty"},
		Time = 3,
    },
	["idle_sights_empty"] = {
        Source = {"idle_empty"},
    },
	["exit_sights_empty"] = {
        Source = {"ads_exit_empty"},
		Time = 3,
    },
	--------------------------------------------------- Firemode
	["firemode_1"] = {
        Source = {"firemode_down"},
		EventTable = {
			{s = "5K.FiremodeRifle_Full", t = 1 / 30},
        },
    },
	["firemode_2"] = {
        Source = {"firemode_up"},
		EventTable = {
            {s = "5K.FiremodeRifle_SafeSemi", t = 1 / 30},
        },
    },
	["firemode_1_empty"] = {
        Source = {"firemode_down_empty"},
		EventTable = {
			{s = "5K.FiremodeRifle_Full", t = 1 / 30},
        },
    },
	["firemode_2_empty"] = {
        Source = {"firemode_up_empty"},
		EventTable = {
            {s = "5K.FiremodeRifle_SafeSemi", t = 1 / 30},
        },
    },
    --------------------------------------------------- Fire
	["bash"] = {
        Source = {"melee"},
    },
	["bash_empty"] = {
        Source = {"melee_empty"},
    },
	["fire"] = {
        Source = {"fire"},
    },
	["fire_empty"] = {
        Source = {"fire_empty"},
    },
	["dryfire"] = {
        Source = {"dryfire"},
    },
    --------------------------------------------------- Draw & Holster
	["draw"] = {
        Source = {"draw"},
		MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "5K.Draw", t = 1 / 30},
			{s = "5K.DrawRifle", t = 1 / 30},
        },
    },
	["holster"] = {
        Source = {"holster"},
		MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "5K.Holster", t = 1 / 30},
			{s = "5K.HolsterRifle", t = 1 / 30},
        },
    },
	["draw_empty"] = {
        Source = {"draw_empty"},
		EventTable = {
            {s = "5K.Draw", t = 1 / 30},
			{s = "5K.DrawRifle", t = 1 / 30},
        },
    },
	["holster_empty"] = {
        Source = {"holster_empty"},
		EventTable = {
            {s = "5K.Holster", t = 1 / 30},
			{s = "5K.HolsterRifle", t = 1 / 30},
        },
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.62,
		IKTimeLine = {
			{
                t = 0.0,
                lhik = 1,
            },
			{
                t = 0.2,
                lhik = 0,
            },
			{
                t = 0.7,
                lhik = 0,
            },
            {
                t = 0.95,
                lhik = 1,
            },
        },
		EventTable = {	
			{s = "5K_Galil.MagOut", t = 0 / 30},
			{s = "5K_Galil.MagPouchDown", t = 5 / 30},
			{s = "5K_Galil.MagIn", t = 41 / 30},
			{s = "5K_Galil.MagPouchUp", t = 57 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.77,
		MagSwapTime = 2.5,
		IKTimeLine = {
			{
                t = 0.0,
                lhik = 1,
            },
			{
                t = 0.2,
                lhik = 0,
            },
			{
                t = 0.7,
                lhik = 0,
            },
            {
                t = 0.9,
                lhik = 1,
            },
        },
		EventTable = {
			{s = "5K_Galil.MagOutEmpty", t = 0 / 30},
			{s = "5K_Galil.MagPouchDown", t = 12 / 30},
			{s = "5K_Galil.MagInEmpty", t = 25 / 30},
			{s = "5K_Galil.Bolt", t = 57 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["inspect"] = {
        Source = {"inspect"},
        MinProgress = 0.93,
        FireASAP = true,
		IKTimeLine = {
			{
                t = 0.0,
                lhik = 1,
            },
			{
                t = 0.1,
                lhik = 0,
            },
			{
                t = 0.83,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 0
            },
        },
		EventTable = {
            {s = "5K_Galil.InspectRotate", t = 0 / 30},
			{s = "5K_Galil.InspectBoltBack", t = 69 / 30},
			{s = "5K_Galil.InspectBoltForward", t = 93 / 30},
			{s = "5K_Galil.InspectHit", t = 113 / 30},
        },
    },
	["magcheck"] = {
        Source = {"magcheck"},
        MinProgress = 0.93,
        FireASAP = true,
		IKTimeLine = {
			{
                t = 0.0,
                lhik = 1,
            },
			{
                t = 0.1,
                lhik = 0,
            },
			{
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 0
            },
        },
		EventTable = {
            {s = "5K_Galil.MagCheckOut", t = 0 / 30},
			{s = "5K_Galil.MagCheckIn", t = 57 / 30},
        },
    },
	["magcheck_empty"] = {
        Source = {"magcheck_empty"},
        MinProgress = 0.93,
        FireASAP = true,
		IKTimeLine = {
			{
                t = 0.0,
                lhik = 1,
            },
			{
                t = 0.1,
                lhik = 0,
            },
			{
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 0
            },
        },
		EventTable = {
            {s = "5K_Galil.MagCheckOut", t = 0 / 30},
			{s = "5K_Galil.MagCheckIn", t = 57 / 30},
        },
    },
	--------------------------------------------------- Movement
	["idle_sprint"] = {
        Source = {"sprint"},
    },
	["idle_walk"] = {
        Source = {"walk"},
    },
	["idle_sprint_empty"] = {
        Source = {"sprint_empty"},
    },
	["idle_walk_empty"] = {
        Source = {"walk_empty"},
    },
}

SWEP.Hook_Deploy = function(self)
return end

SWEP.Hook_Think = function(self)
	local owner = self:GetOwner() 
end

SWEP.Hook_BlockHasAnimation = function(self, anim)
	if self:Clip1() == 0 and not self.EmptyTime then
        self.EmptyTime = CurTime() + 1
    elseif self:Clip1() > 0 then
        self.EmptyTime = nil
    end
	
	if anim == "dryfire" then
        if self.EmptyTime and CurTime() < self.EmptyTime then
            return false
        end
    end
return end

SWEP.Hook_TranslateAnimation = function (self, anim)
	if self:Clip1() < self:GetMaxClip1() then
	    if anim == "inspect" then
			if self:Clip1() >= 1 then
				return "magcheck"
			else
				return "magcheck_empty"
			end
		end
	end
end	

SWEP.CustomPoseParamsHandler = function (self, ent, iswm)
	local owner = self:GetOwner()
    local vm = owner:GetViewModel()
	local seq = vm:GetSequenceName(vm:GetSequence()) 
	
	if !IsValid(owner) or !IsValid(vm) then return end
	
	vm:SetPoseParameter("blend_sprint_1", 1)
	vm:SetPoseParameter("blend_jiggle_1", 1)
	vm:SetPoseParameter("blend_ads_enter_1", 0.0)
	vm:SetPoseParameter("blend_ads_exit_1", 0.0)
	
	----------- Fire Selector -------------------------------------------
	if (GetConVar("arc9_scp5k_automaticdefault"):GetBool()) == true then
		vm:SetPoseParameter("firemode_1", self:GetFiremode() == 1 and 2 or 0)
	else
		vm:SetPoseParameter("firemode_1", self:GetFiremode() == 2 and 1 or 0)
	end
	---------------------------------------------------------------------
	
	----------- Recoil & Idle --------------------------------------------------------------------------------------
	local inSights = self:GetInSights()
	local clipEmpty = self:Clip1() == 0
	local ParamRecoil = 1
	local ParamRecoilADS = 0.45
	local ParamEmpty = 0.07
	local ParamIdle = 1
	local ParamIdleADS = 0.2

	if seq == "dryfire" then
		vm:SetPoseParameter("blend_recoil", (ParamEmpty))
	else
		vm:SetPoseParameter("blend_recoil", (inSights and ParamRecoilADS or ParamRecoil))
	end
	
	vm:SetPoseParameter("blend_idle_1", (inSights and ParamIdleADS) or (ParamIdle))
	----------- Walk & Reload Params -------------------------------------------------------------------------------
	if not self.blend_walk then
		self.blend_walk = 0
		self.blend_sprint = 0
		self.blend_basepose_reload = 0
		self.blend_basepose_reload_empty = 0
	end
	
	local speedWalk = 1.5
	if owner:KeyDown(IN_FORWARD) or owner:KeyDown(IN_MOVELEFT) or owner:KeyDown(IN_MOVERIGHT) or owner:KeyDown(IN_BACK) then
		if self:GetInSights() == true then
			self.blend_walk = math.Approach(self.blend_walk, 0.15, speedWalk * FrameTime())
		else
			self.blend_walk = math.Approach(self.blend_walk, 1, speedWalk * FrameTime())
		end
    else
        self.blend_walk = math.Approach(self.blend_walk, 0.0, speedWalk * FrameTime())
    end
	
	vm:SetPoseParameter("blend_move_1", self.blend_walk)
	
	
	local speedReload = 3
	if inSights then
		self.blend_basepose_reload = math.Approach(self.blend_basepose_reload, 0.98, speedReload * FrameTime())
		self.blend_basepose_reload_empty = math.Approach(self.blend_basepose_reload_empty, 0.98, speedReload * FrameTime())
    else
        self.blend_basepose_reload = math.Approach(self.blend_basepose_reload, 0.0, speedReload * FrameTime())
		self.blend_basepose_reload_empty = math.Approach(self.blend_basepose_reload_empty, 0.0, speedReload * FrameTime())
    end
	
	vm:SetPoseParameter("blend_basepose_reload", self.blend_basepose_reload)
	vm:SetPoseParameter("blend_basepose_reload_empty", self.blend_basepose_reload_empty)
	----------------------------------------------------------------------------------------------------------------
end