
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,int var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19) {
if (comp >= +1.2221E-36f - var_1 + var_2 * var_3) {
  float tmp_1 = (var_5 + logf((+0.0f * (var_6 - -1.1648E-8f * cosf(var_7 / coshf((var_8 + (var_9 + var_10))))))));
float tmp_2 = -1.2419E34f;
comp += tmp_2 * tmp_1 + (+1.5198E-18f + (var_11 * (+1.6220E35f / cosf(sqrtf(acosf((-0.0f * (var_12 - -0.0f))))))));
comp = (var_13 * acosf((var_14 - powf((-0.0f + -1.6754E23f + tanhf(ldexpf((+1.5071E34f / (var_15 * (+0.0f + sqrtf(var_16 / expf((-1.9180E35f - var_17)))))), 2))), (var_18 * -1.1341E-37f)))));
for (int i=0; i < var_4; ++i) {
  comp = (+0.0f + var_19 + sinf((-1.7125E-36f + -1.1283E-44f)));
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
  int tmp_5 = atoi(argv[5]);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20);
  cudaDeviceSynchronize();

  return 0;
}
