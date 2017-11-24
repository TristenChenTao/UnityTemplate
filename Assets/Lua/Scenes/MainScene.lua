local Scene = class("MainScene", BaseScene) 

function Scene:ctor()
  log("MainScene:ctor")
  
  --  加载包资源
  -- 包名不需要加 "UI/"
  local uipackList = {"Main"}
  Scene.super.ctor(self, uipackList)
end

function Scene:OnEnter()
  log("MainScene:OnEnter")
  
  UIManager.Init(MainPanelList)
  ControllerManager.Init(MainCtrlList)
  ControllerManager.GetController(MainCtrlList.MainCtrl).Start()
end


return Scene