local MainPage = class("MainPage", BasePage)

function MainPage:ctor()
  MainPage.super.ctor(self, false, "Main", "MainPage")
end

function MainPage:OnInitWidget()
  -- self.wechatButton = self.mainCom:GetChild("wechatLogin")
end

return MainPage