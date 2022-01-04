
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,int var_4,int var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float* var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30) {
if (comp >= +1.9749E-43f + expf(-0.0f)) {
  for (int i=0; i < var_1; ++i) {
    if (comp == (var_3 - -0.0f)) {
      for (int i=0; i < var_2; ++i) {
        comp += (-0.0f * var_6 + var_7 + var_8 * -0.0f);
float tmp_1 = +1.2736E-36f;
comp = tmp_1 / acosf((-1.3056E36f + (var_9 / (+1.8507E6f / (-0.0f + (var_10 / var_11))))));
comp += (-0.0f + (var_12 * (var_13 - powf((var_14 - powf((+0.0f + -1.9912E-37f / (var_15 + (var_16 + -1.1420E-41f))), +0.0f)), (var_17 / -0.0f / logf(var_18 - (+1.4255E-41f - (var_19 / (+0.0f * -1.1114E-44f / +1.8196E-35f)))))))));
for (int i=0; i < var_4; ++i) {
  var_20[i] = (var_21 * (var_22 - var_23));
comp += var_20[i] * +0.0f - (-1.2856E34f - (-1.6144E-43f / ldexpf(logf(floorf((var_24 + (var_25 * (-1.0566E22f * (-0.0f - var_26)))))), 2)));
comp = (var_27 * var_28);
}
for (int i=0; i < var_5; ++i) {
  comp = -1.2844E-43f * (+1.0536E34f - (var_29 * (+0.0f - var_30)));
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
  float tmp_4 = atof(argv[4]);
  int tmp_5 = atoi(argv[5]);
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
  float tmp_20 = atof(argv[20]);
  float* tmp_21 = initPointer( atof(argv[21]) );
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
