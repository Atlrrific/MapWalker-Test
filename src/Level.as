package  
{
	import flash.utils.ByteArray;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.masks.Grid;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Graphiclist;
	
	/**
	 * ...
	 * @author Atl Arredondo
	 */
	public class Level extends Entity 
	{
		private var _tiles:Tilemap;
		private var _grid:Grid;
		private var xml:XML;
		
		
		public function Level(rawData:Class) 
		{
			
			super(0, 0);
			
			//To check Collisions
			type = "level";
			
			//Get all the data, to the variable XML
			this.xml = FP.getXML(rawData);
			
		}
		
		override public function added():void 
		{
			super.added();
			
			//load tiles 
			_tiles = new Tilemap(Assets.TILES_LVLONE, xml.@width, xml.@height, 32, 32);
			_tiles.loadFromString(xml.Tiles);
			
			trace(xml.Tiles);
			
			// set graphic to graphiclist of tilesets, order matters!
			graphic = new Graphiclist(_tiles);
			
			//load the collision grid
			_grid = new Grid(xml.@width, xml.@height, 32, 32);
			_grid.loadFromString(xml.Grid, "");
			
			mask = _grid;
			
			//load the entities
			var list:XMLList
			var elements:XML;
			//for each player in the xmllist
			list = xml.Objects.Player;
			
			for each(elements in list)
			{
				//Set the position of the player
				//world.add(new Player(elements.@x, elements.@y));
			}
			
			
		}
		
	}

}