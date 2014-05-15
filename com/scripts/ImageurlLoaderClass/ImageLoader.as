﻿package com.scripts.ImageurlLoaderClass{	import flash.display.Loader;    import flash.display.MovieClip;    import flash.events.*;    import flash.net.URLRequest;	//import myLoader;		public class ImageLoader extends MovieClip	{		//checks for an extension of the file		private var Ext:Array = new Array(".jpg",".gif",".png","jpeg");		private var myS:String;		private var myNumber:Number;		private var myX:Number;		private var myy:Number;		//private var loaderGfx:myLoader = new myLoader();		public function ImageLoader(s:String,stageX:Number,stageY:Number) {            myS = s;			myX = stageX;			myy = stageY;			myNumber = 1;			getFile();        }		private function getFile():void		{			if(myNumber >= Ext.length){myNumber= 0;}						var loader:Loader = new Loader();            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);            loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);			var request:URLRequest = new URLRequest(myS+Ext[myNumber]);            loader.load(request);            addChild(loader);			//addChild(loaderGfx);			//loaderGfx.x = (myX/2)-loaderGfx.width;			//loaderGfx.y = (myy/2)-loaderGfx.width;			trace(myX+"x <------> y"+myy);					}        private function completeHandler(event:Event):void {            //trace("completeHandler: " + event);			//removeChild(loaderGfx);			dispatchEvent(new Event(Event.COMPLETE));		}        private function ioErrorHandler(event:IOErrorEvent):void {            //trace("ioErrorHandler: " + event);			myNumber+=1;			getFile();        }        private function progressHandler(event:ProgressEvent):void {            //trace("progressHandler: bytesLoaded=" + event.bytesLoaded + " bytesTotal=" + event.bytesTotal);			var loaded:Number = event.bytesLoaded;			var total:Number =  event.bytesTotal;			var pct:Number = loaded/total;			//loaderGfx.bar.scaleX = pct;        }	}}