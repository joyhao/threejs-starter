#ifdef GL_FRAGMENT_PRECISION_HIGH
precision mediump float;
#endif
uniform float u_time;

vec3 colorA = vec3(0.149, 0.141, 0.912);
vec3 colorB = vec3(1.000, 0.833, 0.224);

void main() {
  vec3 color = vec3(0.0);

  // 会产生一个从-1到1周期性变化的值，
  // abs函数将其转换为0到1之间的值，
  // 这样就得到了一个随着u_time变化而周期性波动的百分比。
  float pct = abs(sin(u_time));

  //使用mix函数根据pct值来混合两种颜色。当pct接近0时，
  //颜色更接近colorA；当pct接近1时，颜色更接近colorB。
  color = mix(colorA, colorB, pct);

  gl_FragColor = vec4(color, 1.0);
}

float easeInOutElastic(float x) {
  const float PI = 3.14159265359;
  float c5 = (2.0 * PI) / 4.5;

  return x == 0.0 ? 0.0 : x == 1.0 ? 1.0 : x < 0.5 ? -(pow(2.0, 20.0 * x - 10.0) * sin((20.0 * x - 11.125) * c5)) / 2.0 : (pow(2.0, -20.0 * x + 10.0) * sin((20.0 * x - 11.125) * c5)) / 2.0 + 1.0;
}