local MainScene = class("MainScene", BaseScene) 

function MainScene:ctor()
  log("MainScene:ctor")
  
  --  加载包资源
  -- 包名不需要加 "UI/"
  local uipackList = {"Main"}
  MainScene.super.ctor(self, uipackList)
end

function MainScene:OnEnter()
  log("MainScene:OnEnter")
  
  --初始化视图
  UIManager.Init(MainPanelList)

  -- --初始化控制器
  ControllerManager.Init(MainCtrlList)

  -- -- 启动控制器
  ControllerManager.GetController(MainCtrlList.MainCtrl).Start()
end


return MainScene