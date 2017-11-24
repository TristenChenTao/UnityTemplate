local MainCtrl = class("MainCtrl")

local mainPanel

function MainCtrl.Start()
  mainPanel = UIMgr.ShowPage(MainPanelList.MainPage)

end

return MainCtrl