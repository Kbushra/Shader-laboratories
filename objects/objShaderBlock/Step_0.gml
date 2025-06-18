if shader == -1 { visible = shader_current() == -1; }
else { visible = shader_current() == global.shaders[shader]; }
solid = visible;