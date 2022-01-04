
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,int var_9,int var_10,float var_11,float var_12,float var_13,float var_14,float* var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28) {
if (comp < (var_3 / fmodf((+1.3086E34f + log10f(sqrtf(var_4 + (var_5 * (var_6 * +1.2313E36f))))), var_7 + var_8 / -1.8201E-37f))) {
  for (int i=0; i < var_1; ++i) {
    for (int i=0; i < var_2; ++i) {
      float tmp_1 = (var_11 + (-0.0f + (+1.8762E26f / (-1.9781E-36f - sqrtf(sqrtf(var_12 / +1.8370E27f + var_13))))));
comp += tmp_1 / powf(-1.7481E-41f * +1.1406E14f, -1.7211E-35f);
for (int i=0; i < var_9; ++i) {
  comp += (var_14 * -1.0993E-44f + +0.0f);
}
for (int i=0; i < var_10; ++i) {
  var_15[i] = (var_16 - var_17 + var_18 / -1.9880E15f);
comp += var_15[i] + (-1.3131E5f + var_19 - logf((var_20 - atanf(var_21 / powf(var_22 + (var_23 / (var_24 + var_25 / +1.0269E-36f)), (var_26 + (var_27 * (var_28 / (-0.0f * +1.3973E-35f)))))))));
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
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  int tmp_10 = atoi(argv[10]);
  int tmp_11 = atoi(argv[11]);
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);
  float tmp_15 = atof(argv[15]);
  float* tmp_16 = initPointer( atof(argv[16]) );
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29);
  cudaDeviceSynchronize();

  return 0;
}
