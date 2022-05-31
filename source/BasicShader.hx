package;

import openfl.filters.BitmapFilter;
import flixel.system.FlxAssets.FlxShader;

class BasicShader extends FlxShader
{
    @:glFragmentSource('
     #pragma header

      void main()
      {
          gl_FragColor = vec4(1,0,0,1);
      }
    ')

    public function new()
    {
        super();
    }

    public function update(elapsed:Float)
    {
        trace("Updating Shader");
    }
}
