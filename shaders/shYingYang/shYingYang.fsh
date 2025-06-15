//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPos;

void main()
{
	vec4 normColor = texture2D( gm_BaseTexture, v_vTexcoord );
	if (v_vPos.x < 0.0) { gl_FragColor = normColor * vec4(1.5, 1.5, 1.5, 1); }
	else { gl_FragColor = normColor * vec4(0.5, 0.5, 0.5, 1); } 
}
