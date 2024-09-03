#ifdef GL_FRAGMENT_PRECISION_HIGH
precision mediump float;
#endif

void main() {
    vec4 fragColor = vec4(0.1);
    //  红色 vec4(1.0, 0.0, 0.0, 1.0);
    //  绿色 vec4(0.0, 1.0, 0.0, 1.0);
    //  蓝色 vec4(0.0, 0.0, 1.0, 1.0);
    fragColor = vec4(0.0, 0.0, 1.0, 1.0);
    gl_FragColor = fragColor;
}