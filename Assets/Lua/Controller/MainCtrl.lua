local Ctrl = class("MainCtrl")

local view

function Ctrl.Start()
  view = UIManager.ShowPage(MainPanelList.MainPage)

end

return Ctrl