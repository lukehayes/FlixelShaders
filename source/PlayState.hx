package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.group.FlxGroup;


class PlayState extends FlxState
{
    var sprites : FlxTypedGroup<FlxSprite>;

    override public function create()
    {
        super.create();
        this.sprites = new FlxTypedGroup<FlxSprite>();
        genSprites(10);
        add(this.sprites);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }

    private function genSprites(max:Int)
    {
        for(x in 0...5)
        {
            var sprite = new FlxSprite();
            sprite.makeGraphic(100,100, FlxColor.WHITE);
            sprite.x = Math.random() * FlxG.width;
            sprite.y = Math.random() * FlxG.height;
            sprites.add(sprite);
        }

    }
}
