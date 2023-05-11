function send(rName, amount)
    local sender = getPlayerFromName(rName)
    local m1 = getPlayerMoney(source)
    local m2 = tonumber(amount)
    local name = getPlayerName(source)
    if m2 <= m1 then
        givePlayerMoney(sender, amount)
        takePlayerMoney(source, amount)
        outputChatBox("Сіз сәтті түрде "..amount.." Тг. мына ойыншыға жібердіңіз "..rName,source,255,255,255,true)
        outputChatBox(name.." #FFFFFFсізге #00FF00"..m2.." #FFFFFFТг. жіберді",sender,255,255,255,true)
    else
        outputChatBox("Сізде соншама көп ақша жоқ.",source,255,255,255,true)
    end
end
addEvent("onPlayerSend", true)
addEventHandler("onPlayerSend", getRootElement(), send)

function killPedPlayer()
    killPed(source)
    outputChatBox("Сіз өз өзіңізге қол жұмсадыңыз", source)
end

-- Это функция, которая удаляет игрока
-- из игры.
addEvent("killPed", true)
addEventHandler("killPed", getRootElement(), killPedPlayer)



function hood()
local vehicle = getPedOccupiedVehicle(source)
if not vehicle then return end
if getVehicleDoorOpenRatio ( vehicle, 0 ) == 0 then
setVehicleDoorOpenRatio(vehicle, 0, 1, 2500)
else
setVehicleDoorOpenRatio(vehicle, 0, 0, 1500)
end
end
addEvent("hood", true)
addEventHandler("hood", getRootElement(), hood)

function trunk()
local vehicle = getPedOccupiedVehicle(source)
if not vehicle then return end
if getVehicleDoorOpenRatio ( vehicle, 1 ) == 0 then
setVehicleDoorOpenRatio(vehicle, 1, 1, 2500)
else
setVehicleDoorOpenRatio(vehicle, 1, 0, 1500)
end
end
addEvent("trunk", true)
addEventHandler("trunk", getRootElement(), trunk)

function LeftPered()
local vehicle = getPedOccupiedVehicle(source)
if not vehicle then return end
    if getVehicleDoorOpenRatio ( vehicle, 2 ) == 0 then
        setVehicleDoorOpenRatio(vehicle, 2, 1, 2500)
    else
        setVehicleDoorOpenRatio(vehicle, 2, 0, 2500)
    end
end
addEvent("LeftPered", true)
addEventHandler("LeftPered", root, LeftPered)

function RightPered()
local vehicle = getPedOccupiedVehicle(source)
if not vehicle then return end
    if getVehicleDoorOpenRatio ( vehicle, 3 ) == 0 then
        setVehicleDoorOpenRatio(vehicle, 3, 1, 2500)
    else
        setVehicleDoorOpenRatio(vehicle, 3, 0, 2500)
    end
end
addEvent("RightPered", true)
addEventHandler("RightPered", root, RightPered)

function LeftZad()
local vehicle = getPedOccupiedVehicle(source)
if not vehicle then return end
    if getVehicleDoorOpenRatio ( vehicle, 4 ) == 0 then
        setVehicleDoorOpenRatio(vehicle, 4, 1, 2500)
    else
        setVehicleDoorOpenRatio(vehicle, 4, 0, 2500)
    end
end
addEvent("LeftZad", true)
addEventHandler("LeftZad", root, LeftZad)

function RightZad()
local vehicle = getPedOccupiedVehicle(source)
if not vehicle then return end
    if getVehicleDoorOpenRatio ( vehicle, 5 ) == 0 then
        setVehicleDoorOpenRatio(vehicle, 5, 1, 2500)
    else
        setVehicleDoorOpenRatio(vehicle, 5, 0, 2500)
    end
end
addEvent("RightZad", true)
addEventHandler("RightZad", root, RightZad)

