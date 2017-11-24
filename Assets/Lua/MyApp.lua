require "Common/define"
require "Common/functions"
require "Framework/init"

-- class("MyApp")
-- --- @class MyApp
-- --- @field public curScene BaseScene
-- function MyApp:ctor()
--   self.curScene = nil;
-- end
-- singleton_class(MyApp)

-- function MyApp:run()
--   self:enterScene("LoginScene")
-- end

-- function MyApp:enterScene(SceneName)
--   if self.curScene then
--     self.curScene:OnExit()
--   end
--   self.curScene = require("scenes/"..SceneName).new()
--   loadMgr:ReplaceScene(self.curScene.ablist, MyApp.OnLoadFinish)
-- end

-- function MyApp.OnLoadFinish()
--   --self.curScene:OnEnter()
--   MyApp.Instance.curScene:OnEnter()
-- end

local M = {}
MyApp = M
M.curScene = nil

function M.run()
  M.enterScene("LoginScene")
end

function M.enterScene(SceneName)
 if M.curScene then
     M.curScene:OnExit()
 end
 
 M.curScene = require("Scenes/"..SceneName).new()

loadMgr:ReplaceScene(M.curScene.ablist, M.OnLoadFinish)
end

function M.OnLoadFinish()
  M.curScene:OnEnter()
end

return M