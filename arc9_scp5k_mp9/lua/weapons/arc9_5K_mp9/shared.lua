AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_ak74")

SWEP.Category = "ARC9 - SCP: 5K"
SWEP.SubCategory = "SMGs"

SWEP.AdminOnly = false
SWEP.PrintName = "MP9"
SWEP.TrueName = "Brügger & Thomet MP9-N"

SWEP.Slot = 2

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    Caliber = "9x19mm",
	Weight = "1.4kg (3.1 lbs)",
	Origin = "Switzerland",
	Manufacturer = "Brügger & Thomet",
	Year = "2001",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "SCP: 5K | Affray Interactive", 
}
SWEP.Description = [[]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/5K/mp9/v_mp9.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-7, 4, -4), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-15, 2, -1), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -0, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK			 = false
SWEP.TPIKnolefthand	 = false
SWEP.NoTPIKVMPos	 = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType                = "revolver"
SWEP.HoldTypeSprint          = "revolver"
SWEP.HoldTypeHolstered       = nil
SWEP.HoldTypeSights       	 = "revolver"
SWEP.HoldTypeCustomize 		 = "slam"
SWEP.HoldTypeBlindfire		 = "revolver"
SWEP.HoldTypeNPC 			 = "revolver"

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
SWEP.DamageMax 					= 31 
SWEP.DamageMin 					= SWEP.DamageMax / 2 

SWEP.RangeMin 			 		= 70 / 0.0254 
SWEP.RangeMax			 		= SWEP.RangeMin * 2

SWEP.ImpactForce		 		= 1 
SWEP.ArmorPiercing		 		= 0.3
SWEP.Penetration		 		= 415/1000/0.0254

SWEP.Num 						= 1
SWEP.DamageType			 		= DMG_BULLET

SWEP.PhysBulletMuzzleVelocity 	= 400 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/ 100000

SWEP.RPM = 895
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
SWEP.Ammo 			= "smg1" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 40
SWEP.SupplyLimit    = 6

SWEP.AmmoPerShot    = 1 

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed 				= 114
SWEP.RecoilPatternDrift 		= 36

SWEP.Recoil 					= 0.4
SWEP.RecoilMultSights 			= 0.33

SWEP.RecoilUp 					= -3
SWEP.RecoilSide 				= 4.5

SWEP.RecoilRandomUp 			= 8
SWEP.RecoilRandomSide 			= 0.1

SWEP.RecoilDissipationRate 		= 40
SWEP.RecoilResetTime 			= 0.1
SWEP.RecoilFullResetTime 		= 0.3

SWEP.RecoilAutoControl 			= 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = nil

-- Weapon Visual Recoil
SWEP.UseVisualRecoil						= true
SWEP.PhysicalVisualRecoil 					= false

SWEP.VisualRecoilCenter 					= Vector(0, 5, -5)

SWEP.VisualRecoilMultHipFire 				= 1.0
SWEP.VisualRecoilMultSights 				= 0.005
SWEP.VisualRecoilMultCrouch 				= 0.0

SWEP.VisualRecoilRoll 						= 10

SWEP.VisualRecoilPunch 						= 1
SWEP.VisualRecoilPunchMultSights 			= 10

SWEP.RecoilKick 							= 1.0 -- Camera recoil
SWEP.RecoilKickDamping 						= 30.0 -- Camera recoil damping

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    if recamount > 1 then
		if self:GetInSights() == false then
			up = up + (recamount * 0.1)
		end
    end
	
    return up, side, roll, punch
end

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.02

SWEP.SpreadAddRecoil 			= 0.005 -- Applied per unit of recoil.
SWEP.SpreadMultSights			= 0.0
SWEP.SpreadMultCrouch 			= 0.5
SWEP.SpreadMultMove 			= 2.0
SWEP.SpreadMultMidAir 			= 5.0

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.Sway = 1
SWEP.SwayMove = 1.25
SWEP.SwayMidAir = 20
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.1

SWEP.BarrelLength = 20

SWEP.TriggerDelay 				= true 
SWEP.TriggerDelayCancellable 	= false
SWEP.TriggerDelayTime 			= 0.02

SWEP.Speed 						= 1
SWEP.SpeedMultSights 			= 0.5
SWEP.SpeedMultShooting			= 0.95

