package  
{
	import flash.geom.Point;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Atl Arredondo
	 */
	public class Player extends Entity 
	{
		[Embed(source = "../assets/player.png")] private const PLAYER_GRAPHIC:Class;
		public var image:Image;
		private const SPEED:int = 100;
		public var _v:Point = new Point;
		
		public function Player(x:Number,y:Number) 
		{
			super(x, y);
			//Add the Image Graphic (Player) to the Variable imag
			image = new Image(PLAYER_GRAPHIC);
			
			//This is the Graphic from the Entity
			graphic = image;
			setHitbox(33, 43, 0, 0);
			type "player";
		}
		
		override public function update():void 
		{
			updateMovement();
			updateCollision();
			//It checks in every frame the time elapsed and
			// it multiply by 100 pixels in the position x of the image.
			//if (Input.check(Key.RIGHT))
			//{
				//moveBy( SPEED * FP.elapsed, 0, "level");
				//image.flipped = false;
			//}
			//if (Input.check(Key.LEFT))
			//{
				//moveBy( -SPEED * FP.elapsed, 0, "level");
				//image.flipped = true;
			//}
			//if (Input.check(Key.UP))
			//{
				//moveBy( 0, -SPEED * FP.elapsed, "level");
				//
			//}
			//if (Input.check(Key.DOWN))
			//{
				//moveBy(  0, SPEED * FP.elapsed,"level");
				//
			//}
			
	
			super.update();
		}
		
		//////////////////////////////////////////////////
		//	Quick function to user Movement
		////////////////////////////////////////////////
		private function updateMovement():void
		{
			var movement:Point = new Point;
			if (Input.check(Key.UP)) movement.y--;
			if (Input.check(Key.DOWN)) movement.y++;
			if (Input.check(Key.LEFT)) movement.x--;
			if (Input.check(Key.RIGHT)) movement.x++;
			
			_v.x = 100 * FP.elapsed * movement.x;
			_v.y= 100 * FP.elapsed * movement.y;
			
		}
		//To see if we colide with the level.
		private function updateCollision ():void
		{
					//Collide Function, if it collide against enemy at the location x,y of the player)
			x += _v.x;
			if (collide("level", x, y))
			{
				if (FP.sign(_v.x) > 0)
				{
					_v.x = 0;
					x = Math.floor(x / 32) * 32 +32 - width;
					
				}
				else
				{
					//Moving to the left
					_v.x = 0
					x = Math.floor(x / 32) * 32 +32;
				}
			}
			
			
			y += _v.y;
			
			if (collide("level", x, y))
			{
				if (FP.sign(_v.y) > 0)
				{
					//Moving Down
					_v.y = 0;
					y = Math.floor((y/ height) /32)* 32 +32 - height;
					
				}
				else
				{
					//Moving to the UP
					_v.y = 0
					y = Math.floor(y / 32) * 32 + 32;
				}
			}
					if (collide("enemy", x, y))
			{
				trace("Collide on Enemy");
				//Turn the character Red
				image.color = 0xff0000;
			}
			else
			{
				//Turn character white
				image.color = 0xffffff;
			}
			
			
			
			// super.updateCollision();
		}
		
		
	}

}