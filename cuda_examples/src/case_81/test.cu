
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,int var_5,float var_6,float var_7,float var_8,float var_9,float var_10) {
if (comp == (+1.1633E-35f / ceilf(var_3 / +1.3331E35f * var_4))) {
  for (int i=0; i < var_1; ++i) {
    for (int i=0; i < var_2; ++i) {
      comp = floorf(-1.1702E36f);
for (int i=0; i < var_5; ++i) {
  comp = logf((+0.0f * (var_6 / (var_7 - -0.0f / -1.0583E13f))));
}
if (comp == (-1.2608E34f - var_8)) {
  float tmp_1 = +1.3991E35f;
float tmp_2 = +0.0f / (+1.4080E-43f + var_9);
comp = tmp_2 / tmp_1 / sqrtf((-1.7990E36f / var_10));
}
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
  int tmp_3 = atoi(argv[3]);
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  int tmp_6 = atoi(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11);
  cudaDeviceSynchronize();

  return 0;
}
