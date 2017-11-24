local View = class("MainPage", BasePage)

function View:ctor()
  View.super.ctor(self, false, "Main", "MainPage")
end

function MainPage:OnInitWidget()
  -- self.wechatButton = self.mainCom:GetChild("wechatLogin")
end

return View