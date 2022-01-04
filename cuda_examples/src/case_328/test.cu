
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,int var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17) {
if (comp == (-0.0f * (-1.4378E-36f + var_2 + (-0.0f - -1.1927E-36f)))) {
  for (int i=0; i < var_1; ++i) {
    if (comp <= (var_3 * var_4 / asinf(-0.0f))) {
      comp += fmodf(+1.0959E-6f - (-1.3753E-36f * sqrtf(var_6 / var_7)), (var_8 / (-1.8739E-41f * var_9 / expf(-1.0283E-36f / (var_10 / var_11)))));
for (int i=0; i < var_5; ++i) {
  comp += (var_12 * -1.4153E-37f);
}
if (comp > (var_13 / -1.0419E-37f)) {
  float tmp_1 = -1.4701E36f;
comp += tmp_1 * (-0.0f + (-1.1467E-41f * (var_14 / (var_15 + -0.0f))));
comp = +1.4184E36f + var_16 / var_17;
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
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);
  float tmp_17 = atof(argv[17]);
  float tmp_18 = atof(argv[18]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18);
  cudaDeviceSynchronize();

  return 0;
}
