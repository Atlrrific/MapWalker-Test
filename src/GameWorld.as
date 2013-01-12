package  
{
	import flash.display.BitmapData;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Atl Arredondo
	 */
	public class GameWorld extends World 
	{
		//[Embed(source = "firstLevel.oel", mimeType = "application/octet-stream")] private static const DEFAULT_MAP:Class;
		//To create a Graphic Square
		private var square:Entity;
		public function GameWorld() 
		{
			trace("Gameworld Constructor.");
		}
		//(Overrading is changing the functions default content)
		////////////////////////////////////
		// How the World Begins
		////////////////////////////////////
		override public function begin():void 
		{	
			add(new Level(Assets.LVL_ONE));
			add(new Player(300,200));
			add(new Enemy);
			add(new Enemy);
			add(new Enemy);
			
			
			super.begin();
		}
		
		
		
	}

}