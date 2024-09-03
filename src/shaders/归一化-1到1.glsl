#ifdef GL_ES
precision mediump float;
#endif

void main() {
  vec2 u_resolution = vec2(895, 597);
  // 获取当前片段的坐标，并将其归一化到 [0, 1] 范围内。
  vec2 st = gl_FragCoord.xy / u_resolution;
  // 调整x坐标的比例，使其与y坐标保持一致，这样即使在非方形像素的情况下也能正确地渲染图形
  st.x *= u_resolution.x / u_resolution.y;
  // 将归一化的坐标映射到 [-1, 1] 范围内。
  st = st * 2. - 1.;
}