#ifdef GL_ES
precision mediump float;
#endif
uniform float u_time;
float PI = 3.14159265359;
float box(in vec2 _st, in vec2 _size) {
  _size = vec2(0.5) - _size * 0.5;
  vec2 uv = smoothstep(_size, _size + vec2(0.001), _st);
  uv *= smoothstep(_size, _size + vec2(0.001), vec2(1.0) - _st);
  return uv.x * uv.y;
}

float cross1(in vec2 _st, float _size) {
  return box(_st, vec2(_size, _size / 4.)) +
    box(_st, vec2(_size / 4., _size));
}

mat2 rotate2d(float _angle) {
  return mat2(cos(_angle), -sin(_angle), sin(_angle), cos(_angle));
}

void main() {
  vec2 u_resolution = vec2(895, 597);
  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  vec3 color = vec3(0.0);

  st -= vec2(0.5);
    // rotate the space
  st = rotate2d(sin(u_time) * PI) * st;
    // move it back to the original place
  st += vec2(0.5);
    // Show the coordinates of the space on the background

    // Add the shape on the foreground
  color += vec3(cross1(st, 0.25));

  gl_FragColor = vec4(color, 1.0);
}