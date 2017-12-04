
---@class LoginCtrl
local Ctrl = class("LoginCtrl")


---@type LoginPage
local view

function Ctrl.Start()

  -- 自定义部分
  view = UIManager.ShowPage(LoginPanelList.LoginPage)
  view.wechatButton.onClick:Add(function()
    log('wechat click')
    ControllerManager.GetController(LoginCtrlList.PromptCtrl).Start()
  end)


end

return Ctrl