SWEP.AimDownSightsTime 			= 0.35
SWEP.SprintToFireTime 			= 0.3

SWEP.FreeAimRadius 				= 2
SWEP.FreeAimRadiusSights 		= 0

-- Melee ----------------------------------------------------------------------------------------------
SWEP.Bash 				= true

SWEP.BashDamage 		= 45
SWEP.BashRange 			= 75
SWEP.PreBashTime 		= 0.13
SWEP.PostBashTime 		= 0.5
SWEP.BashDamageType 	= DMG_CLUB
SWEP.BashDecal 			= "ExplosiveGunshot"

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 75

SWEP.IronSights = {
    Pos = Vector(-2.43, -1, -0.015),
    Ang = Angle(0.23, 0.3, 0),
    Magnification = 1.025,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-2, -8, 3),
    Ang = Angle(0, 0, 45),
}

SWEP.ActivePos = Vector(-0.0, 1.5, -1.0) 
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos =  Vector(-0, -1.5, -1)
SWEP.MovingAng =  Angle(0, -0, -5)
SWEP.MovingMidPoint = {
    Pos = Vector(0, -1, 1),
    Ang = Angle(0, 0, -15)
}

SWEP.CrouchPos = Vector(-0.0, -0.5, -0.5)
SWEP.CrouchAng = Angle(-2, -0, -15)

SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = false -- No sprintpos during reloads
SWEP.SprintPos = Vector(2, 2, -2.5) 
SWEP.SprintAng = Angle(40, -0, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(-0, -0, -0)
}

SWEP.NearWallPos = Vector(0, -0, -10.0)
SWEP.NearWallAng = Angle(-5, 50, 10) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(10, 27, 4.5)
SWEP.CustomizeRotateAnchor = Vector(10, -3, -3)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= false
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.4

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(0, -0, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/5K/mp9/w_mp9_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 				 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false 
SWEP.ShellCorrectAng = Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_9mm.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 
SWEP.AfterShotQCA 				= 2

SWEP.MuzzleParticle 			= { "muzzleflash_ak47" } 
SWEP.AfterShotParticle 			= "barrel_smoke"

-------------------------- TRACERS
SWEP.TracerNum 					= 1 -- Tracer every X

-- Camera ------------------------------------------------------------------------------------------------
SWEP.CamQCA 					= 1 -- QC Attachment for camera movement.

SWEP.CamQCA_Mult 				= 1 -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS 			= nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView 				= false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.
SWEP.CamOffsetAng 				= Angle(0, 0, 0)

SWEP.BobSprintMult 				= 0.75
SWEP.BobWalkMult 				= 1.25

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
	[1] = "Bullet_00",
	[2] = "Bullet_01",
	[3] = "Bullet_02",
	[3] = "Bullet_03",
	[4] = "Bullet_04",
	[5] = "Bullet_05",
	[6] = "Bullet_06",
	[7] = "Bullet_07",
	[8] = "Bullet_08",
	[9] = "Bullet_09",
	[10] = "Bullet_10",
	[11] = "Bullet_11",
	[12] = "Bullet_12",
	[13] = "Bullet_13",
	[14] = "Bullet_14",
	[15] = "Bullet_15",
	[16] = "Bullet_16",
	[17] = "Bullet_17",
	[18] = "Bullet_18",
	[19] = "Bullet_19",
	[20] = "Bullet_20",
	[21] = "Bullet_21",
	[22] = "Bullet_22",
	[23] = "Bullet_23",
	[24] = "Bullet_24",
	[25] = "Bullet_25",
	[26] = "Bullet_26",
	[27] = "Bullet_27",
	[28] = "Bullet_28",
	[29] = "Bullet_29",
}
SWEP.HideBones = {
	"Magazine_01",
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "5K_MP9.Fire" }
SWEP.ShootSoundSilenced       	= { "5K_MP9.FireSil" } 

SWEP.ShootSoundIndoor 			= { "Stalker2.5K.AK762TailIndoor" }  
SWEP.DistantShootSound 			= { "Stalker2.5K.AK762TailOutdoor" }  
SWEP.ShootSoundIndoorSilenced 	= { "Stalker2.5K.SMGSilTailIndoor" }  
SWEP.DistantShootSoundSilenced  = { "Stalker2.5K.RifleSilTailOutdoor" }  

