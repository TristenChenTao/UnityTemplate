using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using cn.sharesdk.unity3d;
using FairyGUI;
using UnityEngine.SceneManagement;

using BestHTTP;
using System;

public class MainScene : MonoBehaviour {

	private ShareSDK ssdk;
	// Use this for initialization
	void Start () {
		ssdk = gameObject.GetComponent<ShareSDK>();
        ssdk.authHandler = AuthResultHandler;

        GRoot.inst.SetContentScaleFactor(1080, 1920, UIContentScaler.ScreenMatchMode.MatchWidthOrHeight);               
        UIPackage.AddPackage("UI/Login");           
        GComponent view = UIPackage.CreateObject("Login", "LoginPage").asCom; 
 
        view.SetSize(GRoot.inst.width,GRoot.inst.height);
        view.AddRelation(GRoot.inst, RelationType.Size);
        GRoot.inst.AddChild(view);  

        GButton wechatButton = view.GetChild("wechatButton").asButton;
        wechatButton.onClick.Add(() => {
            ssdk.Authorize(PlatformType.WeChat);
        });

        GButton qqButton = view.GetChild("QQButton").asButton;
        qqButton.onClick.Add(() => {
            ssdk.Authorize(PlatformType.QQ);

        });


       


        GButton weiboButton = view.GetChild("sinaButton").asButton;
        weiboButton.onClick.Add(() => {
            // ssdk.Authorize(PlatformType.SinaWeibo);
            // SceneManager.LoadScene("Index");
        }); 

        testBestHTTP();

        //监听消息
        Messenger.AddListener<int,String>( "message", receiveMessage);

        //发送消息
        Messenger.Broadcast<int,String>("message",1980,"BSBSBS");
	}
    
    public void receiveMessage(int i, String s) {
        Debug.Log("int value is " +i+" Sttring is "+s);
    }


    void testBestHTTP() {
        HTTPRequest request = new HTTPRequest(new Uri("http://www.baidu.com"), (req, resp) =>
            {
                switch (req.State)
                {
                    case HTTPRequestStates.Processing:
                        print("HTTPRequestStates.Processing");
                        break;

                    case HTTPRequestStates.Finished:
                        if (resp.IsSuccess)
                        {
                            print("HTTPRequestStates.Success");
                        }
                        else 
                        {
                            print("HTTPRequestStates.Fail");
                            request = null;
                        }
                        break;

                    case HTTPRequestStates.Error:
                        print("HTTPRequestStates.Error");
                        request = null;
                        break;

                    case HTTPRequestStates.Aborted:
                        print("HTTPRequestStates.Aborted");
                        request = null;
                        break;

                    case HTTPRequestStates.ConnectionTimedOut:
                        print("HTTPRequestStates.ConnectionTimedOut");
                        request = null;
                        break;

                    case HTTPRequestStates.TimedOut:
                        print("HTTPRequestStates.TimedOut");
                        request = null;
                        break;
                }
            });

            request.Send();
    }


    public void Login(){
            ssdk.Authorize(PlatformType.WeChat);
    }

	void AuthResultHandler(int reqID, ResponseState state, PlatformType type, Hashtable result)
    {
        if (state == ResponseState.Success)
        {
            print("authorize success !");

            if(type == PlatformType.WeChat) {

            }
            else if (type == PlatformType.QQ)
            {

            }
            else if (type == PlatformType.SinaWeibo)
            {

            }            

        }
        else if (state == ResponseState.Fail)
        {
            print("fail! error code = " + result["error_code"] + "; error msg = " + result["error_msg"]);
        }
        else if (state == ResponseState.Cancel)
        {
            print("cancel !");
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
