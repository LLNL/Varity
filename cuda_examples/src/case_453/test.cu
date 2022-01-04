
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6) {
if (comp > (var_2 / +0.0f)) {
  for (int i=0; i < var_1; ++i) {
    comp += (-1.7167E-41f / (+0.0f - (var_3 - -1.5503E-35f)));
if (comp > (+1.2504E36f * coshf(+1.2904E-42f * var_4))) {
  float tmp_1 = tanhf((-1.5664E-8f / var_5 / (-1.3954E35f / -1.1985E-35f)));
float tmp_2 = -1.7700E35f;
float tmp_3 = -1.6487E-13f;
comp = tmp_3 - tmp_2 + tmp_1 + (-1.5199E17f * (var_6 / +1.2018E-35f));
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