function lOn()
veh = getPedOccupiedVehicle(source)
if (veh) then
if (getVehicleOverrideLights(veh) ~= 2) then
setVehicleOverrideLights(veh,2)
elseif (getVehicleOverrideLights(veh) ~= 1) then
setVehicleOverrideLights(veh,1)
end
end
end
addEvent("luzesOn", true)
addEventHandler("luzesOn", getRootElement(), lOn)

function serverRepairVehicle(vehicle, player)
    local pAcc = getPlayerAccount(player)
    if isElement(vehicle) and getElementType(vehicle) == "vehicle" then
        fixVehicle(vehicle)
    end
end
addEvent("serverRepairVehicle", true)
addEventHandler("serverRepairVehicle", getRootElement(), serverRepairVehicle)

function serverFlipVehicle()
	local vehicle = getPedOccupiedVehicle(source)
	if isPedInVehicle(source) then
		local rotX, rotY, rotZ = getElementRotation(vehicle)
		setVehicleRotation(vehicle, 0, 0, (rotX > 90 and rotX < 270) and (rotZ + 180) or rotZ)
	end
end
addEvent("serverFlipVehicle", true)
addEventHandler("serverFlipVehicle", getRootElement(), serverFlipVehicle)

---------------------------------------------

addEvent("Normal",true) 
addEventHandler("Normal",root, 
function()
    setPedFightingStyle ( source, 4 )
    outputChatBox("Сіз төбелес стилін ауыстырдыңыз *Стандартный*!",source,255,255,255,true)
end)

addEvent("Boxing",true) 
addEventHandler("Boxing",root, 
function()
    setPedFightingStyle ( source, 5 )
    outputChatBox("Сіз төбелес стилін ауыстырдыңыз *Бокс*!",source,255,255,255,true)
end)

addEvent("Kung-Fu",true) 
addEventHandler("Kung-Fu",root, 
function()
    setPedFightingStyle ( source, 6 )
    outputChatBox("Сіз төбелес стилін ауыстырдыңыз *Кунг-фу*!",source,255,255,255,true)
end)

addEvent("KNEE_HEAD",true) 
addEventHandler("KNEE_HEAD",root, 
function()
    setPedFightingStyle ( source, 7 )
    outputChatBox("Сіз төбелес стилін ауыстырдыңыз *Тізе-бас*!",source,255,255,255,true)
end)

addEvent("GRAB_KICK",true) 
addEventHandler("GRAB_KICK",root, 
function()
    setPedFightingStyle ( source, 15 )
    outputChatBox("Сіз төбелес стилін ауыстырдыңыз *Шаян-соққысы*!",source,255,255,255,true)
end)

addEvent("ELBOWS",true) 
addEventHandler("ELBOWS",root, 
function()
    setPedFightingStyle ( source, 16 )
    outputChatBox("Сіз төбелес стилін ауыстырдыңыз *Шынтақ*!",source,255,255,255,true)
end)

---------------------------------------------

drift_best = 0
local root = getRootElement()
local thisResourceRoot = getResourceRootElement(getThisResource())
local drift_records = {}
local drift_mejor = 0
local drift_nombre = "-"

addEventHandler( 'onResourceStart', getResourceRootElement(getThisResource()),
function( )
executeSQLQuery( 'CREATE TABLE IF NOT EXISTS TOPDrift (Owner,Score,Name)' )
end)

function getPlayerFromNamePart(name)
if name then 
 for i, player in ipairs(getElementsByType("player")) do
if string.find(getPlayerName(player):lower(), tostring(name):lower(), 1, true) then
return player 
end
end
end
return false
end

function createTopSystem( player )
if not isElement( player ) then
return
end
local Top = {}
local CreatTop = executeSQLQuery( "SELECT * FROM TOPDrift" )
for i = 1, #CreatTop do
table.insert(Top,{name = CreatTop[i].Name,score = CreatTop[i].Score})
end
if #CreatTop >0 then
table.sort(Top, function(a,b) return (tonumber(a.score)or 0) > (tonumber(b.score)or 0) end)
setTimer(function()
for k, data in ipairs(Top) do
if k == 1 then
triggerClientEvent (player,"deltTop",player)
end	
triggerClientEvent (player,"updateTop",player,tostring(data.name),tostring(data.score),tonumber(k))
if k == 18 then
table.remove(Top)
break
end
end
end,1000,1)
end
end

