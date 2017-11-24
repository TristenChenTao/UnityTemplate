local Ctrl = class("LoginCtrl")

local view

function Ctrl.Start()

  -- 自定义部分
  view = UIMgr.ShowPage(LoginPanelList.LoginPage)

  view.wechatButton.onClick:Add(function()
    log('wechat click')
    CtrlManager.GetCtrl(LoginCtrlList.PromptCtrl).Start()
  end)
  
end

return Ctrl