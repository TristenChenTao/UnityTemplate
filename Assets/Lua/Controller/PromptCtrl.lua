local PromptCtrl = class("PromptCtrl")

local prompt

function PromptCtrl.Start()
  prompt = UIMgr.ShowPage(LoginPanelList.Prompt)

  prompt.mainJoinButton.onClick:Add(function()
    log('mainJoinButton click')
  end)
 
end

return PromptCtrl