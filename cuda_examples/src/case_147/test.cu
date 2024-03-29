
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10) {
if (comp < sqrtf(+1.6099E-43f)) {
  if (comp >= +1.3656E16f * var_1 / var_2 / sinhf(-0.0f + (-1.9300E-42f * +1.3748E-37f))) {
    float tmp_1 = -1.2122E-35f - (+0.0f + +0.0f);
comp = tmp_1 * var_4 - var_5;
float tmp_2 = -1.0392E-43f;
comp += tmp_2 * (var_6 + (var_7 + (var_8 - var_9)));
for (int i=0; i < var_3; ++i) {
  float tmp_3 = +1.9801E34f * log10f((+1.9608E-11f + +0.0f * +0.0f - (var_10 - (-1.1255E-37f * -1.2478E12f))));
float tmp_4 = -1.7650E-36f;
comp = tmp_4 / tmp_3 - -0.0f / +1.4563E-41f;
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
  int tmp_4 = atoi(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11);
  cudaDeviceSynchronize();

  return 0;
}
