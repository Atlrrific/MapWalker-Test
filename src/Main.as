package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Atl Arredondo
	 */
	public class Main extends Engine 
	{
		
		public function Main():void 
		{
			//To Create a Window
			super(640, 480);
			FP.screen.scale = 1;
			FP.console.enable();
		}
		
		override public function init():void
		
		{
			trace("FlashPunk has initialized.");
			super.init();
			FP.world = new GameWorld();
		}
		
	}
	
}