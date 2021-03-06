#version 410 core

layout (location=0) in vec4 offset;
//layout (location=1) in vec4 color;

//out vec4 vs_color;

void main() {
    // 하드 코딩된 위치값들을 선언
    const vec4 vertices[3] =  vec4[3](
                                   vec4(0.5, -0.5, 0.5, 1.0),
                                   vec4(-0.5, -0.5, 0.5, 1.0),
                                   vec4(0.5, 0.5, 0.5, 1.0)
                                   );
    gl_Position = vertices[gl_VertexID] + offset;
    
    // vs_color = color;
}
