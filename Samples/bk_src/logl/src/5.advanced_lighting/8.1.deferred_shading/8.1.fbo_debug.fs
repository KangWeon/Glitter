// fragment shader
#version 410
out vec4 FragColor;
in  vec2 TexCoords;
  
uniform sampler2D fboAttachment;
  
void main()
{
    FragColor = texture(fboAttachment, TexCoords);
} 