
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1) {
if (comp == coshf(+1.4691E-36f)) {
  for (int i=0; i < var_1; ++i) {
    comp += -1.2061E10f / +1.2134E-37f / -1.9037E36f + -1.1056E35f;
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

  compute<<<1,1>>>(tmp_1,tmp_2);
  cudaDeviceSynchronize();

  return 0;
}
