using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;


 public class AppConst 
 {
        //debug模式 工程内部加载
      
        //release模式 
        //      bzip lua 从持久化目录加载
        //      不bzip lua

        ///lua 文件从工程内部加载
        public const bool DebugMode = true;                        //调试模式-用于内部测试

        public static string luaDir = Application.dataPath + "/Lua";
    }