function setAcontSqlData( player, top, name)
if not isElement( player ) then
return
end
result = executeSQLQuery("SELECT * FROM `TOPDrift` WHERE `Owner`=?", getAccountName(getPlayerAccount( player )))
if ( type ( result ) == "table" and #result == 0 ) or not result then
executeSQLQuery( 'INSERT INTO TOPDrift( Owner, Score , Name) VALUES( ?, ?, ? )', getAccountName(getPlayerAccount( player )), top, name)
else
if tonumber ( top ) < tonumber( result[1]["Score"] ) then top = result[1]["Score"] else top = top end
executeSQLQuery( 'UPDATE TOPDrift SET Score =?,Name =? WHERE Owner =?', top, name, getAccountName(getPlayerAccount( player )))
end
end

addEvent("driftNuevoRecord", true)
addEventHandler("driftNuevoRecord", root, 
function(score, name)
drift_best = score
drift_name = getPlayerFromNamePart(name)
setAcontSqlData(drift_name,drift_best,name)
end)

addEventHandler("onElementDataChange",root,
function (data)
if ( data == "Best Drift" ) and getElementType(source) == "player" then
local drift = getElementData(source,data)
setAcontSqlData( source, tonumber(drift), string.gsub(getPlayerName(source), "#%x%x%x%x%x%x", ""))
end			
end)

addEvent("getTop", true)
addEventHandler("getTop", root, 
function()
createTopSystem( source )
end)

-----

addEventHandler ( "onResourceStart", thisResourceRoot,
function()
executeSQLCreateTable("recordsDrift","pista TEXT, nombre TEXT, score INTEGER")
addEvent("driftClienteListo", true)
addEventHandler("driftClienteListo", root, function(player)
triggerClientEvent(player, "driftActualizarRecord", root, drift_mejor, drift_nombre)
end)
end)
addEventHandler("onVehicleDamage", root, function()
thePlayer = getVehicleOccupant(source, 0)
if thePlayer then
triggerClientEvent(thePlayer, "driftCarCrashed", root, source)
end
end)

local stopAnim = {}

addEvent("CSTanims.onSetAnim", true)
addEventHandler("CSTanims.onSetAnim", root, function ( state, group, anim )
    local jAnims = getElementData(client, "CSTanims.setAnim")
    if ( jAnims == true ) then return end
    if ( state == true and not isTimer(stopAnim[client])) then
    	if string.match(anim, 'baile') then
			exports.fortnitedances:setPedFortniteAnimation(client, anim, -1, true, false, false, false)
		else
	        setPedAnimation ( client, group, anim, -1, true, false, false, true )
    	end
		stopAnim[client] = setTimer(print, 500, 1)
    elseif ( state == false and not isTimer(stopAnim[client]) ) then
        setPedAnimation (client)
		stopAnim[client] = setTimer(print, 500, 1)
    end
end
)

---------------------------------------------

local vehicleElements = {}

function onPlayerUseCustomPickup (operation_type)
    if operation_type == "vehicle" then
        local x, y, z = getElementPosition(source)
        local veh = createVehicle(462,  x+1, y, z)
        setElementData(veh, "starter_pack", true)
        setElementData(veh, "owner", source)
        
        takePlayerMoney(source, 5000)
	end
end
addEvent("onPlayerUseCustomPickup", true)
addEventHandler("onPlayerUseCustomPickup", getRootElement(), onPlayerUseCustomPickup)

function onPlayerVehicleEnter (veh, seat)
    if getElementData(veh, "starter_pack") == true and seat == 0 then
	    if isTimer(vehicleElements[veh]) then
		    killTimer(vehicleElements[veh])
		end
	end
end
addEventHandler("onPlayerVehicleEnter", getRootElement(), onPlayerVehicleEnter)

function onPlayerVehicleExit (veh, seat)
    if getElementData(veh, "starter_pack") == true and seat == 0 then
	    if isTimer(vehicleElements[veh]) then
		    killTimer(vehicleElements[veh])
		end
		vehicleElements[veh] = setTimer(destroyElement, 180000, 1, veh)
	end
end
addEventHandler("onPlayerVehicleExit", getRootElement(), onPlayerVehicleExit)

function onVehicleStartEnter (player, seat)
    if getElementData(source, "starter_pack") == true and seat == 0 then
	    local owner = getElementData(source, "owner")
		if owner ~= player then
		    cancelEvent()
            outputChatBox("Сіз бұл мопедтің иесі емессіз. Мопедті F1 де 5000 Тг. алуға болады.",player,255,255,255,true)
		end
	end
end
addEventHandler("onVehicleStartEnter", getRootElement(), onVehicleStartEnter)


function handlingSkyter ()
    for _,v in pairs(getElementsByType("vehicle")) do
        if getElementModel(v) == 462 then
            setVehicleHandling(v, "maxVelocity", 120.0) --Максимальная скорость
            setVehicleHandling(v, "engineAcceleration", 20) --Ускорение
        end
   end
end
addEventHandler ( "onPlayerVehicleEnter", getRootElement(), handlingSkyter)

---------------------------------------------

-- Двигатель вкл./выкл.
function engine (src, cmd)
	if getPedOccupiedVehicle (src) and getPedOccupiedVehicleSeat (src) == 0 then
		local vehicle = getPedOccupiedVehicle (src)
		if getVehicleEngineState (vehicle) then
			setVehicleEngineState (vehicle, false)
            outputChatBox("Қозғалтқыш өшірілді.",src,255,255,255,true)
		else
			setVehicleEngineState (vehicle, true)
            outputChatBox("Қозғалтқыш қосылды.",src,255,255,255,true)
		end
	else
		return false
	end
end
addCommandHandler ("engine", engine)

-- Фары
function lights (src, cmd)
	if getPedOccupiedVehicle (src) and getPedOccupiedVehicleSeat (src) == 0 then
		local vehicle = getPedOccupiedVehicle (src)
		if getVehicleOverrideLights (vehicle) == 1 then
			setVehicleOverrideLights (vehicle, 2)
            outputChatBox("Фар қосылды.",src,255,255,255,true)
		else
			setVehicleOverrideLights (vehicle, 1)
            outputChatBox("Фар өшірілді.",src,255,255,255,true)
		end
	else
		return false
	end
end
addCommandHandler ("lights", lights)

-- Кикнуть пассажиров
occupantNumber = 1
function kickPassengers (src, cmd)
	if getPedOccupiedVehicle (src) then
		if getPedOccupiedVehicleSeat (src) == 0 then
			local vehicle = getPedOccupiedVehicle (src)
			local occupants = getVehicleOccupants (vehicle)
			for k, occupant in pairs (occupants) do
				if getVehicleOccupant (vehicle) ~= occupant then
					removePedFromVehicle (occupant)
					local x, y, z = getElementPosition (occupant)
					setElementPosition (occupant, x, y, z + 2)
				end
			end
		end
	end	
end
addCommandHandler ("kp", kickPassengers)

addCommandHandler("rp",function(ply)
    local pAcc = getPlayerAccount(ply)
    local veh = getPedOccupiedVehicle(ply)
    if veh then
        fixVehicle(veh)
    else
        outputChatBox("Сіз көлікте емессіз.",ply,255,255,255,true)
    end
end)

addCommandHandler("flip",function(ply)
	local veh = getPedOccupiedVehicle(ply)
	if veh then
		local rotX, rotY, rotZ = getElementRotation(veh)
		setVehicleRotation(veh, 0, 0, (rotX > 90 and rotX < 270) and (rotZ + 180) or rotZ)
	end
end)
