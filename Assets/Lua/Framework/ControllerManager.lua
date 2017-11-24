--require "Common/define"
--require "Controller/PromptCtrl"
--require "Controller/MessageCtrl"

local M = { }

ControllerManager = M;
--local this = ControllerManager;
--local ctrlList = {};	--控制器列表--
M.ctrlList = nil

function M.Init(ctrlList)
  M.ctrlList = {}
	logWarn("ControllerManager.Init----->>>");
  for k,v in pairs(ctrlList) do
     M.ctrlList[k] = require("Controller/"..v).new()
  end
--	ctrlList[CtrlNames.Prompt] = PromptCtrl.New();
--	ctrlList[CtrlNames.Message] = MessageCtrl.New();
--	return this;
end

--添加控制器--
--function ControllerManager.AddCtrl(ctrlName, ctrlObj)
--	ctrlList[ctrlName] = ctrlObj;
--end

--获取控制器--
function M.GetController(ctrlName)
	return M.ctrlList[ctrlName];
end

--移除控制器--
--function ControllerManager.RemoveCtrl(ctrlName)
--	ctrlList[ctrlName] = nil;
--end

--关闭控制器--
--function ControllerManager.Close()
--	logWarn('ControllerManager.Close---->>>');
--  ControllerManager.ctrlList = nil
--end
return M