#ifdef GL_FRAGMENT_PRECISION_HIGH
precision mediump float;
#endif

/**
    随机
    float d = dot(vPosition.xy, vec2(12.9898, 78.233)); 
    // 这里我们使用dot,点乘函数将两个二维向量转换成一个随机的标量(也就是我们平常使用的数字，一个随机的数字);
    // 特定的二维向量vec2(12.9898, 78.233); 只是我们选择的一个随机数值，这个值是随机的
    d = sin(d);
    // 因为sin函数的值域 [-1, 1]; 所以我们这步操作是将一个随机的浮点数d，转换到[-1, 1]这个区间
    d = d * 43758.5453; 
    // 我们将这个d 的值域从[-1, 1]直接拉伸到 [-43758.5453, 43758.5453]之间，目的是增大他的随机性
    d = fract(d);
    // 这个fract是获取d的小数部分，目的是将[-43758.5453, 43758.5453]之间的值域，重新压入到[0, 1]之间
    // 因为gl_FragColor颜色的rgba在[0, 1]之间的。
     return  大于0.0 且 小于 1.0 的 float
*/
float random(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    if(gl_FragCoord.x < 600.0) {
        vec2 square = floor(gl_FragCoord.xy / 60.0);

    // Give a random color to each square
        vec3 square_color = vec3(random(square), random(1.234 * square), 1.0);

    // Fragment shader output
        gl_FragColor = vec4(square_color, 1.0);
    }

}