SWEP.DryFireSound 				= { "5K.DryfireM4A1" }  
SWEP.FiremodeSound 				= "weapons/arc9/5K/blank.ogg"

SWEP.EnterSightsSound 			= { "5K.AimIn" }  
SWEP.ExitSightsSound 			= { "5K.AimOut" }   

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "0000"

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "root",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		Pos = Vector(0, -0.54, -5.2),
        Ang = Angle(-90, 0, -90),
		Scale = 1.3,
    },
	-- {
        -- PrintName = "Grip",
        -- Category = {"grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
        -- Bone = "jnt_offset",
		-- Icon_Offset = Vector(0, 0, 3),
        -- Pos = Vector(13, -0, 1.2),
        -- Ang = Angle(-180, 180, 0),
		-- Scale = 1,
    -- },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
        Bone = "root",
		Pos = Vector(1, -1.2, -2.2),
        Ang = Angle(-90, 0, -180),
		Scale = 1.15,
    },
    {
        PrintName = "Optic",
		Bone = "root",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_ak74_rail"},
		CorrectiveAng = Angle(0.2, 0.1, 0),
		Pos = Vector(0, -1.75, 0.2),
        Ang = Angle(-90, 0, -90),
    },
	-- {
        -- PrintName = "Magazine",
		-- Bone = "jnt_magazine1",
        -- Category = "stalker2_ak74_mag",
		-- Pos = Vector(0, -0, 0),
    -- },
	-- {
        -- PrintName = "Stock",
		-- Bone = "jnt_offset",
		-- InstalledElements = {"stalker2_ak74_stock_blank"},
        -- Category = {"cod2019_tube", "csgo_tube"},
		-- Pos = Vector(-1.2, -0, 1.5),
    -- },
	{
        PrintName = "Ammo",
        Bone = "Follower",
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
        Pos = Vector(-0.79, -0.07, 4.4),
		Ang = Angle(-90, 0, -90),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "root",
        Pos = Vector(-0.8, -0.9, 2.8),
		Ang = Angle(-90, 0, -90),
		Scale = 0.7,
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/5K/mp9/sticker_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/5K/mp9/sticker_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/5K/mp9/sticker_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/5K/mp9/sticker_4.mdl",
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
    ------------------------------------------------ Sights
	["enter_sights"] = {
        Source = {"ads_enter"},
		Time = 5,
    },
	["idle_sights"] = {
        Source = {"idle"},
    },
	["exit_sights"] = {
        Source = {"ads_exit"},
		Time = 5,
    },
	--------------------------------------------------- Firemode
	["firemode_1"] = {
        Source = {"firemode_down"},
		EventTable = {
			{s = "5K.FiremodeSMG_1", t = 1 / 30},
        },
    },
	["firemode_2"] = {
        Source = {"firemode_up"},
		EventTable = {
            {s = "5K.FiremodeSMG_2", t = 1 / 30},
        },
    },
    --------------------------------------------------- Fire
	["bash"] = {
        Source = {"melee"},
    },
	["fire"] = {
        Source = {"fire"},
    },
	["dryfire"] = {
        Source = {"fire"},
		MinProgress = 0.033,
        FireASAP = true,
    },
    --------------------------------------------------- Draw & Holster
	["draw"] = {
        Source = {"draw"},
		EventTable = {
            {s = "5K.Draw", t = 1 / 30},
			{s = "5K.DrawSMG", t = 1 / 30},
        },
    },
	["holster"] = {
        Source = {"holster"},
		EventTable = {
            {s = "5K.Holster", t = 1 / 30},
			{s = "5K.HolsterSMG", t = 1 / 30},
        },
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.55,
        FireASAP = false,
		EventTable = {
			{s = "5K_MP9.MagOut", t = 0 / 30},
			{s = "5K_MP9.MagPouchDown", t = 5 / 30},
			{s = "5K_MP9.MagIn", t = 42 / 30},
			{s = "5K_MP9.MagPouchUp", t = 45 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.77,
        FireASAP = false,
		EventTable = {
			{s = "5K_MP9.MagOutEmpty", t = 1 / 30},
			{s = "5K_MP9.MagPouchDown", t = 8 / 30},
			{s = "5K_MP9.MagInEmpty", t = 45 / 30},
			{s = "5K_MP9.Bolt", t = 71 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["inspect"] = {
        Source = {"inspect"},
        MinProgress = 0.93,
        FireASAP = true,
		EventTable = {
            {s = "5K_MP9.InspectRotate", t = 0 / 30},
			{s = "5K_MP9.InspectBoltBack", t = 77 / 30},
			{s = "5K_MP9.InspectBoltForward", t = 98 / 30},
        },
    },
	["magcheck"] = {
        Source = {"magcheck"},
        MinProgress = 0.93,
        FireASAP = true,
		EventTable = {
            {s = "5K_MP9.MagCheckOut", t = 0 / 30},
			{s = "5K_MP9.MagCheckIn", t = 70 / 30},
        },
    },
	--------------------------------------------------- Movement
	["jump"] = {
        Source = {"jiggle"},
		Time = 2,
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
}

SWEP.Hook_Deploy = function(self)
	self.MidAir = 0
return end

SWEP.Hook_Think = function(self)
	local owner = self:GetOwner() 

	if self:GetNextPrimaryFire() >= CurTime() then return end
	if !self:CanReload() then return end
	if self:GetInSights() == true then return end
	if self:GetUBGL() == true then return end
	
	if (owner:KeyPressed(IN_JUMP)) and self.MidAir == 0 then
		self:PlayAnimation("jump", 1, true)
		self.MidAir = 1
	end
	if not owner:OnGround() then
		self.MidAir = 1
	end
	if self.MidAir == 1 and owner:OnGround() then -- Jump End
		self.MidAir = 0
		self:PlayAnimation("jump", 1, false)
	end
end

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
	
	vm:SetPoseParameter("blend_sprint_1", 0.28)
	vm:SetPoseParameter("blend_jiggle_1", 0.7)
	vm:SetPoseParameter("blend_ads_enter_1", 0.01)
	vm:SetPoseParameter("blend_ads_exit_1", 0.025)
	
	----------- Fire Selector -------------------------------------------
	vm:SetPoseParameter("firemode_1", self:GetFiremode() == 2 and 1 or 0)
	---------------------------------------------------------------------
	
	----------- Recoil & Idle --------------------------------------------------------------------------------------
	local inSights = self:GetInSights()
	local clipEmpty = self:Clip1() == 0
	local ParamRecoil = 1
	local ParamRecoilADS = 0.4
	local ParamEmpty = 0.1
	local ParamIdle = 0.125
	local ParamIdleADS = 0.025

	vm:SetPoseParameter("blend_recoil", (clipEmpty and ParamEmpty) or (inSights and ParamRecoilADS or ParamRecoil))
	vm:SetPoseParameter("blend_idle_1", (inSights and ParamIdleADS) or (ParamIdle))
	----------------------------------------------------------------------------------------------------------------
	
	----------- Walk Params ----------------------------------------------------------------------------------------
	if not self.blend_walk then
		self.blend_walk = 0
	end
	
	local speed = 1
	if owner:KeyDown(IN_FORWARD) then
		if self:GetInSights() == true then
			self.blend_walk = math.Approach(self.blend_walk, 0.01, speed * FrameTime())
		else
			self.blend_walk = math.Approach(self.blend_walk, 0.1, speed * FrameTime())
		end
    else
        self.blend_walk = math.Approach(self.blend_walk, 0, speed * FrameTime())
    end
	
	vm:SetPoseParameter("blend_move_1", self.blend_walk)
	----------------------------------------------------------------------------------------------------------------
end

-- SWEP.Hook_ModifyRecoilDir = function(self, dir)
    -- local minYaw, maxYaw = -40, 40  -- Left/Right recoil

    -- if not self.RecoilPhase then
        -- self.RecoilPhase = (math.random(0, 1) == 0) and 0 or math.pi  -- Randomly start at left or right
    -- end

    -- self.RecoilTime = (self.RecoilTime or 0) + FrameTime() * 20  -- Adjust speed with multiplier

    -- local smoothYaw = math.sin(self.RecoilTime + self.RecoilPhase) * (maxYaw - minYaw) * 0.5

    -- dir = smoothYaw  -- Remove -0 to ensure correct angle

    -- print(dir)

    -- return dir
-- end