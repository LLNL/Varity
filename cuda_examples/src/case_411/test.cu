
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22) {
comp = -0.0f * asinf(-1.4250E-37f);
float tmp_1 = +1.5977E25f;
comp = tmp_1 - var_3 + logf(-1.5157E8f + +1.3702E-42f);
for (int i=0; i < var_1; ++i) {
  comp = (-1.8297E-37f * -1.8644E-41f - sinf(fmodf((+1.0674E-36f + var_4 / -1.5221E-11f * -0.0f / (+1.5517E-3f / var_5)), fmodf(-1.9105E-35f, (var_6 / var_7 / -1.8187E34f * var_8 * var_9 / var_10)))));
float tmp_2 = +1.3993E-13f;
comp = tmp_2 / (-0.0f * logf((-0.0f - (+1.1006E35f / var_11))));
comp += var_12 - var_13 * (var_14 * (+1.4838E22f + var_15));
}
for (int i=0; i < var_2; ++i) {
  float tmp_3 = -1.8137E35f;
comp += tmp_3 / var_16 / (+1.9024E-43f * (var_17 / (var_18 - var_19)));
float tmp_4 = var_20 * var_21 / (-1.7084E-1f + +1.0482E-43f / (+1.1885E35f / -1.3962E36f));
comp = tmp_4 * (var_22 - -1.2407E35f);
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
  float tmp_6 = atof(argv[6]);
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
  float tmp_19 = atof(argv[19]);
  float tmp_20 = atof(argv[20]);
  float tmp_21 = atof(argv[21]);
  float tmp_22 = atof(argv[22]);
  float tmp_23 = atof(argv[23]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23);
  cudaDeviceSynchronize();

  return 0;
}
