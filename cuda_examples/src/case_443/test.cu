
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float* var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25) {
if (comp == (var_2 / +1.8953E-43f)) {
  for (int i=0; i < var_1; ++i) {
    var_3[i] = asinf(-0.0f);
comp += var_3[i] + atan2f(powf(+1.6429E-44f / fabsf((-1.7514E5f * -1.4085E-35f)), fmodf((var_4 - var_5 - coshf(var_6 - -1.3860E-35f + var_7)), -1.9893E-43f * (+1.7807E-37f / sqrtf(+1.3247E-37f)))), (var_8 / +0.0f * (+1.7087E-37f / var_9)));
if (comp <= fmodf((var_10 + (+0.0f / var_11)), (-1.4604E-43f / var_12 * var_13))) {
  comp = var_14 / +1.9332E-43f;
}
if (comp <= (+1.6425E-41f * (var_15 - var_16))) {
  float tmp_1 = (-1.5774E7f - (var_17 - powf(-1.2596E13f / -1.8114E-12f, -1.9215E-37f * var_18)));
float tmp_2 = (-1.8062E-21f + (-1.6115E-41f * coshf((var_19 * var_20 + (var_21 + cosf(fmodf(+1.2369E-35f, expf(var_22 / var_23 - var_24))))))));
comp = tmp_2 * tmp_1 / (var_25 / +1.0353E24f * +1.6672E-42f);
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
  float* tmp_4 = initPointer( atof(argv[4]) );
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26);
  cudaDeviceSynchronize();

  return 0;
}
