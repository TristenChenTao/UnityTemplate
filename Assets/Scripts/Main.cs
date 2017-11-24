using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Main : MonoBehaviour {
	
    void Awake()
    {
        DontDestroyOnLoad(gameObject);
    }

	void Start () {

        LuaManager.Instance.Start();
        GameManager.Instance.Start();
	}
	
	// Update is called once per frame
	void Update () {
		GameManager.Instance.Update();
        LuaManager.Instance.Update();
	}

    void OnDestroy()
    {
        GameManager.Instance.Release();
        LuaManager.Instance.Release();
    }
}