
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5) {
if (comp <= +1.5806E-35f * var_1) {
  comp += var_2 * (-1.8370E-5f - (var_3 - var_4 * +1.7035E8f));
comp += -1.0182E-36f / (-1.5508E-5f / cosf((-1.3974E-37f + fabsf((+1.2100E34f + (+1.6483E35f + (var_5 + +1.0791E-41f)))))));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6);
  cudaDeviceSynchronize();

  return 0;
}
