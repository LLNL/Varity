
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1) {
if (comp > cosf((-1.2114E34f * +1.6991E-28f * (+1.6129E-37f - -1.0721E-44f)))) {
  comp = (-0.0f + -0.0f / var_1 + (-0.0f - -1.2560E12f));
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

  compute<<<1,1>>>(tmp_1,tmp_2);
  cudaDeviceSynchronize();

  return 0;
}
