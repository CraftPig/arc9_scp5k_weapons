AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/arc9_scp5k_mk18")

SWEP.Category = "ARC9 - SCP: 5K"
SWEP.SubCategory = "Assault Rifles"

SWEP.AdminOnly = false
SWEP.PrintName = "MK17"
SWEP.TrueName = "FN SCAR-H STD"

SWEP.Slot = 2

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Caliber = "7.62x51mm",
	Weight = "3.59kg (7.91 lbs)",
	Origin = "Belgium",
	Manufacturer = "FN Herstal",
	Year = "2004",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "SCP: 5K | Affray Interactive", 
}
SWEP.Description = [[]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/5K/mk17/v_mk17.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-4, 4, -6), -- non tpik (while on ground, on npc etc)
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

-- Damage ---------------------------------------------------------------------------------------------
SWEP.DamageMax 					= 60  * (GetConVar("arc9_scp5k_mult_dmg"):GetFloat())
SWEP.DamageMin 					= SWEP.DamageMax / 2 

SWEP.RangeMin 			 		= 300 / 0.0254
SWEP.RangeMax			 		= 500 / 0.0254

SWEP.ImpactForce		 		= 1 
SWEP.ArmorPiercing		 		= 0.4
SWEP.Penetration		 		= 400/1000/0.0254 -- mass

SWEP.Num 						= 1
SWEP.DamageType			 		= DMG_BULLET

SWEP.PhysBulletMuzzleVelocity 	= 870 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/ 100000

SWEP.RPM = 600
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{ Mode = 1 },
    { Mode = -1 },
}

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.7,
    [HITGROUP_RIGHTARM] = 0.7,
    [HITGROUP_LEFTLEG] = 0.7,
    [HITGROUP_RIGHTLEG] = 0.7,
}

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "ar2" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 20
SWEP.SupplyLimit    = 7

SWEP.AmmoPerShot    = 1 

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed 				= 14
SWEP.RecoilPatternDrift 		= 50

SWEP.Recoil 					= 0.45 * (GetConVar("arc9_scp5k_mult_recoil"):GetFloat())
SWEP.RecoilMultSights 			= 0.33

SWEP.RecoilUp 					= 8
SWEP.RecoilSide 				= 4

SWEP.RecoilRandomUp 			= 1
SWEP.RecoilRandomSide 			= 0.1

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
SWEP.VisualRecoilMultSights 				= 0.005
SWEP.VisualRecoilMultCrouch 				= 0.0

SWEP.VisualRecoilRoll 						= 10
SWEP.VisualRecoilSide 						= 0.1

SWEP.VisualRecoilPunch 						= 0.5
SWEP.VisualRecoilPunchMultSights 			= 15

SWEP.RecoilKick 							= 3.25 -- Camera recoil
SWEP.RecoilKickDamping 						= 35.0 -- Camera recoil damping

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    if recamount > 1 then
		if self:GetInSights() == false then
			up = up + (recamount * 0.1)
		end
    end
	
    return up, side, roll, punch
end

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.015

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

SWEP.BarrelLength 				= 41

SWEP.TriggerDelay 				= true 
SWEP.TriggerDelayCancellable 	= false
SWEP.TriggerDelayTime 			= 0.02

SWEP.Speed 						= 0.95
SWEP.SpeedMultSights 			= 0.5
SWEP.SpeedMultShooting			= 0.95

SWEP.AimDownSightsTime 			= 0.35
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
    Pos = Vector(-3.25, -1.8, -0.96),
    Ang = Angle(0.1, 0.0, 0),
    Magnification = 1.025,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-2, -8, 3),
    Ang = Angle(0, 0, 45),
}

SWEP.ActivePos = Vector(-1.0, 1.0, -1.3) 
SWEP.ActiveAng = Angle(0, 0, -1)

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

SWEP.NearWallPos = Vector(0, -0, -10.0)
SWEP.NearWallAng = Angle(-5, 50, 10) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(12, 35, 4.5)
SWEP.CustomizeRotateAnchor = Vector(10, -3, -3)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= false
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 0.45

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(0, -0, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/5K/mk18/w_mk18_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 				 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false 
SWEP.ShellScale 				= 0.8
SWEP.ShellCorrectAng 			= Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_762nato.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 
SWEP.AfterShotQCA 				= 2

SWEP.MuzzleParticle 			= { "muzzleflash_dmr" } 
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
}
SWEP.HideBones = {
	"Magazine_01",
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "5K_MK17.Fire" }
SWEP.ShootSoundSilenced       	= { "5K_MK17.FireSil" } 

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

SWEP.DefaultBodygroups = "0000000"

