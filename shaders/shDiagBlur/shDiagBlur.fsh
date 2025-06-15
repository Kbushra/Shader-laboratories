//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 normColor = texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 diagColor = texture2D( gm_BaseTexture, vec2(v_vTexcoord.x + 0.01, v_vTexcoord.y + 0.01));
	diagColor.a = 0.0;
	vec4 mixColor = mix(normColor, diagColor, 0.1);
	
	gl_FragColor = v_vColour * mixColor;
}
