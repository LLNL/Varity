
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14) {
if (comp == (var_2 - (var_3 / var_4 + +1.7809E-23f))) {
  for (int i=0; i < var_1; ++i) {
    if (comp < (var_5 * (+0.0f + (var_6 * var_7)))) {
      comp = (var_8 / +1.3670E36f / -1.0936E-37f + (-1.4296E-42f + -1.5477E-3f));
comp = (+1.1203E35f - (var_9 + sinf(+0.0f / +0.0f / (var_10 / var_11 / +1.4946E-41f + var_12))));
float tmp_1 = ceilf((-1.0249E-35f / (+0.0f * -1.8686E-36f - +1.7004E-42f)));
comp = tmp_1 + var_13 * (-1.3347E-37f + sqrtf(cosf((-1.8703E-41f / (-0.0f - +1.0871E-37f * var_14)))));
}
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
  int tmp_2 = atoi(argv[2]);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15);
  cudaDeviceSynchronize();

  return 0;
}
