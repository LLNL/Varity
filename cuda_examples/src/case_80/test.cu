
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15) {
for (int i=0; i < var_1; ++i) {
  if (comp == acosf(+1.7250E35f)) {
    comp += (var_3 / var_4 - var_5 / var_6);
if (comp > (+1.2638E36f - ldexpf(-1.6108E34f - (var_7 - +1.7065E-19f), 2))) {
  comp = sqrtf(+1.4345E35f + +0.0f);
comp += (var_8 / -1.7229E34f / (-1.5260E35f - var_9 + -1.7803E3f));
}
for (int i=0; i < var_2; ++i) {
  comp = -1.3042E-44f - (var_10 * var_11);
comp = (var_12 * (var_13 - var_14 / +1.3264E8f));
}
if (comp > -1.8163E-29f - +1.0793E-16f) {
  float tmp_1 = -0.0f - var_15;
comp = tmp_1 - -1.4916E3f / +0.0f / +1.6909E10f;
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
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16);
  cudaDeviceSynchronize();

  return 0;
}
