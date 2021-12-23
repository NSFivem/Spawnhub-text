nsdev = { }
nsdev.__index = nsdev


nsdev.print = print
nsdev.wait = Wait
nsdev.thread = CreateThread


-- function GetPlayas()



Config = {}
Config.NPCScenerioCurrent           = 'WORLD_HUMAN_SMOKING'
Config.NPCScenerioInProg            = 'WORLD_HUMAN_CLIPBOARD'


nsdev.thread(function()

    local drawsleep = 1000

		while true do
			nsdev.wait(drawsleep)			
            local dist = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -0.01990973, -279.8691, 351.62, true)

            if dist < 25 then  -- change dist to however far you want the text to draw, example im 5 ft away and walk like 10 ft away, the text will go to sleep.

            drawsleep = 3

			DrawSmallerSpawnHub(-5.757508, -267.4829, 351.7008, "Use /skin For The Skin Menu", 4, 0.1, 0.1)
			DrawSpawnHubTxt(-16.42206, -286.1046, 351.7008, "discord.gg/zazarz", 4, 0.1, 0.1)
			DrawSmallerSpawnHub(-5.870451, -292.1475, 351.7008, "Press K to the use Combat Menu", 4, 0.1, 0.1)		
		end		
				--Num. 2
                    local dist = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),  -0.01990973, -279.8691, 351.62, true)
                    if dist < 25 then 

					DrawSmallerSpawnHub(6.470851, -273.0901, 351.7008, "You Can Change your armor & health binds in settings", 4, 0.1, 0.1)
					DrawSmallerSpawnHub(6.688143, -286.8442, 351.7008, "Use /r to Respawn  /rev to Revive", 4, 0.1, 0.1)
                    DrawSpawnHubTxt(-15.91989, -274.1233, 351.7008 +0.5, "WELCOME TO ZAZA RZ!", 4, 0.1, 0.1)		
                else
                    drawsleep = 2000
                end
				end	
end)

-------------------------------------------------------------------------------------------------------------------------
function DrawSpawnHubTxt(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (2/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(7)
         SetTextProportional(1)
         SetTextColour(0, 255, 0, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end


        function DrawSmallerSpawnHub(x,y,z,textInput,fontId,scaleX,scaleY)
            local px,py,pz=table.unpack(GetGameplayCamCoords())
            local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
            local scale = (2/dist)*20
            local fov = (1/GetGameplayCamFov())*100
            local scale = scale*fov   
            SetTextScale(scaleX*scale, scaleY*scale)
            SetTextFont(4)
            SetTextProportional(1)
            SetTextColour(0, 255, 0, 255)		-- You can change the text color here
            SetTextDropshadow(1, 1, 1, 1, 255)
            SetTextEdge(2, 0, 0, 0, 150)
            SetTextDropShadow()
            SetTextOutline()
            SetTextEntry("STRING")
            SetTextCentre(1)
            AddTextComponentString(textInput)
            SetDrawOrigin(x,y,z+2, 0)
            DrawText(0.0, 0.0)
            ClearDrawOrigin()
           end





        nsdev.thread(function()

            local hashkey = GetHashKey("csb_rashcosvki")
        
            RequestModel(hashkey)
            while not HasModelLoaded(hashkey) do Wait(3) end

        
            zazarz_npc = CreatePed(1, hashkey, -15.91989, -274.1233, 351.7008, 269.14938354492, false, true)
            zazarz_npc2 = CreatePed(1, hashkey, -16.42206, -286.1046, 351.7008, 269.14938354492, false, true)


            -- zazarz_npc3 = CreatePed(1, hashkey, -15.91989, -274.1233, 351.7008, 269.14938354492, false, true)


            SetPedDiesWhenInjured(zazarz_npc, false)
            SetPedCanPlayAmbientAnims(zazarz_npc, true)
            TaskStartScenarioInPlace(zazarz_npc, Config.NPCScenerioCurrent, 0, true);

            SetPedDiesWhenInjured(zazarz_npc2, false)
            SetPedCanPlayAmbientAnims(zazarz_npc2, true)
            TaskStartScenarioInPlace(zazarz_npc2, Config.NPCScenerioCurrent, 0, true);

            -- SetPedDiesWhenInjured(zazarz_npc3, false)
            -- SetPedCanPlayAmbientAnims(zazarz_npc3, true)
            -- TaskStartScenarioInPlace(zazarz_npc3, Config.NPCScenerioCurrent, 0, true);
        
        end)
        

        --- !! ALL THIS SHIT IS JUST PRESS E DRAW TEXT, BLA BLA !! -- 

        
    --     nsdev.thread(function()
    --         while true do
    --             nsdev.wait(3)
    --             local ped = PlayerPedId()
    --             local coords = GetEntityCoords(GetPlayerPed(-1))
    --             if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, -15.91989, -274.1233, 351.7008, 269.14938354492, true) < 20.0 then
    --             DrawText3D(-15.91989, -274.1233, 400.7008 +0.10,'Press ~g~[E]~p~ To Go To ~r~Redzone')
    --             DrawText3D(-16.42206, -286.1046, 400.7008 +0.10,'Press ~g~[E]~p~ To Go Get A ~r~Gun')
    --             if IsControlJustReleased(0, 38) then
    --             SetEntityCoords(ped, -680.0953, 4173.445, 2015.723)
    --         end
    --     end
    -- end
    --     end)


        function DrawText3D(x, y, z, text)
            SetTextScale(0.35, 0.35)
            SetTextFont(4)
            SetTextProportional(1)
            SetTextColour(255, 255, 255, 215)
            SetTextEntry("STRING")
            SetTextCentre(true)
            AddTextComponentString(text)
            SetDrawOrigin(x,y,z, 0)
            DrawText(0.0, 0.0)
            local factor = (string.len(text)) / 370
            DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
            ClearDrawOrigin()
        end
