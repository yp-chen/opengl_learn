#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

uniform vec3 posoffset;
uniform vec3 coloffset;
out vec3 ourColor;

void main()
{
    gl_Position = vec4(aPos.x + posoffset.x,aPos.y + posoffset.y,aPos.z + posoffset.z, 1.0);
    ourColor = aColor+coloffset;
}