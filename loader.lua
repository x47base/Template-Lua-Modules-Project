--[[

___________                   .__          __                   .____                          __________                   __               __   
\__    ___/___   _____ ______ |  | _____ _/  |_  ____           |    |    __ _______           \______   \_______  ____    |__| ____   _____/  |_ 
  |    |_/ __ \ /     \\____ \|  | \__  \\   __\/ __ \   ______ |    |   |  |  \__  \    ______ |     ___/\_  __ \/  _ \   |  |/ __ \_/ ___\   __\
  |    |\  ___/|  Y Y  \  |_> >  |__/ __ \|  | \  ___/  /_____/ |    |___|  |  // __ \_ /_____/ |    |     |  | \(  <_> )  |  \  ___/\  \___|  |  
  |____| \___  >__|_|  /   __/|____(____  /__|  \___  >         |_______ \____/(____  /         |____|     |__|   \____/\__|  |\___  >\___  >__|  
             \/      \/|__|             \/          \/                  \/          \/                                 \______|    \/     \/      


Github: x47base
]]

local config = require(script.Parent.config)

for _, module in pairs(script:GetChildren()) do
    if not module:IsA("ModuleScript") then return end;
    local loadMod = coroutine.create(function()
        require(module)
    end)

    coroutine.resume(loadMod)
end
