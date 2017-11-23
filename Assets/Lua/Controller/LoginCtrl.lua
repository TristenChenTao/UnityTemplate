local LoginCtrl = class("LoginCtrl")


local loginPanel

function LoginCtrl.Start()
  log("MainCtrl:Start")
  loginPanel = UIMgr.ShowPage(LoginPanelList.LoginLuPanel)
  -- dengLuPanel.LoginBtn.onClick:Add(DenLuCtrl.Login)
  -- dengLuPanel.RegisterBtn.onClick:Add(DenLuCtrl.Register)  
end

--function DenLuCtrl.Handle(context)
--  log('you OnClick_Arg'..context.sender.name)
--  local senderName = context.sender.name
--end

function LoginCtrl.Login()
  print("DenLuCtrl.Login")
  print(dengLuPanel.LoginInput.text.."Login")
  print(dengLuPanel.RegisterInput.text.."Register")
end


function LoginCtrl.Register()
  print("DenLuCtrl.Register")
  print(dengLuPanel.LoginInput.text.."Login")
  print(dengLuPanel.RegisterInput.text.."Register")
end

return DenLuCtrl