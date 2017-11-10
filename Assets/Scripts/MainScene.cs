using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using cn.sharesdk.unity3d;
using UnityEngine.UI;  

public class MainScene : MonoBehaviour {

	private ShareSDK ssdk;
	// Use this for initialization
	void Start () {
		ssdk = gameObject.GetComponent<ShareSDK>();
        ssdk.authHandler = AuthResultHandler; 
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
