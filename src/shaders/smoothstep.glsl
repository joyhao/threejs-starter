// 平滑过渡
//smoothstep;

float smoothstep(float edge0, float edge1, float x);
vecN smoothstep(vecN edge0, vecN edge1, vecN x);
/**
这里的 edge0 和 edge1 是边界的两个值，
而 x 是输入值。如果 x 小于等于 edge0，
那么 smoothstep 返回 0；
如果 x 大于等于 edge1，那么 smoothstep 返回 1；
当 x 在 edge0 和 edge1 之间时，
smoothstep 会返回一个介于 0 和 1 之间的值，
这个值会根据 x 的位置进行平滑插值
*/

// 注解： y 变量的值将取决于 st.x 的位置。
//smoothstep 在 [0.2, 0.5] 区间内从 0 过渡到 1
//，在 [0.5, 0.7] 区间内从 1 过渡回 0。
//因此，当 st.x 大于 0.5 时，
//y 的值将是正的（接近 1），否则它是负的（接近 -1）。

// 使用示例
#version 330 core

in vec2 UV; // 假设这是纹理坐标
out vec4 color;

void main() {
    // 假设UV坐标范围是从0到1
  float edge0 = 0.4; // 边界值1
  float edge1 = 0.6; // 边界值2
  float value = UV.x; // 输入值，这里是UV坐标的x部分

  float alpha = smoothstep(edge0, edge1, value); // 计算平滑过渡

  color = vec4(1.0, 1.0, 1.0, alpha); // 设置颜色，透明度为alpha
}