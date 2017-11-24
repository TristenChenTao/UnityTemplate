local LoginScene = class("LoginScene", BaseScene) 

function LoginScene:ctor()
  log("LoginScene:ctor")
  
  --  加载包资源
  -- 包名不需要加 "UI/"
  local uipackList = {"Login"}
  LoginScene.super.ctor(self, uipackList)
end

function LoginScene:OnEnter()
  log("LoginScene:OnEnter")
  
  --初始化视图
  UIManager.Init(LoginPanelList)

  --初始化控制器
  ControllerManager.Init(LoginCtrlList)

  -- 启动控制器
  ControllerManager.GetController(LoginCtrlList.LoginCtrl).Start()
end


return LoginScene