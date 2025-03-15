AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/arc9_scp5k_lynx")

SWEP.Category = "ARC9 - SCP: 5K"
SWEP.SubCategory = "Sniper Rifles"

SWEP.AdminOnly = false
SWEP.PrintName = "GM6 Lynx"
SWEP.TrueName = "Gepard GM6 Lynx"

SWEP.Slot = 3

SWEP.Class = "Anti-Materiel Rifle"
SWEP.Trivia = {
    Caliber = ".50 BMG",
	Weight = "17.5kg (39lb)",
	Origin = "Hungarian People's Republic",
	Manufacturer = "Sero International Kft.",
	Year = "1990",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "SCP: 5K | Affray Interactive", 
}
SWEP.Description = [[]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/scp5K/lynx/v_lynx.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_snip_awp.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-8, 4, -6), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-5, 5, -5), -- arc9_tpik 1, you can make cool poses with it
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
local BaseDamageVal             = 400
SWEP.DamageMax 					= BaseDamageVal * (GetConVar("arc9_scp5k_mult_dmg"):GetFloat())
SWEP.DamageMin 					= SWEP.DamageMax / 1.5

SWEP.RangeMin 			 		= (700 / 0.0254) / 4
SWEP.RangeMax			 		= (2500 / 0.0254) / 6

SWEP.Num 						= 1
SWEP.DamageType			 		= DMG_BULLET

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.8,
    [HITGROUP_RIGHTLEG] = 0.8,
}

-- Phy Bullets
SWEP.PhysBulletMuzzleVelocity 	= 790 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/ 100000

-- Penetration
SWEP.ImpactForce		 		= 5
SWEP.ArmorPiercing		 		= 0.95
SWEP.Penetration                = (SWEP.PhysBulletMuzzleVelocity * SWEP.ArmorPiercing * BaseDamageVal) / 100000

-- Firing
SWEP.RPM = 166
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{ Mode = 1 },
}

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "SniperRound" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 5
SWEP.SupplyLimit    = 6

SWEP.AmmoPerShot    = 1 

-- Recoil ---------------------------------------------------------------------------------------------
-- SWEP.RecoilSeed 				= 425
-- SWEP.RecoilPatternDrift 		= 22

SWEP.Recoil 					= 0.2 * (GetConVar("arc9_scp5k_mult_recoil"):GetFloat())
SWEP.RecoilMultSights 			= 0.5 * (GetConVar("arc9_scp5k_mult_recoilads"):GetFloat())

SWEP.RecoilUp 					= 30
SWEP.RecoilSide 				= 3

SWEP.RecoilRandomUp 			= 5
SWEP.RecoilRandomSide 			= SWEP.RecoilSide

SWEP.RecoilDissipationRate 		= 60
SWEP.RecoilResetTime 			= 0.01
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
SWEP.VisualRecoilSide 						= 0.05

SWEP.VisualRecoilPunch 						= 0.5
SWEP.VisualRecoilPunchMultSights 			= 15

SWEP.RecoilKick 							= 5 * (GetConVar("arc9_scp5k_mult_recoilkick"):GetFloat())
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
SWEP.Spread 					= 0.01

SWEP.SpreadAddRecoil 			= 0.02
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

SWEP.BarrelLength 				= 43
if (GetConVar("arc9_scp5k_nearwall"):GetBool()) == true then SWEP.BarrelLength = 0 end

SWEP.TriggerDelay 				= true 
SWEP.TriggerDelayCancellable 	= false
SWEP.TriggerDelayTime 			= 0.02
SWEP.DryFireDelay 				= 0.1

SWEP.ManualAction 				= false
SWEP.ManualActionNoLastCycle 	= false

SWEP.Speed 						= 0.9
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
    Pos = Vector(-3.0025, -2.1, -1.05),
    Ang = Angle(0.15, 0.0, 0),
    Magnification = 1.2,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-2, -8, 3),
    Ang = Angle(0, 0, 45),
}

SWEP.ActivePos = Vector(-0.5, 0.5, -1.8) 
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
SWEP.SprintPos = Vector(-0, -1, -5.5) 
SWEP.SprintAng = Angle(30, -0, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(-0, -0, -0)
}

SWEP.NearWallPos = Vector(0, -3, -3.0)
SWEP.NearWallAng = Angle(-0, 0, -15) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(15, 35, 4.5)
SWEP.CustomizeRotateAnchor = Vector(14, -3, -3)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= false
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.55

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(0, -30, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/scp5k/lynx/w_lynx_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 				 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false 
SWEP.ShellScale 				= 2.4
SWEP.ShellCorrectAng 			= Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_762nato.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

local ShellPath = "weapons/arc9/scp5K/casing/"
SWEP.ShellSounds = { ShellPath .. "BulletCasing_.50_Concrete_00.ogg", ShellPath .. "BulletCasing_.50_Concrete_01.ogg", ShellPath .. "BulletCasing_.50_Concrete_02.ogg",
                     ShellPath .. "BulletCasing_.50_Concrete_03.ogg", ShellPath .. "BulletCasing_.50_Concrete_04.ogg", ShellPath .. "BulletCasing_.50_Concrete_05.ogg",
					 ShellPath .. "BulletCasing_.50_Concrete_00.ogg", ShellPath .. "BulletCasing_.50_Concrete_01.ogg", ShellPath .. "BulletCasing_.50_Concrete_02.ogg",
                     ShellPath .. "BulletCasing_.50_Concrete_03.ogg", ShellPath .. "BulletCasing_.50_Concrete_04.ogg", ShellPath .. "BulletCasing_.50_Concrete_05.ogg",
					} 

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 
SWEP.AfterShotQCA 				= 2

SWEP.MuzzleParticle 			= { "muzzleflash_M82" } 
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
	[4] = "Bullet_03",
	[5] = "Bullet_04",
}
SWEP.HideBones = {
	"Magazine_01",
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "5K_Lynx.Fire" }
SWEP.ShootSoundSilenced       	= { "5K_Lynx.FireSil" } 

