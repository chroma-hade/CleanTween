local CleanTween = {}

local TweenService = game:GetService("TweenService")

local function WaitForEnd(Object : Tween)
	Object.Completed:Wait()
	Object:Destroy()
end

function CleanTween:Create(Object : Instance, TweenInfo : TweenInfo, Table : {any})
	local Success : boolean, Result : Tween = pcall(function()
		return TweenService:Create(Object, TweenInfo, Table)
	end)
	if Success then
		task.defer(WaitForEnd, Result)
		return Result
	else
		warn(Result)
	end
end

return CleanTween
