
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6) {
if (comp <= var_2 + (-1.8131E36f + var_3)) {
  if (comp > atan2f((+1.0355E4f / (+1.3487E25f * atanf((var_4 / asinf(ldexpf(-1.0584E0f, 2)))))), (var_5 * (+1.9850E-26f - var_6 * -1.6918E-36f)))) {
    for (int i=0; i < var_1; ++i) {
      comp += -1.2283E-37f / +1.0912E-42f * -1.4820E-29f;
comp += +1.7001E-36f + (-0.0f + powf((+1.2842E-37f + asinf(+1.1682E-43f)), -1.4971E10f / (-0.0f - -1.1527E-43f)));
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
