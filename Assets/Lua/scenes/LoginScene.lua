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
  
  --  init view
  -- UIMgr.Init(LoginPanelList)
  -- -- --  init crlt
  -- CtrlManager.Init(LoginCtrlList)
  -- CtrlManager.GetCtrl(LoginCtrlList.LoginCtrl).Start()
end


return LoginScene