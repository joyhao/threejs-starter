#ifdef GL_FRAGMENT_PRECISION_HIGH
precision mediump float;
#endif

void main() {
    vec2 resolution = vec2(1920.0, 929.0);
    vec4 fragColor = vec4(0.0, 0.0, 0.0, 0.0);
    // gl_FragCoord 每个片元的屏幕坐标
     // 计算出一个范围(屏幕坐标 转成 裁剪的坐标系)

    // fragColor.x = gl_FragCoord.x / resolution.x;
    // fragColor.y = gl_FragCoord.y / resolution.y;

    if(gl_FragCoord.x < 10.0 && gl_FragCoord.y < 10.0) {
        fragColor.x = 1.0;
    }

    if(gl_FragCoord.x > 1910.0 && gl_FragCoord.y < 10.0) {
        fragColor.y = 1.0;
    }

    if(gl_FragCoord.x > 1910.0 && gl_FragCoord.y > 919.0) {
        fragColor.z = 1.0;
    }

    if(gl_FragCoord.x > 80.0 && gl_FragCoord.x < 90.0 && gl_FragCoord.y > 919.0) {
        fragColor.w = 1.0;
    }

    // =================

    gl_FragColor = fragColor;
}