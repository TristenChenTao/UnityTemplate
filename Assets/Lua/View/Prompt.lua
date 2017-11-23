local Prompt = class("Prompt", BasePage)

function Prompt:ctor()
  Prompt.super.ctor(self, false, "Login", "Prompt")
end

function Prompt:OnInitWidget()
  -- self.wechatButton = self.mainCom:GetChild("wechatLogin")
end

return Prompt