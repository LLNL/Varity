
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,int var_11,int var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float* var_21,float* var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31,float var_32,float* var_33,float var_34,float var_35,float var_36,float var_37,float var_38) {
if (comp >= -1.1278E-36f * powf(var_2 * ceilf((var_3 - (+0.0f * +1.1754E14f))), (var_4 / var_5 / (-1.6095E34f * atanf(+1.4243E19f - var_6))))) {
  if (comp <= var_7 + var_8 / -1.6767E10f * var_9 / (-0.0f + +1.9388E-41f)) {
    for (int i=0; i < var_1; ++i) {
      if (comp <= (+1.9397E-41f / asinf(+1.4536E-37f / var_10 * (+1.4471E-20f / (-0.0f + +1.6621E-35f))))) {
        float tmp_1 = var_13 - (+0.0f + var_14);
comp = tmp_1 / var_15 * (-0.0f - var_16);
comp = var_17 / (var_18 + (var_19 + var_20));
for (int i=0; i < var_11; ++i) {
  float tmp_2 = (+0.0f / (var_23 - -0.0f));
var_21[i] = +0.0f;
var_22[i] = (-0.0f / (var_24 + ceilf(+1.6357E-42f)));
comp += var_22[i] * var_21[i] - tmp_2 / (var_25 * (var_26 * (-1.9806E-42f + var_27)));
}
if (comp <= -1.3492E-36f * var_28 * (-1.8482E4f - var_29)) {
  float tmp_3 = +0.0f;
float tmp_4 = -1.1884E-26f;
comp += tmp_4 - tmp_3 * (+1.2614E-35f / (+1.8342E-35f * var_30));
comp += (var_31 / var_32);
}
for (int i=0; i < var_12; ++i) {
  comp += (+1.2738E-10f + +1.5006E14f);
comp = fabsf(var_34 * var_35 + -1.5396E-12f * var_36);
var_33[i] = -0.0f * (-1.0610E-35f / (-0.0f * var_37));
comp += var_33[i] + -1.5176E-36f / (var_38 + +1.4360E35f);
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
  float tmp_3 = atof(argv[3]);
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  int tmp_12 = atoi(argv[12]);
  int tmp_13 = atoi(argv[13]);
  float tmp_14 = atof(argv[14]);
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);
  float tmp_17 = atof(argv[17]);
  float tmp_18 = atof(argv[18]);
  float tmp_19 = atof(argv[19]);
  float tmp_20 = atof(argv[20]);
  float tmp_21 = atof(argv[21]);
  float* tmp_22 = initPointer( atof(argv[22]) );
  float* tmp_23 = initPointer( atof(argv[23]) );
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
  float* tmp_34 = initPointer( atof(argv[34]) );
  float tmp_35 = atof(argv[35]);
  float tmp_36 = atof(argv[36]);
  float tmp_37 = atof(argv[37]);
  float tmp_38 = atof(argv[38]);
  float tmp_39 = atof(argv[39]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33,tmp_34,tmp_35,tmp_36,tmp_37,tmp_38,tmp_39);
  cudaDeviceSynchronize();

  return 0;
}
