precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

uniform float time;

uniform vec2 topLeft;
uniform vec2 fullSize;

#define CUSTOM_OPACITY 0.6
#define CUSTOM_FILTER 0.7

void main(){
    vec4 pixColor = texture2D(tex, v_texcoord);
    pixColor[2] *= CUSTOM_OPACITY;
	pixColor *= CUSTOM_FILTER;

    gl_FragColor = pixColor;
}
