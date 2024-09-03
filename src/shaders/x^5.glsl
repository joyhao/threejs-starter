#ifdef GL_FRAGMENT_PRECISION_HIGH
precision mediump float;
#endif

float plot(vec2 st, float y) {
  return smoothstep(y - 0.02, y, st.y) -
    smoothstep(y, y + 0.02, st.y);
}

void main() {
  vec2 st = gl_FragCoord.xy / vec2(895, 597);

  float y = pow(st.x, 5.0);

  vec3 color = vec3(0.0);

  float pct = plot(st, y);
  color = pct * vec3(0.0, 1.0, 0.0);

  gl_FragColor = vec4(color, 1.0);
}