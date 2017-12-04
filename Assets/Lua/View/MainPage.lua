---@class MainPage : BasePage
local View = class("MainPage", BasePage)

function View:ctor()
  View.super.ctor(self, false, "Main", "MainPage")
end

function MainPage:OnInitWidget()

end

return View