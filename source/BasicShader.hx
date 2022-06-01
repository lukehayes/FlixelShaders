package;

import openfl.filters.BitmapFilter;
import openfl.filters.ShaderFilter;
import flixel.system.FlxAssets.FlxShader;

class BasicShader extends BitmapFilter
{
    @:glFragmentSource('
     #pragma header


    float rand(float n){return fract(sin(n) * 43758.5453123);}


     uniform float u_time;

      void main()
      {

          vec2 st = gl_FragCoord.xy;
          float res = smoothstep(st.x, st.y, sin(u_time) * 100.0);
          gl_FragColor = vec4(rand(st.x/1.0),res / 2.0,st.y,1);
      }
    ')

    public function new()
    {
        super();
        this.u_time.value = [0.0];
    }

    public function update(elapsed:Float)
    {
        this.u_time.value[0] += elapsed;
    }
}
