package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP
	
	/**
	 * ...
	 * @author Atl Arredondo
	 */
	public class Enemy extends Entity 
	{
		[Embed(source = "../assets/ball.png")] public const ENEMY_GRAPHIC:Class;
		public function Enemy() 
		{
			//Set up the image into the graphic of the entity.
			graphic = new Image(ENEMY_GRAPHIC);
			
			//Set up location to the Entity
			x = FP.rand(FP.screen.width);
			y = FP.rand(FP.screen.height);
			type = "enemy";
			
			//Set up hitbox, x,y, origin of the setbox coordinates.
			setHitbox(40, 40, -5, -5);
		}
		
	}

}