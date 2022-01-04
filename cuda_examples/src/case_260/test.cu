
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31,float var_32,float var_33,float var_34) {
if (comp >= (-1.7167E36f * var_1)) {
  comp += (var_3 * atan2f((-1.8125E-19f - acosf(-1.5877E-44f)), var_4 + var_5));
float tmp_1 = +0.0f;
float tmp_2 = +1.9347E-37f;
comp += tmp_2 - tmp_1 + (var_6 / (var_7 / atan2f(expf((var_8 - var_9 + +1.9231E-42f - (var_10 - -1.4863E35f))), (+1.6161E-1f - var_11 * floorf(-1.4446E-11f / +0.0f * var_12 / var_13 / var_14)))));
for (int i=0; i < var_2; ++i) {
  comp += var_15 + ldexpf(var_16 / (var_17 - (+0.0f * ldexpf(cosf(var_18 / var_19), 2))), 2);
}
if (comp >= var_20 * var_21 / (var_22 - -1.4621E-44f + var_23)) {
  comp += var_24 - sqrtf(log10f(atanf(-1.0365E-44f)));
comp += fabsf(+0.0f + (var_25 - fabsf(var_26 * (var_27 * -1.0839E-41f))));
}
if (comp >= (+1.6967E-41f + var_28)) {
  comp = var_29 + var_30 / +0.0f;
comp += +0.0f + var_31;
comp += var_32 - +1.3521E-9f;
comp = (var_33 - (+0.0f / -0.0f - var_34));
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
  int tmp_3 = atoi(argv[3]);
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
  float tmp_22 = atof(argv[22]);
  float tmp_23 = atof(argv[23]);
  float tmp_24 = atof(argv[24]);
  float tmp_25 = atof(argv[25]);
  float tmp_26 = atof(argv[26]);
  float tmp_27 = atof(argv[27]);
  float tmp_28 = atof(argv[28]);
  float tmp_29 = atof(argv[29]);
  float tmp_30 = atof(argv[30]);
  float tmp_31 = atof(argv[31]);
  float tmp_32 = atof(argv[32]);
  float tmp_33 = atof(argv[33]);
  float tmp_34 = atof(argv[34]);
  float tmp_35 = atof(argv[35]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33,tmp_34,tmp_35);
  cudaDeviceSynchronize();

  return 0;
}
