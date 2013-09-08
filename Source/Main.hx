package;


import flash.display.Bitmap;
import flash.display.Sprite;
import flash.Lib;
import openfl.Assets;
import flash.events.Event;

class Main extends Sprite {
	var image:Bitmap;
	
	public function new () {
		
		super ();
		
		init();
		construct();
		
		Lib.current.stage.addEventListener(Event.RESIZE, onResize);		
	}
	
	public function init() {
		image = new Bitmap(Assets.getBitmapData("assets/image.png"));
		addChild(image);
	}
	
	public function construct() {
		image.x = Lib.current.stage.stageWidth * 0.5 - image.width * 0.5;
		image.y = Lib.current.stage.stageHeight * 0.5 - image.height * 0.5;	
	}
	
	public function onResize(e:Event) {
		construct();	
	}
	
}