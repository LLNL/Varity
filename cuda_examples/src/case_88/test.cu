
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,int var_6,float var_7,float var_8,float var_9,float var_10) {
if (comp >= (var_1 - (+1.3761E-43f / (+1.3829E-41f / -1.3286E-41f)))) {
  if (comp == ceilf(var_2 + (-1.8982E-35f + var_3 / (var_4 - var_5)))) {
    comp = (-0.0f / var_7 + powf((var_8 * cosf(acosf(+1.8122E-25f + (+1.2258E-37f * (var_9 - +1.6384E-36f))))), -0.0f));
for (int i=0; i < var_6; ++i) {
  comp += (var_10 / asinf(sinf(ldexpf(+1.4889E-42f, 2))));
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
  int tmp_7 = atoi(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11);
  cudaDeviceSynchronize();

  return 0;
}
