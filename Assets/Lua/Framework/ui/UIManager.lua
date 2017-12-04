---@class UIManager
---@field pages
local M = { }

UIManager = M


M.pages = nil

function M.Init(panelList)
  M.pages = {}
  logWarn("UIManager.Init----->>>")
  
  for k,v in pairs(panelList) do
    local view = require("View/"..v).new()
     M.pages[k] = view
  end
end

function M.ShowPage(pageName)
  local curPage = M.pages[pageName]
  curPage:Show()
  return curPage
end

function M.Hide(pageName)
  local curPage = M.pages[pageName]
  curPage:Hide()
end

function M.ClearScene()
  for k,page in pairs(M.pages) do
    page:Hide()
    
    local mResident = page.mResident
    if mResident ~= false then
      page:Destroy()
    end
  
  end
end

return M