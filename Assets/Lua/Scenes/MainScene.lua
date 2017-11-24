local MainScene = class("MainScene", BaseScene) 

function MainScene:ctor()
  log("MainScene:ctor")
  
  --  加载包资源
  -- 包名不需要加 "UI/"
  local uipackList = {"Main"}
  MainScene.super.ctor(self, uipackList)
end

function MainScene:OnEnter()
  log("LoginScene:OnEnter")
  
  --初始化视图
  UIMgr.Init(MainPanelList)

  -- --初始化控制器
  CtrlManager.Init(MainCtrlList)

  -- -- 启动控制器
  CtrlManager.GetCtrl(MainCtrlList.MainCtrl).Start()
end


return MainScene