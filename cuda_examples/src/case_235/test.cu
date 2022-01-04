
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15) {
if (comp == (+1.9838E-35f / tanhf(+1.4160E11f))) {
  comp = var_1 * (var_2 - var_3);
comp = -1.4350E-29f * cosf((var_4 / (var_5 - -0.0f)));
comp = (var_6 + var_7);
if (comp >= (+1.5993E-19f * atan2f(-1.3948E-42f * (var_8 - (-0.0f + +1.4240E6f + +1.9767E-35f / -1.8233E35f)), (var_9 - fmodf(var_10 * +1.8475E-37f * (var_11 * var_12 * tanhf(-1.7305E36f)), -1.6347E35f))))) {
  comp = (+1.7185E-35f / (-1.6289E-17f * +1.3788E-41f - var_13 + -1.8367E23f));
float tmp_1 = -1.3860E-37f;
comp += tmp_1 + (-1.8416E34f / log10f(var_14 + var_15));
comp = ceilf(cosf(-0.0f));
}
}
   printf("%.17g\n", comp);

}

float* initPointer(float v) {
  float *ret = (float*) malloc(sizeof(float)*10);
  for(int i=0; i < 10; ++i)
    ret[i] = v;
  return ret;
}

int main(int argc, char** argv) {
/* Program variables */

  float tmp_1 = atof(argv[1]);
  float tmp_2 = atof(argv[2]);
  float tmp_3 = atof(argv[3]);
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16);
  cudaDeviceSynchronize();

  return 0;
}
