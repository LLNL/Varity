
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,int var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18) {
if (comp <= var_1 + (+1.8492E-43f + +1.0630E35f - (var_2 * (var_3 * var_4)))) {
  float tmp_1 = fmodf((var_6 * (-1.5153E-42f * var_7 - (-1.6779E-37f - (var_8 * var_9)))), (-1.2966E-36f - -1.7316E-44f - (+1.0173E-35f * (var_10 - var_11 - var_12))));
comp = tmp_1 - (+1.4222E-35f - (+1.4708E-2f / -1.1461E10f * var_13));
float tmp_2 = var_14 - -1.8882E-41f / +1.9457E34f * var_15 - var_16;
comp += tmp_2 + (var_17 + +1.1120E-4f);
for (int i=0; i < var_5; ++i) {
  comp += -1.9710E-17f + log10f(fabsf(+1.4002E-41f));
comp += var_18 * (-1.3840E-37f + (-1.1320E-36f - floorf(-1.7171E-42f)));
comp = (-1.2470E27f - +1.7430E34f);
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
  int tmp_6 = atoi(argv[6]);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19);
  cudaDeviceSynchronize();

  return 0;
}
