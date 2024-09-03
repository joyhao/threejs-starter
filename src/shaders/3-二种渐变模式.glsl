#ifdef GL_FRAGMENT_PRECISION_HIGH
precision mediump float;
#endif

void main() {
    vec4 fragColor = vec4(0.1);
    // 设置x方向渐变(gl_FragCoord.x: 0=>1920)
    // fragColor = vec4(gl_FragCoord.x / 1920.0 * 1.0, gl_FragCoord.x / 1920.0 * 1.0, gl_FragCoord.x / 1920.0 * 1.0, 1.0);
    // 设置y方向渐变(gl_FragCoord.y: 0=>930)
    //  fragColor = vec4(gl_FragCoord.y / 930.0 * 1.0, gl_FragCoord.y / 930.0 * 1.0, gl_FragCoord.y / 930.0 * 1.0, 1.0);
    gl_FragColor = fragColor;
}