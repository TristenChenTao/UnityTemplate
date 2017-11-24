local View = class("Prompt", BasePage)

function View:ctor()
  View.super.ctor(self, false, "Login", "Prompt")
end

function View:OnInitWidget()
  self.mainJoinButton = self.mainCom:GetChild("mainJoin")
end

return View