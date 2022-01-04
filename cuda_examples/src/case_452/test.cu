
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10) {
if (comp < +1.1187E-37f * (-0.0f * (var_1 / (+0.0f / +0.0f)))) {
  if (comp > (+1.1271E-1f + var_2 * (-1.4708E-9f * +0.0f))) {
    comp = atanf((-1.0526E-41f * (var_3 / +1.9308E-5f / (var_4 + -1.7414E-41f))));
if (comp <= fabsf(var_5 + acosf(+1.0402E-3f))) {
  comp += fabsf(var_6 / (var_7 + (+1.4705E36f / sinhf((var_8 * (var_9 + -0.0f))))));
comp = (var_10 * -1.6885E-44f / +1.8245E34f);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11);
  cudaDeviceSynchronize();

  return 0;
}
