//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 normColor = texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 diagColorA = texture2D( gm_BaseTexture, vec2(v_vTexcoord.x + 0.001, v_vTexcoord.y + 0.001));
	vec4 diagColorB = texture2D( gm_BaseTexture, vec2(v_vTexcoord.x - 0.001, v_vTexcoord.y + 0.001));
	vec4 diagColorC = texture2D( gm_BaseTexture, vec2(v_vTexcoord.x + 0.001, v_vTexcoord.y - 0.001));
	vec4 diagColorD = texture2D( gm_BaseTexture, vec2(v_vTexcoord.x - 0.001, v_vTexcoord.y - 0.001));
	diagColorA.a = 0.0;
	diagColorB.a = 0.0;
	diagColorC.a = 0.0;
	diagColorD.a = 0.0;
	
	vec4 mixColor = mix(normColor, diagColorA, 0.1);
	mixColor = mix(mixColor, diagColorB, 0.1);
	mixColor = mix(mixColor, diagColorC, 0.1);
	mixColor = mix(mixColor, diagColorD, 0.1);
	
	gl_FragColor = v_vColour * mixColor;
}
