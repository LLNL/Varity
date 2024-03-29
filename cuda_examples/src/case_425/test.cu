
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8) {
float tmp_1 = -1.0034E34f;
float tmp_2 = +0.0f;
comp += tmp_2 - tmp_1 * var_1 * sqrtf(var_2 * -1.2132E-37f);
comp = sqrtf(var_3 / atanf(+0.0f));
if (comp > (-0.0f - var_4 - -1.1122E-41f + +0.0f / (var_5 / var_6))) {
  comp = tanhf(+1.2248E-35f * +1.9634E-23f + (+1.7002E-10f / (var_7 + log10f((-1.0865E36f + (var_8 / +1.0608E-41f))))));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9);
  cudaDeviceSynchronize();

  return 0;
}
