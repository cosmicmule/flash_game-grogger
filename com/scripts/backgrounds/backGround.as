package com.scripts.backgrounds{
	import flash.display.Sprite;
	public class backGround extends Sprite{
		
	private var level:Array = new Array();
	public var tiles:Array = new Array();
	private var Map_data:Data = new Data;
		
		public function backGround(){											// setup data from extern file
		level = Map_data.level;
			
		for(var t = 0; t < level.length; t++){
				for(var u = 0; u < level[t].length; u++){
					
					if(level[t][u] != 0){									//if the data is not null
						
						var new_tile:graphicalLib = new graphicalLib;		//than build a tile
						new_tile.name = String(level[t][u]);
						addChild(new_tile);									//put it on the screen
		
						new_tile.gotoAndStop(level[t][u]);
						new_tile.x = u * 50;
						new_tile.y = t * 50;
						tiles.push(new_tile);								//put it in an array
					}
				}
			}
		}
	}
}