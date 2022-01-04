
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,int var_7,int var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30) {
if (comp > -1.0797E35f / +1.6495E36f - ldexpf((var_1 + cosf(+1.7200E-44f)), 2)) {
  if (comp > (var_2 + var_3)) {
    if (comp > var_4 - var_5 + var_6) {
      comp += (var_9 * asinf(atanf(var_10 * -0.0f - (-1.8797E-42f / var_11))));
comp = (+1.6700E36f - -1.0115E-13f * +0.0f / (var_12 / (var_13 + +1.0467E36f)));
if (comp < +1.6480E-43f / (+0.0f * var_14)) {
  comp += (var_15 - +1.8852E14f + var_16);
comp = (var_17 - (+0.0f - (var_18 + var_19 * +1.6983E-5f)));
float tmp_1 = (+0.0f - cosf((+1.9261E35f + tanhf(fabsf(var_20 + var_21 * +1.1241E36f)))));
comp = tmp_1 - +0.0f + (var_22 + var_23);
}
for (int i=0; i < var_7; ++i) {
  comp = var_24 * (-1.2225E-44f - (-0.0f + (var_25 / +1.4149E-43f)));
}
for (int i=0; i < var_8; ++i) {
  comp += var_26 * var_27;
float tmp_2 = +1.0493E-44f;
comp += tmp_2 * var_28 * (-1.1704E-36f + fabsf(var_29 * (-1.0898E10f * (-1.4185E-37f - +1.9937E25f * -1.7456E36f * var_30))));
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
  float tmp_2 = atof(argv[2]);
  float tmp_3 = atof(argv[3]);
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  int tmp_8 = atoi(argv[8]);
  int tmp_9 = atoi(argv[9]);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31);
  cudaDeviceSynchronize();

  return 0;
}
