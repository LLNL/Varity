
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,int var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13) {
if (comp >= +1.3822E-42f - var_1 / var_2 * var_3 / var_4) {
  comp += (var_6 * -0.0f / var_7 / sinhf(+0.0f - var_8 * (+0.0f / +1.2899E-44f)));
float tmp_1 = +1.7682E-35f;
float tmp_2 = -1.5314E-36f;
comp += tmp_2 * tmp_1 * -1.3259E-10f * (+1.4769E35f - -1.1545E-43f);
for (int i=0; i < var_5; ++i) {
  float tmp_3 = +1.1548E13f;
comp = tmp_3 - expf((var_9 - (var_10 - var_11 * var_12)));
comp += -1.4539E36f - -1.0891E-43f - (-1.5014E34f / (+1.2168E35f / (var_13 + +1.7839E-35f)));
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
  int tmp_6 = atoi(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14);
  cudaDeviceSynchronize();

  return 0;
}
