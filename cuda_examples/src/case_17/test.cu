
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,int var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17) {
if (comp < var_1 * -0.0f) {
  if (comp == var_2 * var_3 + -0.0f + (var_4 / (-1.6899E-43f * -1.1486E-42f))) {
    float tmp_1 = +1.5608E-43f;
comp += tmp_1 + (var_6 * +0.0f - +1.0744E-21f - +1.2833E-37f / (-1.3369E-35f * -1.4943E-43f));
comp = var_7 * var_8 * var_9 / (+1.3722E-37f / +0.0f);
for (int i=0; i < var_5; ++i) {
  comp = asinf(-1.9620E36f);
}
if (comp < -1.2650E35f + (var_10 - -1.3543E36f / var_11 + -1.7585E-43f)) {
  float tmp_2 = +0.0f - var_12 - -1.4642E-36f;
float tmp_3 = +1.3939E-42f;
comp += tmp_3 / tmp_2 - var_13 + sqrtf((-1.1327E-42f * atan2f(var_14 * coshf(-1.2476E-42f + -1.7998E35f / (var_15 - (-1.9949E-7f / (-1.2379E-36f / +1.6939E34f)))), -1.9986E-36f - var_16 * var_17 - +1.2399E34f + (-1.0323E13f - +1.9440E35f))));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18);
  cudaDeviceSynchronize();

  return 0;
}
