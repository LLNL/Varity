
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27) {
if (comp <= (var_4 + (var_5 / (+1.8434E-22f - -0.0f - +1.3563E-43f * -1.4734E5f)))) {
  for (int i=0; i < var_1; ++i) {
    for (int i=0; i < var_2; ++i) {
      for (int i=0; i < var_3; ++i) {
        comp = (-1.9708E-36f - -1.6806E-35f * var_6);
float tmp_1 = expf((-1.6058E0f + +1.0675E-41f));
comp = tmp_1 + cosf(atan2f((var_7 * var_8), var_9 * (-0.0f * (-1.3537E-43f - acosf(var_10 * var_11 * var_12)))));
if (comp < (+1.2515E14f / -0.0f)) {
  float tmp_2 = var_13 - expf((var_14 / var_15 * var_16));
float tmp_3 = +1.2959E-42f;
comp += tmp_3 * tmp_2 * acosf((var_17 + -1.3196E2f / (var_18 + (var_19 - var_20))));
}
if (comp >= log10f(-1.1135E36f)) {
  comp = (+1.6783E-27f / (var_21 / var_22 - -1.2784E25f / (-1.5162E-44f / var_23)));
comp = cosf(-1.5353E-42f);
comp += (var_24 * atan2f(-1.6103E36f, (+1.3432E36f + -1.6133E19f + coshf((var_25 + (+1.4884E-37f - -0.0f * var_26 - var_27 / -1.8100E35f))))));
}
}
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
  int tmp_3 = atoi(argv[3]);
  int tmp_4 = atoi(argv[4]);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28);
  cudaDeviceSynchronize();

  return 0;
}
