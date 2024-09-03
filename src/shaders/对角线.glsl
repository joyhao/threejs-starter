#ifdef GL_FRAGMENT_PRECISION_HIGH
precision mediump float;
#endif
uniform float u_time;

float plot(vec2 st) {
  return smoothstep(0.02, 0.0, abs(st.y - st.x));
}

void main() {
  vec2 st = gl_FragCoord.xy / vec2(895, 597);

  vec3 color = vec3(0.0);

    // Plot a line
  float pct = plot(st);
  color = pct * vec3(0.0, 1.0, 0.0);

  gl_FragColor = vec4(color, 1.0);
}