SWEP.ShootSoundIndoor 			= { "5K.M24TailIndoor" }  
SWEP.DistantShootSound 			= { "5K.M24TailOutdoor" }  
SWEP.ShootSoundIndoorSilenced 	= { "5K.SilSMGIndoor" }  
SWEP.DistantShootSoundSilenced  = { "5K.SilRifleOutdoor" }  

SWEP.DryFireSound 				= { "5K.DryfireM4A1" }  
SWEP.FiremodeSound 				= "weapons/arc9/5K/blank.ogg"

SWEP.EnterSightsSound 			= { "5K.AimIn" }  
SWEP.ExitSightsSound 			= { "5K.AimOut" }   

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "00000000"

SWEP.AttachmentElements = {
	["5K_lynx_muzzle_blank"] = { Bodygroups = { {2, 1} } },
	["5K_lynx_rear_down"] = { Bodygroups = { {3, 1} } },
	["5K_lynx_front_down"] = { Bodygroups = { {4, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "MuzzleDevice",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		InstalledElements = {"5K_lynx_muzzle_blank"},
		Pos = Vector(-0, 1.4, -0),
        Ang = Angle(-0, 90, -0),
		Scale = 1,
    },
	{
        PrintName = "Grip",
        Category = {"grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
        Bone = "root",
		InstalledElements = {"5K_m24_rail"},
        Pos = Vector(0.0, 0.82, -8.1),
        Ang = Angle(-90, 0, 90),
		Icon_Offset = Vector(0, 0, 2.5),
		Scale = 1,
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
		InstalledElements = {"5K_mk18_handguard_blank"},
        Bone = "root",
		Pos = Vector(-1.9, -0.67, -8.2),
        Ang = Angle(-90, -0, -0),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "root",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"5K_lynx_rear_down", "5K_lynx_front_down"},
		CorrectiveAng = Angle(0.0, -0.0, 0),
		Pos = Vector(-0, -3.0, -2.5),
        Ang = Angle(-90, 0, -90),
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
		Pos = Vector(0, -0, -1),
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
        Pos = Vector(-0.5, -3.1, 3.75),
		Ang = Angle(-90, 0, -90),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "root",
        Pos = Vector(-1.65, 0.1, 4.7),
		Ang = Angle(-90, 0, -90),
		Scale = 1,
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/scp5k/lynx/sticker_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/scp5k/lynx/sticker_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/scp5k/lynx/sticker_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/scp5k/lynx/sticker_4.mdl",
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
	--------------------------------------------------- Firemode
    --------------------------------------------------- Fire
	["bash"] = {
        Source = {"melee"},
    },
	["fire"] = {
        Source = {"fire"},
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
		EventTable = {
            {s = "5K.Holster", t = 1 / 30},
			{s = "5K.HolsterRifle", t = 1 / 30},
        },
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.75,
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
            },
            {
                t = 0.9,
                lhik = 1,
            },
        },
		EventTable = {
			{s = "5K_Lynx.MagOut", t = 0 / 30},
			{s = "5K_Lynx.MagPouch", t = 30 / 30},
			{s = "5K_Lynx.MagIn", t = 89 / 30},
			{s = "5K_Lynx.MagEnd", t = 155 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.83,
		MagSwapTime = 2.5,
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
                t = 0.6,
                lhik = 0,
            },
            {
                t = 0.71,
                lhik = 1,
            },
        },
		EventTable = {
			{s = "5K_Lynx.MagOutEmpty", t = 1 / 30},
			{s = "5K_Lynx.MagPouchEmpty", t = 30 / 30},
			{s = "5K_Lynx.MagInEmpty", t = 85 / 30},
			{s = "5K_Lynx.Bolt", t = 130 / 30},
			{s = "5K_Lynx.MagEmptyEnd", t = 163 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["inspect"] = {
        Source = {"inspect"},
        MinProgress = 0.93,
        FireASAP = true,
		EventTable = {
            {s = "5K_Lynx.InspectRotate", t = 0 / 30},
			{s = "5K_Lynx.InspectBoltBack", t = 70 / 30},
			{s = "5K_Lynx.InspectBoltForward", t = 128 / 30},
			{s = "5K_Lynx.InspectEnd", t = 145 / 30},
        },
		IKTimeLine = {
			{
                t = 0.0,
                lhik = 1,
            },
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
                t = 0.7,
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
            {s = "5K_Lynx.MagCheckOut", t = 1 / 30},
			{s = "5K_Lynx.MagCheckIn", t = 93 / 30},
			{s = "5K_Lynx.MagCheckEnd", t = 133 / 30},
        },
    },
	--------------------------------------------------- Movement
	["idle_sprint"] = {
        Source = {"sprint"},
    },
	["idle_walk"] = {
        Source = {"walk"},
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
				return "magcheck"
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
	---------------------------------------------------------------------
	
	----------- Recoil & Idle --------------------------------------------------------------------------------------
	local inSights = self:GetInSights()
	local clipEmpty = self:Clip1() == 0
	local ParamRecoil = 1
	local ParamRecoilADS = 0.4
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