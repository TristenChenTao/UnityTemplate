---@class LoginPage : BasePage
local View = class("LoginPage", BasePage)

function View:ctor()
  View.super.ctor(self, false, "Login", "LoginPage")
end

function View:OnInitWidget()
  self.wechatButton = self.mainCom:GetChild("wechatLogin")
end

return View