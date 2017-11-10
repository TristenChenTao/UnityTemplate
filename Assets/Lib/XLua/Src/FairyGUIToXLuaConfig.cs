using System.Collections.Generic;  
using System;  
using UnityEngine;  
using XLua;  
using FairyGUI;  
/// <summary>  
/// Fariry导出XLua接口  
/// </summary>  
public static class FairyGUIToXLuaConfig {  
	[LuaCallCSharp]  
	public static List<Type> LuaCallCSharp = new List<Type>() {  
		(typeof(EventContext)),  
		(typeof(EventDispatcher)),  
		(typeof(EventListener)),  
		(typeof(InputEvent)),  
		(typeof(DisplayObject)),  
		(typeof(Container)),  
		(typeof(Stage)),  
		(typeof(Controller)),  
		(typeof(GObject)),  
		(typeof(GGraph)),  
		(typeof(GGroup)),  
		(typeof(GImage)),  
		(typeof(GLoader)),  
		(typeof(PlayState)),  
		(typeof(GMovieClip)),  
		(typeof(TextFormat)),  
		(typeof(GTextField)),  
		(typeof(GRichTextField)),  
		(typeof(GTextInput)),  
		(typeof(GComponent)),  
		(typeof(GList)),  
		(typeof(GRoot)),  
		(typeof(GLabel)),  
		(typeof(GButton)),  
		(typeof(GComboBox)),  
		(typeof(GProgressBar)),  
		(typeof(GSlider)),  
		(typeof(PopupMenu)),  
		(typeof(ScrollPane)),  
		(typeof(Transition)),  
		(typeof(UIPackage)),  
		(typeof(Window)),  
		(typeof(GObjectPool)),  
		(typeof(Relations)),  
		(typeof(RelationType)),


        //自定义的导出
        // (typeof(GameBasePanel)),
	};

    //C#静态调用Lua的配置（包括事件的原型），仅可以配delegate，interface
    [CSharpCallLua]
    public static List<Type> CSharpCallLua = new List<Type>() {
        typeof(EventCallback0),
        typeof(EventCallback1),
        typeof(System.Action<UIPackage>),
        typeof(PlayCompleteCallback),
        /** go **/
        // typeof(System.Action<GameAssetsDownloaderGoManager.DownloadUnit>),
        // typeof(System.Action<GameAssetsDownloaderGoManager.DownloadUnit,string>),
        typeof(System.Action<long, long>),
        // typeof(System.Action<long, long, GameAssetsDownloaderGoManager.DownloadUnit>),
        /** downloader **/
        // typeof(System.Action<long, long,GameAssetsDownloaderManager.DownloadUnit>),
        // typeof(System.Action<GameAssetsDownloaderManager.DownloadUnit,string>),
        /** async **/
        // typeof(System.Action<GameAssetsDownloaderAsyncManager.DownloadUnit>),
        // typeof(System.Action<GameAssetsDownloaderAsyncManager.DownloadUnit,string>),

        typeof(TimerCallback),
        typeof(Action)
    };
}