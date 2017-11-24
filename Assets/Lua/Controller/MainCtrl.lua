local Ctrl = class("MainCtrl")

local view

function Ctrl.Start()
  view = UIMgr.ShowPage(MainPanelList.MainPage)

end

return MainCtrlCtrl