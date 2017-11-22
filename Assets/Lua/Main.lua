function Main() 
    print('Main Test')

    local FairyGUI = CS.FairyGUI
    local root = FairyGUI.GRoot.inst
    root:SetContentScaleFactor(CS.AppConst.ScreenWidth, CS.AppConst.ScreenHeight, CS.FairyGUI.UIContentScaler.ScreenMatchMode.MatchWidthOrHeight);               
    FairyGUI.UIPackage.AddPackage("UI/Login");     
    view = FairyGUI.UIPackage.CreateObject("Login", "LoginPage")
    view:SetSize(root.width,root.height)
    view:AddRelation(root, FairyGUI.RelationType.Size)
    root:AddChild(view)


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
