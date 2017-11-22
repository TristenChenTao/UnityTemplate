function Main() 
    print('Main Test')

    CS.FairyGUI.GRoot.inst:SetContentScaleFactor(CS.AppConst.ScreenWidth, CS.AppConst.ScreenHeight, CS.FairyGUI.UIContentScaler.ScreenMatchMode.MatchWidthOrHeight);               
    CS.FairyGUI.UIPackage.AddPackage("UI/Login");     
    view = CS.FairyGUI.UIPackage.CreateObject("Login", "LoginPage")
    view:SetSize(CS.FairyGUI.GRoot.inst.width,CS.FairyGUI.GRoot.inst.height)
    view:AddRelation(CS.FairyGUI.GRoot.inst, CS.FairyGUI.RelationType.Size)
    CS.FairyGUI.GRoot.inst:AddChild(view)

    wechatButton = view:GetChild("wechatButton")
    wechatButton.onClick:Add(function () 
        print("wechatButton click")
    end)

    qqButton = view:GetChild("QQButton")
    qqButton.onClick:Add(function () 
        print("qqButton click")
    end)

    weiboButton = view:GetChild("sinaButton");
    weiboButton.onClick:Add(function () 
        print("weiboButton click")
    end)

end
