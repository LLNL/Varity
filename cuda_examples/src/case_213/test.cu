
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8) {
for (int i=0; i < var_1; ++i) {
  for (int i=0; i < var_2; ++i) {
    comp += (-1.0942E27f / (var_3 / var_4));
comp += -1.9773E36f - atanf((var_5 + var_6 - ceilf(floorf(atanf((-1.8733E-36f * (var_7 - (+1.6776E35f - var_8))))))));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9);
  cudaDeviceSynchronize();

  return 0;
}
