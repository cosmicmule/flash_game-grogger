package com.scripts.hitdetection
{
	import flash.display.Sprite;
	
	public class detectionLayer extends Sprite{
		
	private var levels:Array = new Array();
	public var tiles:Array = new Array();
	
	
	private var Map_data:detectionData = new detectionData;
		
		public function detectionLayer(){
													// setup data from extern file
		levels = Map_data.level1;
		for(var t = 0; t < levels.length; t++){
				for(var u = 0; u < levels[t].length; u++){
					
					if(levels[t][u] != 0){									//if the data is not null  
						var new_tile:detectionLib = new detectionLib;	//than build a tile
						new_tile.name = levels[t][u];
						addChild(new_tile);									//put it on the screen
		
						new_tile.gotoAndStop(1);
						new_tile.x = u * 25;
						new_tile.y = t * 25;
						//trace(tiles.length);
						tiles.push(new_tile);								//put it in an array
					}
				}
			}
		}
	}
}

			