local PromptCtrl = class("PromptCtrl")

local prompt

function PromptCtrl.Start()
  prompt = UIMgr.ShowPage(LoginPanelList.Prompt)

  -- prompt.wechatButton.onClick:Add(function()
  --   log('wechat click')
  --   UIMgr.ShowPage(LoginPanelList.Prom)
  -- end)
 
end

--function DenLuCtrl.Handle(context)
--  log('you OnClick_Arg'..context.sender.name)
--  local senderName = context.sender.name
--end

return PromptCtrl