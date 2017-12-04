---@class MainCtrl
local Ctrl = class("MainCtrl")

---@type MainPage
local view

function Ctrl.Start()
  view = UIManager.ShowPage(MainPanelList.MainPage)

end

return Ctrl