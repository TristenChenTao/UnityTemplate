local LoginCtrl = class("LoginCtrl")

local loginPanel

function LoginCtrl.Start()
  loginPanel = UIMgr.ShowPage(LoginPanelList.LoginPage)

  loginPanel.wechatButton.onClick:Add(function()
    log('wechat click')
    CtrlManager.GetCtrl(LoginCtrlList.PromptCtrl).Start()
  end)
  -- dengLuPanel.RegisterBtn.onClick:Add(DenLuCtrl.Register)  
end

--function DenLuCtrl.Handle(context)
--  log('you OnClick_Arg'..context.sender.name)
--  local senderName = context.sender.name
--end

return LoginCtrl