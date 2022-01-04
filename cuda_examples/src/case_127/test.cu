
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,int var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22) {
if (comp > (-0.0f / var_5 + +1.8646E35f + -0.0f - (-1.2792E-42f + -1.1574E-35f))) {
  for (int i=0; i < var_1; ++i) {
    for (int i=0; i < var_2; ++i) {
      comp += -0.0f + logf((-1.3791E-42f / var_6 * (var_7 * (+1.8509E-44f * (var_8 * +0.0f)))));
float tmp_1 = +1.3279E35f;
comp += tmp_1 + atanf(ceilf((+1.3833E-36f + var_9)));
for (int i=0; i < var_3; ++i) {
  comp += -0.0f + +0.0f + -1.7904E-43f - -1.8219E-43f;
}
if (comp >= (var_10 / +0.0f * (+1.4879E-36f * var_11))) {
  comp += floorf(+1.3935E-1f + (+0.0f + floorf(expf(+1.2877E-37f / var_12 / +1.3708E-44f / logf((var_13 * (var_14 / var_15)))))));
comp = cosf((var_16 + sinhf(-1.5834E36f)));
}
for (int i=0; i < var_4; ++i) {
  float tmp_2 = (var_17 + fabsf(var_18 - (-1.2421E29f + var_19 + +1.8422E35f * -1.4727E36f)));
comp += tmp_2 / var_20 / atanf(var_21 / (var_22 * (+0.0f * (-1.6922E-14f + -1.3643E-37f))));
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
  int tmp_4 = atoi(argv[4]);
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
  float tmp_21 = atof(argv[21]);
  float tmp_22 = atof(argv[22]);
  float tmp_23 = atof(argv[23]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23);
  cudaDeviceSynchronize();

  return 0;
}
