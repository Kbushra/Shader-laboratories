//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 sampleColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	float greyVal = sampleColor.r * 0.299 + sampleColor.g * 0.587 + sampleColor.b * 0.114;
	
	gl_FragColor = vec4(greyVal, greyVal, greyVal, sampleColor.a);
}
