#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

void main() {
  vec2 st = gl_FragCoord.xy / vec2(895, 597);
  vec3 color = vec3(0.0);

  vec2 bl = step(vec2(0.1), st);
  vec2 tr = step(vec2(0.1), 1.0 - st);
  float pct = bl.x * bl.y * tr.x * tr.y;
  color = vec3(pct);

  gl_FragColor = vec4(color, 1.0);
}