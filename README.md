Example down blow.

```lua
local CleanTween = require("ModuleLocation")

local Instance : IntValue = nil
local Info = TweenInfo.new(1)
local Value = {Value = 0}

local Tween = CleanTween:Create(Instance, Info, Value)
Tween:Play() -- Remove object after finish to play
```
