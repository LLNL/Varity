
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2) {
float tmp_1 = +0.0f;
comp += tmp_1 - (var_1 - (var_2 - +1.4829E-37f - -1.4228E-44f));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3);
  cudaDeviceSynchronize();

  return 0;
}
