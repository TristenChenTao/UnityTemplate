local LoginPage = class("LoginPage", BasePage)

function LoginPage:ctor()
  LoginPage.super.ctor(self, false, "Login", "LoginPage")
end


--function DengLuPanel.OnClick()
--  log('you click')
--end

--function DengLuPanel:OnClick_Arg(context)
--	log('you OnClick_Arg'..context.sender.name)
----  MyApp.enterScene("MainScene")
--end

function LoginPage:OnInitWidget()
  self.wechatButton = self.mainCom:GetChild("wechatLogin")
end

return LoginPage