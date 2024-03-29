
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6) {
comp += ldexpf((+1.0284E34f / sqrtf((var_2 / cosf((-1.0213E25f * (var_3 + +1.8102E-43f)))))), 2);
for (int i=0; i < var_1; ++i) {
  float tmp_1 = +0.0f;
float tmp_2 = -1.1541E-42f;
float tmp_3 = (var_4 * (var_5 - -1.1607E-35f));
comp = tmp_3 / tmp_2 + tmp_1 / var_6 - -0.0f;
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7);
  cudaDeviceSynchronize();

  return 0;
}
