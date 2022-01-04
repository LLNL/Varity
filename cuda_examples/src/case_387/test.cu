
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,int var_3,float var_4,float var_5,float var_6,float var_7) {
if (comp == cosf(var_1 - +1.8906E35f - (+1.1216E14f / var_2))) {
  comp = (+1.1584E-27f / (var_4 + (-1.9146E35f + log10f((-1.1156E-35f * var_5)))));
comp += -1.8193E-41f + -1.0915E-35f - var_6;
comp += ldexpf(+1.5201E-41f, 2);
for (int i=0; i < var_3; ++i) {
  comp = var_7 * -1.4707E-41f;
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8);
  cudaDeviceSynchronize();

  return 0;
}
