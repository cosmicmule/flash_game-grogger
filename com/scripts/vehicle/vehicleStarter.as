﻿package com.scripts.vehicle{	import flash.display.Sprite;	import vehicle1;	import vehicle1_1;	import vehicle2;	import vehicle2_1;	import vehicle3;	import vehicle3_1;	import flash.events.Event;	import flash.geom.Matrix;		public class vehicleStarter extends Sprite	{		private var vehicleChooose:Number;		public var vehicleOj:Object = new Object;		private var loopLocal:Number = 675;		private var loopCount:Number = 1;		private var mySwitch:Boolean= true;		private var loopDirection:Boolean =true;		private var gameSpeed =10;		private var theLevel;								public function vehicleStarter (currentLevel):void		{			theLevel = currentLevel;			vehicleType();			addEventListener(Event.ENTER_FRAME,vehicleFrame)		}				private function vehicleType ():void		{			for(var Z:int = 0; Z <= 3; Z++)			{								loopLocal -= 50;				loopDirection = true;				vehicleChooose = Randomvehicle();				if(Z % 2 == 0){loopDirection = false;}else{loopDirection = true;}								for(var C:int = 1; C <= 2; C++){															trace(vehicleChooose)										if(vehicleChooose == 1){						if(loopDirection == true)						{var myvehicle1 = new vehicle1						}else{myvehicle1 = new vehicle1_1}												addChild(myvehicle1);						vehicleOj[loopCount] = myvehicle1 											}					if(vehicleChooose == 2){						if(loopDirection == true)						{var myvehicle2 = new vehicle2						}else{myvehicle2 = new vehicle2_1}												addChild(myvehicle2);						vehicleOj[loopCount] = myvehicle2 											}					if(vehicleChooose == 3){						if(loopDirection == true)						{var myvehicle3 = new vehicle3						}else{myvehicle3 = new vehicle3_1}												addChild(myvehicle3);						vehicleOj[loopCount] = myvehicle3 											}																vehicleOj[loopCount].y = loopLocal;										if(C == 1){						vehicleOj[loopCount].x = Math.round(Math.random() * 900);					}else{						vehicleOj[loopCount].x = (vehicleOj[loopCount-1].x) - (vehicleOj[loopCount-1].width) - Math.random() * 900;					}					loopCount++;				}											}		}				private function vehicleFrame (e:Event):void		{			for (var s:String in vehicleOj)			{				if(s=="1" || s=="2" || s=="5" || s=="6" || s=="9" || s=="10"){					mySwitch = true}else{mySwitch = false}								if(mySwitch == true){					if(vehicleOj[s].x < 0 - vehicleOj[s].width){vehicleOj[s].x = stage.stageWidth + vehicleOj[s].width}else{vehicleOj[s].x -= gameSpeed }				}								if(mySwitch != true){					if(vehicleOj[s].x > stage.stageWidth){vehicleOj[s].x = 0 - vehicleOj[s].width}else{vehicleOj[s].x += gameSpeed }				}			}		}				private function Randomvehicle ():Number		{			var vehiclerandom:Number;			vehiclerandom = Math.ceil(Math.random() * 3);			//vehiclerandom = 2;			return vehiclerandom;		}		public function changeSpeed ()		{			gameSpeed+=1;		}		public function remove():void		{			removeEventListener(Event.ENTER_FRAME,vehicleFrame);		}	}}