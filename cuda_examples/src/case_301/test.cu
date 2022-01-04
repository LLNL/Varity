
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3) {
if (comp >= (var_1 / +1.6871E36f + (var_2 * var_3 * +1.1162E-35f))) {
  comp += atanf(-1.5007E35f * -1.7422E-5f - -1.2423E36f);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4);
  cudaDeviceSynchronize();

  return 0;
}
