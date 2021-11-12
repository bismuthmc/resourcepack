#version 150

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;

in vec2 texCoord0;
in vec4 vertexColor;
in float fov;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0);
    if (fov < 170) color *= vertexColor;
    if (color.a < 0.1) discard;
    fragColor = color * ColorModulator;
    
    
}