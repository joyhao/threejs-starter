#ifdef GL_ES
precision mediump float;
#endif

void main() {
  vec2 u_resolution = vec2(895, 597);
  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  vec3 color = vec3(0.0);

  // 计算了片段相对于屏幕中心的位置，其中 (0.5, 0.5) 是屏幕中心。
  vec2 pos = vec2(0.5) - st;
  // r 是片段到屏幕中心的距离的两倍
  float r = length(pos) * 2.0;
  // a 是片段相对于屏幕中心的角度（弧度制）。
  float a = atan(pos.y, pos.x);
  /**
    这里计算了一个周期函数 cos(a * 3.) 的绝对值，
    该函数随着角度的变化而变化，产生了一个周期性的模式。
  */
  float f = 0.0;
  f = abs(cos(a * 7.));
    // f = abs(cos(a*2.5))*.5+.3;
    // f = abs(cos(a*12.)*sin(a*3.))*.8+.1;
    // f = smoothstep(-.5,1., cos(a*10.))*0.2+0.5;

  color = vec3(1. - smoothstep(f, f + 0.02, r));

  gl_FragColor = vec4(color, 1.0);
}