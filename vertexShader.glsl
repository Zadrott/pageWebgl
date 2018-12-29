attribute vec2 position;
attribute vec4 color;
varying vec4 vColor;
uniform vec2 translation;
uniform float zoom;
uniform float angle;

void main() {
    
    float x_r = position[0] * cos(angle) - position[1] * sin(angle);
    float y_r = position[0] * sin(angle) + position[1] * cos(angle);
    float x_t = x_r + translation[0];
    float y_t = y_r + translation[1];
    gl_Position = vec4(x_t * zoom , y_t * zoom, 0 ,1); 
    gl_PointSize = (position[0] + 1.0) * 20.0;
    vColor = color;
} 