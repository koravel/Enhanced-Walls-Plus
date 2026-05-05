function createBoolStartupSetting(name,default,order)
    if type(default) ~= "boolean" then
        log("Attempted to create boolean startup setting, but default was not a boolean.")
        return
    else
        data:extend({
            {
                type = "bool-setting",
                name = name,
                setting_type = "startup",
                default_value = default,
                order = order
              }
        })
    end
    
end
function createIntegerStartupSetting(name,default,min,max,order)
    data:extend({
        {
            type = "int-setting",
            name = name,
            setting_type = "startup",
            default_value = default,
            min = min,
            max = max,
            order = order
          }
    })
end
function createDoubleStartupSetting(name,default,min,max,order)
    data:extend({
        {
            type = "double-setting",
            name = name,
            setting_type = "startup",
            default_value = default,
            min = min,
            max = max,
            order = order
          }
    })
end
function createStringStartupSetting(name,default,allowed,order)
    if type(allowed) ~= "table" then
        log("Attempted to create string startup setting, but allowed was not a table.")
        return
    elseif type(default) ~= "string" then
        log("Attempted to create string startup setting, but default was not a string.")
        return
    else
        data:extend({
            {
                type = "string-setting",
                name = name,
                setting_type = "startup",
                default_value = default,
                allowed_values = allowed,
                order = order
            }
        })
    end
    
end

mod_settings = {
    {name="plated-wall-tech-cost",type="integer",default=200,min=1,max=math.huge},
    {name="plated-wall-health",type="integer",default=600,min=1,max=math.huge},
    {name="plated-wall-mining-time",type="double",default=0.2,min=0,max=math.huge},
    {name="plated-wall-res-phys-flat",type="integer",default=10,min=0,max=math.huge},
    {name="plated-wall-res-phys-percent",type="integer",default=40,min=0,max=math.huge},
    {name="plated-wall-res-impact-flat",type="integer",default=80,min=0,max=math.huge},
    {name="plated-wall-res-impact-percent",type="integer",default=80,min=0,max=math.huge},
    {name="plated-wall-res-exp-flat",type="integer",default=15,min=0,max=math.huge},
    {name="plated-wall-res-exp-percent",type="integer",default=50,min=0,max=math.huge},
    {name="plated-wall-res-acid-flat",type="integer",default=10,min=0,max=math.huge},
    {name="plated-wall-res-acid-percent",type="integer",default=80,min=0,max=math.huge},
    
    {name="tough-wall-tech-cost",type="integer",default=50,min=1,max=math.huge},
    {name="tough-wall-health",type="integer",default=700,min=1,max=math.huge},
    {name="tough-wall-mining-time",type="double",default=0.2,min=0,max=math.huge},
    {name="tough-wall-res-phys-flat",type="integer",default=3,min=0,max=math.huge},
    {name="tough-wall-res-phys-percent",type="integer",default=20,min=0,max=math.huge},
    {name="tough-wall-res-impact-flat",type="integer",default=45,min=0,max=math.huge},
    {name="tough-wall-res-impact-percent",type="integer",default=60,min=0,max=math.huge},
    {name="tough-wall-res-exp-flat",type="integer",default=10,min=0,max=math.huge},
    {name="tough-wall-res-exp-percent",type="integer",default=30,min=0,max=math.huge},
    {name="tough-wall-res-acid-flat",type="integer",default=0,min=0,max=math.huge},
    {name="tough-wall-res-acid-percent",type="integer",default=80,min=0,max=math.huge},

    {name="tough-gate-tech-cost",type="integer",default=100,min=1,max=math.huge},
    {name="tough-gate-health",type="integer",default=700,min=1,max=math.huge},
    {name="tough-gate-mining-time",type="double",default=0.2,min=0,max=math.huge},
    {name="tough-gate-res-phys-flat",type="integer",default=3,min=0,max=math.huge},
    {name="tough-gate-res-phys-percent",type="integer",default=20,min=0,max=math.huge},
    {name="tough-gate-res-impact-flat",type="integer",default=45,min=0,max=math.huge},
    {name="tough-gate-res-impact-percent",type="integer",default=60,min=0,max=math.huge},
    {name="tough-gate-res-exp-flat",type="integer",default=10,min=0,max=math.huge},
    {name="tough-gate-res-exp-percent",type="integer",default=30,min=0,max=math.huge},
    {name="tough-gate-res-acid-flat",type="integer",default=0,min=0,max=math.huge},
    {name="tough-gate-res-acid-percent",type="integer",default=80,min=0,max=math.huge},

    {name="plated-gate-tech-cost",type="integer",default=300,min=1,max=math.huge},
    {name="plated-gate-health",type="integer",default=600,min=1,max=math.huge},
    {name="plated-gate-mining-time",type="double",default=0.2,min=0,max=math.huge},
    {name="plated-gate-res-phys-flat",type="integer",default=10,min=0,max=math.huge},
    {name="plated-gate-res-phys-percent",type="integer",default=40,min=0,max=math.huge},
    {name="plated-gate-res-impact-flat",type="integer",default=80,min=0,max=math.huge},
    {name="plated-gate-res-impact-percent",type="integer",default=80,min=0,max=math.huge},
    {name="plated-gate-res-exp-flat",type="integer",default=15,min=0,max=math.huge},
    {name="plated-gate-res-exp-percent",type="integer",default=50,min=0,max=math.huge},
    {name="plated-gate-res-acid-flat",type="integer",default=10,min=0,max=math.huge},
    {name="plated-gate-res-acid-percent",type="integer",default=80,min=0,max=math.huge}
}

function numToLetter(num) -- for automatic ordering based on the order of mod_settings
    local letters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
    return letters[math.min(math.max(num, 1), 26)]
end

for index, setting in pairs(mod_settings) do
    local name = setting.name
    local type = setting.type
    local default = setting.default
    if type == "bool" then
        createBoolStartupSetting(name,type,default,numToLetter(index))
    elseif type == "integer" then
        local min = setting.min
        local max = setting.max
        createIntegerStartupSetting(name,default,min,max,numToLetter(index))
    elseif type == "double" then
        local min = setting.min
        local max = setting.max
        createDoubleStartupSetting(name,default,min,max,numToLetter(index))
    elseif type == "string" then
        local allowed = setting.allowed
        createStringStartupSetting(name,default,allowed,numToLetter(index))
    else
        log("Attempted to add setting "..name..", but the type "..type.." was unrecognized.")
    end
end