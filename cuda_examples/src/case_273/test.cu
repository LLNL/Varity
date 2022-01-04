
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20) {
if (comp < (var_1 / (var_2 + var_3))) {
  if (comp == ldexpf(powf(var_4 + (-0.0f - (-1.5613E-41f * var_5)), (var_6 / (+1.1736E-2f / var_7 / cosf((-1.8611E-27f + -1.1853E-44f - var_8))))), 2)) {
    comp += floorf(+1.2703E-4f / sinf((-1.1071E-35f / acosf((+1.8437E36f / +0.0f * +1.2212E14f)))));
if (comp == (+1.7207E-42f - +1.3187E-43f / var_9 + var_10 * sqrtf(var_11 + (-1.2206E-35f / var_12)))) {
  comp += -1.2395E-42f * +1.1947E29f - var_13;
float tmp_1 = var_14 - var_15;
comp = tmp_1 * (-1.7753E-24f - cosf((+1.1999E-44f - +1.0404E35f - -0.0f)));
}
if (comp >= powf((-1.0831E-44f - (-1.6197E-37f * (var_16 + var_17))), var_18 - var_19)) {
  comp += +1.8563E-37f / (+1.1762E-36f / (var_20 - (+1.3362E-44f / expf(-0.0f - -0.0f))));
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
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);
  float tmp_17 = atof(argv[17]);
  float tmp_18 = atof(argv[18]);
  float tmp_19 = atof(argv[19]);
  float tmp_20 = atof(argv[20]);
  float tmp_21 = atof(argv[21]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21);
  cudaDeviceSynchronize();

  return 0;
}
