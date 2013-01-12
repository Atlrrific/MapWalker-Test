//package  
//{
	//import net.flashpunk.Entity;
	//
	///**
	 //* ...
	 //* @author Atl Arredondo
	 //*/
	//public class Assets extends Entity 
	//{
		//[Embed(source = "../assets/tile.png")] static public const SPRITE_TILESET:Class;
		//public function Assets() 
		//{
			//
		//}
		//
	//}
//
//}

package  
{
	
	public class Assets 
	{
		// levels
		[Embed(source="../assets/firstLevel.oel", mimeType="application/octet-stream")]
		public static const LVL_ONE:Class;
		
		
		// IMAGES
		[Embed(source="../assets/tile.png")]
		public static const TILES_LVLONE:Class;
		
		[Embed(source = "../assets/player.png")]
		public static const PLAYER:Class;
	}

}