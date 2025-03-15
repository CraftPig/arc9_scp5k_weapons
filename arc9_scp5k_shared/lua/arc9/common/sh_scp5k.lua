local conVars = {
    -- {
        -- name = "truenames_enforced",
        -- default = "0",
        -- replicated = true,
        -- min = 0,
        -- max = 1,
    -- },
    -- {
        -- name = "toggleads",
        -- default = "0",
        -- client = true,
        -- userinfo = true
    -- },
    -- {
        -- name = "aimassist_cone",
        -- default = "5",
        -- replicated = true,
    -- },
    -- {
        -- name = "dev_show_affectors",
        -- default = "0",
    -- },
    -- {
        -- name = "fx_inspectblur",
        -- default = "0",
        -- client = true
    -- },
	{
        name = "scp5k_mult_dmg",
        default = "1",
    },
	{
        name = "scp5k_mult_recoil",
        default = "1",
    },
	{
        name = "scp5k_mult_recoilads",
        default = "1",
    },
	{
        name = "scp5k_mult_recoilkick",
        default = "1",
    },
	{
        name = "scp5k_mult_supply",
        default = "0",
    },
	{
        name = "scp5k_nearwall",
        default = "0",
		replicated = true,
    },
	{
        name = "scp5k_automaticdefault",
        default = "0",
		replicated = true,
    },
}
ARC9.ConVarData = {}

local prefix = "arc9_"

local torevertlist_cl = {}
local torevertlist_sv = {}

for _, var in pairs(conVars) do
    local convar_name = prefix .. var.name

    if var.client and CLIENT then
        table.insert(torevertlist_cl, convar_name)
        CreateClientConVar(convar_name, var.default, true, var.userinfo)
    else
        local flags = FCVAR_ARCHIVE
        if var.replicated then
            flags = flags + FCVAR_REPLICATED
        end
        if var.userinfo then
            flags = flags + FCVAR_USERINFO
        end
        table.insert(torevertlist_sv, convar_name)
        CreateConVar(convar_name, var.default, flags, var.helptext, var.min, var.max)
    end

    ARC9.ConVarData[convar_name] = var
end

if CLIENT then
	
    timer.Simple(1, function()
    
        local scp5ksettings = {
            TabName = "Addon - SCP: 5K",
            sv = true,
            { type = "label", text = "Settings for SCP: 5K weapons" },
			{ sv = true, type = "button", text = "Reset", desc = "Resets all SCP: 5K related ConVars to their default values.", func = function(self2)
                RunConsoleCommand("arc9_scp5k_reset")
            end},
			{ type = "label", text = "Multipliers" },
			{ sv = true, type = "slider", text = "Damage", desc = "Multiplies ranged damage.", convar = "scp5k_mult_dmg", min = 0.1, max = 5, decimals = 2 },
			{ sv = true, type = "slider", text = "Recoil", desc = "Multiplies the general amount of recoil.", convar = "scp5k_mult_recoil", min = 0.1, max = 5, decimals = 2 },
			{ sv = true, type = "slider", text = "Recoil Sighted", desc = "Multiplies the general amount of recoil while sighted (calculated after Recoil).", convar = "scp5k_mult_recoilads", min = 0.1, max = 5, decimals = 2 },
			{ sv = true, type = "slider", text = "Recoil Kick", desc = "Multiplies Recoil Kick.", convar = "scp5k_mult_recoilkick", min = 0.1, max = 2, decimals = 1 },
			{ type = "label", text = "Miscellaneous" },
			{ sv = true, type = "slider", text = "Supply Limit", desc = "Extends the supply limit.", convar = "scp5k_mult_supply", min = 0, max = 10, decimals = 0 },
			{ sv = true, type = "bool", text = "Disable Near Wall", convar = "scp5k_nearwall", desc = "Prevents guns from being disabled when near geometry." },
			{ sv = true, type = "bool", text = "Automatic Default", convar = "scp5k_automaticdefault", desc = "Guns initialize with the fireselector set to automatic." },
        }
        
        table.insert(ARC9.SettingsTable, 14, scp5ksettings) 
    
    end)
end

concommand.Add("arc9_scp5k_reset", function()
	RunConsoleCommand("arc9_scp5k_mult_dmg", "1")
    RunConsoleCommand("arc9_scp5k_mult_recoil", "1")
	RunConsoleCommand("arc9_scp5k_mult_recoilads", "1")
	RunConsoleCommand("arc9_scp5k_mult_recoilkick", "1")
	RunConsoleCommand("arc9_scp5k_mult_supply", "0")
	RunConsoleCommand("arc9_scp5k_nearwall", "0")
	RunConsoleCommand("arc9_scp5k_automaticdefault", "0")
end)

-- list.Set("ContentCategoryIcons", "nil", "nil.png")