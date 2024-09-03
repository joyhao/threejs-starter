#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

void main() {
  vec2 st = gl_FragCoord.xy / vec2(895, 597);
  vec3 color = vec3(0.0);

    // Each result will return 1.0 (white) or 0.0 (black).
  vec2 bl = step(vec2(0.1), st);   // Similar to ( X greater than 0.1 )
  float pct = bl.x * bl.y;
    // The multiplication of left*bottom will be similar to the logical AND.
  color = vec3(pct);

  gl_FragColor = vec4(color, 1.0);
}