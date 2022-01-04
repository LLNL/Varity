
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12) {
for (int i=0; i < var_1; ++i) {
  if (comp >= atan2f(acosf(+0.0f - (-1.6874E-42f / (-1.8060E36f / (+1.6270E-44f + var_2)))), (+1.6197E34f - +1.4289E34f * +0.0f / -0.0f))) {
    comp = (+1.8114E-37f / ceilf(var_4 + var_5 / +1.5925E34f - var_6));
if (comp == coshf(-1.7999E-35f)) {
  comp = var_7 - var_8 - asinf(ldexpf(-1.3128E35f, 2));
}
for (int i=0; i < var_3; ++i) {
  comp = ldexpf((var_9 - var_10 - var_11), 2);
comp = +1.6771E-35f * var_12 / +1.6151E-19f;
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
  int tmp_4 = atoi(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13);
  cudaDeviceSynchronize();

  return 0;
}