SWEP.AttachmentElements = {
	["5K_mk17_muzzle_blank"] = { Bodygroups = { {2, 1} } },
	["5K_mk17_rear_down"] = { Bodygroups = { {4, 1} } },
	["5K_mk17_front_down"] = { Bodygroups = { {3, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "root",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		InstalledElements = {"5K_mk17_muzzle_blank"},
		Pos = Vector(-0, -19, 1.12),
        Ang = Angle(0, 90, -0),
		Scale = 1,
    },
	{
        PrintName = "Grip",
        Category = {"grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
        Bone = "root",
        Pos = Vector(0.0, -9.6, 0),
        Ang = Angle(-0, 90, 180),
		Icon_Offset = Vector(0, 0, 2.5),
		Scale = 1,
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
        Bone = "root",
		Pos = Vector(1.0, -11.3, 1.18),
        Ang = Angle(-180, -90, 90),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "root",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"5K_mk17_rear_down", "5K_mk17_front_down"},
		CorrectiveAng = Angle(0.0, 0.0, 0),
		Pos = Vector(-0, -4, 3),
        Ang = Angle(0, 90, -0),
    },
	{
        PrintName = "Ammo",
        Bone = "Bullet_00",
        Category = "go_ammo",
		Pos = Vector(0, -0, 0),
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
        Pos = Vector(-0.8, 2.93, 1.5),
		Ang = Angle(-0, 90, -0),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "root",
        Pos = Vector(-0.8, -3.5, 1.1),
		Ang = Angle(-0, 90, -0),
		Scale = 1,
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/5K/mk18/sticker_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/5K/mk18/sticker_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/5K/mk18/sticker_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/5K/mk18/sticker_4.mdl",
        Category = "stickers",
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = true
SWEP.ReloadInSights = false
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
        Source = {"fire_empty"},
		MinProgress = 0.033,
        FireASAP = true,
    },
    --------------------------------------------------- Draw & Holster
	["draw"] = {
        Source = {"draw"},
		EventTable = {
            {s = "5K.Draw", t = 1 / 30},
			{s = "5K_MK17.Draw", t = 1 / 30},
        },
    },
	["holster"] = {
        Source = {"holster"},
		EventTable = {
            {s = "5K.Holster", t = 1 / 30},
			{s = "5K.HolsterRifle", t = 1 / 30},
        },
    },
	["draw_empty"] = {
        Source = {"draw_empty"},
		EventTable = {
            {s = "5K.Draw", t = 1 / 30},
			{s = "5K_MK17.Draw", t = 1 / 30},
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
        MinProgress = 0.58,
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
			{s = "5K_MK17.MagPouchDown", t = 5 / 30},
			{s = "5K_MK17.MagOut", t = 0 / 30},
			{s = "5K_MK17.MagIn", t = 41 / 30},
			{s = "5K_MK17.MagPouchUp", t = 55 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.8,
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
			{s = "5K_MK17.MagOutEmpty", t = 0 / 30},
			{s = "5K_MK17.MagPouchDown", t = 8 / 30},
			{s = "5K_MK17.MagInEmpty", t = 42 / 30},
			{s = "5K_MK17.Bolt", t = 75 / 30},
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
            {s = "5K_MK17.InspectRotate", t = 0 / 30},
			{s = "5K_MK17.InspectBoltBack", t = 63 / 30},
			{s = "5K_MK17.InspectBoltForward", t = 89 / 30},
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
            {s = "5K_MK17.MagCheckOut", t = 0 / 30},
			{s = "5K_MK17.MagCheckIn", t = 57 / 30},
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
            {s = "5K_MK17.MagCheckOut", t = 0 / 30},
			{s = "5K_MK17.MagCheckIn", t = 57 / 30},
        },
    },
	--------------------------------------------------- Movement
	["jump"] = {
        Source = {"jiggle"},
		Time = 1,
		MinProgress = 0.033,
        FireASAP = true,
		InstantIdle = true,
    },
	["jump_empty"] = {
        Source = {"jiggle_empty"},
		Time = 1,
		MinProgress = 0.033,
        FireASAP = true,
		InstantIdle = true,
    },
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
	self.MidAir = 0
return end

SWEP.Hook_Think = function(self)
	local owner = self:GetOwner() 
	local jumpAnim = self:Clip1() == 0 and "jump_empty" or "jump"

	if self:GetNextPrimaryFire() >= CurTime() then return end
	if !self:CanReload() then return end
	if self:GetInSights() == true then return end
	if self:GetUBGL() == true then return end
	
	if (owner:KeyPressed(IN_JUMP)) and self.MidAir == 0 then
		self.MidAir = 1
		self:PlayAnimation(jumpAnim, 1, true)
	end
	if not owner:OnGround() then
		self.MidAir = 1
	end
	if self.MidAir == 1 and owner:OnGround() then -- Jump End
		self.MidAir = 0
		self:PlayAnimation(jumpAnim, 1, true)
	end
end

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
	
	vm:SetPoseParameter("blend_sprint_1", 1)
	vm:SetPoseParameter("blend_jiggle_1", 1)
	vm:SetPoseParameter("blend_ads_enter_1", 0.0)
	vm:SetPoseParameter("blend_ads_exit_1", 0.0)
	
	----------- Fire Selector -------------------------------------------
	vm:SetPoseParameter("firemode_1", self:GetFiremode() == 2 and 1 or 0)
	---------------------------------------------------------------------
	
	----------- Recoil & Idle --------------------------------------------------------------------------------------
	local inSights = self:GetInSights()
	local clipEmpty = self:Clip1() == 0
	local ParamRecoil = 1
	local ParamRecoilADS = 0.15
	local ParamEmpty = 0.05
	local ParamIdle = 1
	local ParamIdleADS = 0.1

	vm:SetPoseParameter("blend_recoil", (clipEmpty and ParamEmpty) or (inSights and ParamRecoilADS or ParamRecoil))
	vm:SetPoseParameter("blend_idle_1", (inSights and ParamIdleADS) or (ParamIdle))
	----------------------------------------------------------------------------------------------------------------
	
	----------- Walk Params ----------------------------------------------------------------------------------------
	if not self.blend_walk then
		self.blend_walk = 0
		self.blend_sprint = 0
	end
	
	local speed = 1.5
	if owner:KeyDown(IN_FORWARD) then
		if self:GetInSights() == true then
			self.blend_walk = math.Approach(self.blend_walk, 0.15, speed * FrameTime())
		else
			self.blend_walk = math.Approach(self.blend_walk, 1, speed * FrameTime())
		end
    else
        self.blend_walk = math.Approach(self.blend_walk, 0.0, speed * FrameTime())
    end
	
	vm:SetPoseParameter("blend_move_1", self.blend_walk)
	----------------------------------------------------------------------------------------------------------------
end