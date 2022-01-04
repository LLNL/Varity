
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14) {
if (comp < var_1 + -1.9098E-13f - (-1.6590E-35f + var_2 / var_3)) {
  comp += var_4 * var_5 + (-0.0f * (-1.9967E-41f / sinhf(-1.1047E-35f - (var_6 * var_7))));
float tmp_1 = -1.9860E-17f;
comp += tmp_1 + var_8 / sqrtf(acosf((-1.9410E-36f - (var_9 / var_10))));
if (comp < log10f(powf(+1.9282E36f * var_11 * (var_12 - (var_13 / +1.0302E-42f)), var_14 - (+0.0f * powf(-0.0f, -1.6385E0f))))) {
  float tmp_2 = atanf(+1.4938E36f / atanf(+1.0958E-35f));
comp = tmp_2 - (+1.6552E36f * +0.0f);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15);
  cudaDeviceSynchronize();

  return 0;
}
