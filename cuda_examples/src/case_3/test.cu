
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6) {
for (int i=0; i < var_1; ++i) {
  if (comp == var_2 - -1.9330E-35f / +1.4582E34f - (-0.0f + -1.3565E-36f)) {
    comp = asinf((-1.4529E-9f / +1.7293E-43f + -1.4389E-41f));
comp = var_3 / +1.1878E-41f / (+1.3303E-43f - -1.7053E-44f);
comp = coshf((-1.4761E-41f + var_4 / var_5));
comp += var_6 * (+1.4955E35f / -0.0f - (+1.5835E-41f * +1.2444E-43f));
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
