#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

/**
有几种方法来计算距离。
最简单的是用distance()函数，
这个函数其实内部调用 length()函数，
计算不同两点的距离（在此例中是像素坐标和画布中心的距离）。
length（）函数内部只不过是用平方根(sqrt())计算斜边的方程。

*/

void main() {
  vec2 st = gl_FragCoord.xy / vec2(895, 597);
  float pct = 0.0;

    // a. The DISTANCE from the pixel to the center
  //pct = distance(st, vec2(0.5));

    // b. The LENGTH of the vector
    //    from the pixel to the center
  vec2 toCenter = vec2(0.5) - st;
  pct = length(toCenter);

    // c. The SQUARE ROOT of the vector
    //    from the pixel to the center
    // vec2 tC = vec2(0.5)-st;
    // pct = sqrt(tC.x*tC.x+tC.y*tC.y);

  vec3 color = vec3(pct);

  gl_FragColor = vec4(color, 1.0);
}