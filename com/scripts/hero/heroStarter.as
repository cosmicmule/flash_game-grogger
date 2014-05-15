package com.scripts.hero
{
	// base flash import classes
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import frog;
	//
	
	
	public class heroStarter extends Sprite
	
	{
		// objects
		public var myfrogger:frog = new frog;
		private var start_x:int;
		private var start_y:int;
		private var level;
		
		public function heroStarter(l:Sprite,myStageW,myStageH):void
		{
		//trace(this);
		level = l;
		start_x = myStageW/2;
		start_y = myStageH/2;
		createFrogger();
		}
		
		private function createFrogger():void
		{
		level.addChild(myfrogger);
		myfrogger.x = start_x;
		myfrogger.y = start_y;
		} 
		
		public function setFrogger():void
		{
		myfrogger.x += 5;
		}  
	}	
}



