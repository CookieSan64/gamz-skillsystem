Config = {}

Config.UpdateFrequency = 300 -- seconds interval between removing values 

Config.Notifications = true -- notification when skill is added

Config.Skills = {
    ["Stamina"] = {
        ["Current"] = 20, -- Default value 
        ["RemoveAmount"] = -0, -- % to remove when updating,
        ["Stat"] = "MP0_STAMINA" -- GTA stat hashname
    },
    ["Strength"] = {
        ["Current"] = 10,
        ["RemoveAmount"] = -0,
        ["Stat"] = "MP0_STRENGTH"
    },
    ["Lung Capacity"] = {
        ["Current"] = 10,
        ["RemoveAmount"] = -0,
        ["Stat"] = "MP0_LUNG_CAPACITY"
    },
}
