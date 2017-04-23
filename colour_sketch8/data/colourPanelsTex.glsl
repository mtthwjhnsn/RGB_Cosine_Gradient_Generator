#define PROCESSING_TEXTURE_SHADER
uniform float iGlobalTime;
uniform float num_bands;
uniform float animate_speed;
uniform vec3 iResolution;
uniform vec4 iMouse;
float PI = 3.14159265358979323;
uniform vec3 dc;
uniform vec3 amp;
uniform vec3 freq;
uniform vec3 phase;

uniform int amp_lfo_type;
uniform int freq_lfo_type;
uniform int phase_lfo_type;

uniform float amp_lfo_speed;
uniform float freq_lfo_speed;
uniform float phase_lfo_speed;

uniform float amp_lfo_amp;
uniform float freq_lfo_amp;
uniform float phase_lfo_amp;

uniform float amp_cycle_speed;
uniform float freq_cycle_speed;
uniform float phase_cycle_speed;



//--------- LFO's
float tri(float x) {
    return asin(sin(x))/(PI/2.);
}
float puls(float x) {
   return (floor(sin(x))+0.5)*2.;
}
float saw(float x) {
   return (fract((x/2.)/PI)-0.5)*2.;
}
float noise(float x) {
   return (fract(sin((x*2.) *(12.9898+78.233)) * 43758.5453)-0.5)*2.;
}
float lfo(int type, float x){
 if(type == 0) return sin(x);
 else if(type == 1) return tri(x);
 else if(type == 2) return saw(x);
 else if(type == 3) return puls(x);
 else if(type == 4) return noise(x);
 else return 0.0;
}
//--------- Colour Palette
vec3 pal( in float t, in vec3 a, in vec3 b, in vec3 c, in vec3 d )
{
   return a + b*cos( 6.28318*(c*t+d) );
}



void main(){

    vec2 p = gl_FragCoord.xy / iResolution.xy;

// animate
   p.x += (animate_speed*3.0)*iGlobalTime;

// compute colors
   float idx = ceil(p.y*num_bands) / num_bands;




//vec3 col = pal( p.x, dc, amp, freq ,
    vec3 col = pal( p.x, dc, (idx*lfo(amp_lfo_type,iGlobalTime*amp_lfo_speed)*amp_lfo_amp) + amp + (iGlobalTime*amp_cycle_speed), (idx*lfo(freq_lfo_type,iGlobalTime*freq_lfo_speed)*freq_lfo_amp) + freq + (iGlobalTime*freq_cycle_speed) , (idx*lfo(phase_lfo_type,iGlobalTime*phase_lfo_speed)*phase_lfo_amp) + phase + (iGlobalTime*phase_cycle_speed));

    // band
   float f = fract(p.y*num_bands);

   // borders
   col *= smoothstep( 0.49, 0.47, abs(f-0.5) );

   // shadowing
   col *= 0.5 + 0.5*sqrt(4.0*f*(1.0-f));

   // dithering
   //col += (1.0/255.0)*texture( texture, gl_FragCoord.xy/iChannelResolution[0].xy ).xyz;
    gl_FragColor = vec4( col, 1.0 );
}
