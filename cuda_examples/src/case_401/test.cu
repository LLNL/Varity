
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5) {
if (comp == var_1 - (var_2 * -1.9905E-29f / acosf(fabsf(-0.0f)))) {
  float tmp_1 = +1.4755E34f;
float tmp_2 = -1.0503E-42f;
comp += tmp_2 - tmp_1 / +1.1211E-37f + (+1.4038E-36f - -1.6116E35f);
if (comp <= +1.9457E-43f + -1.6375E-35f + var_3 / -1.9240E-41f / +1.6891E-37f) {
  comp = atanf(+1.8338E-35f);
comp += var_4 * var_5;
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6);
  cudaDeviceSynchronize();

  return 0;
}
