local Prompt = class("Prompt", BasePage)

function Prompt:ctor()
  Prompt.super.ctor(self, false, "Login", "Prompt")
end

function Prompt:OnInitWidget()
  self.mainJoinButton = self.mainCom:GetChild("mainJoin")
end

return Prompt