
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,int var_4,int var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22) {
if (comp < var_1 * (-0.0f - -1.0488E-41f)) {
  if (comp >= (+1.6809E-44f / atanf(+0.0f + (var_2 + var_3 + -1.9413E35f)))) {
    float tmp_1 = var_6 / var_7 * logf(floorf(-1.8625E-14f));
float tmp_2 = -1.4014E-35f;
comp += tmp_2 / tmp_1 + (+1.1014E14f - var_8 - -1.0898E-43f);
for (int i=0; i < var_4; ++i) {
  comp = var_9 + powf((+1.8927E36f * (var_10 * coshf(var_11 / (var_12 - -1.2219E-44f)))), var_13 + (+1.1021E13f / expf((-1.4460E-35f + -0.0f))));
}
for (int i=0; i < var_5; ++i) {
  comp += (-1.4263E-41f / +1.4689E-37f * -1.7224E26f);
comp = var_14 * (+0.0f / atan2f(+1.8768E-42f, sinf(acosf(+0.0f))));
}
if (comp <= var_15 / var_16 + (-1.8000E-44f + +1.3862E-35f)) {
  float tmp_3 = +0.0f;
comp += tmp_3 * var_17 / (-1.1685E-1f * -1.1878E35f + +1.0889E34f);
float tmp_4 = -1.3936E36f;
comp = tmp_4 * fmodf(var_18 / (-1.4626E-11f * log10f(-0.0f)), var_19 - (var_20 - -1.9467E-26f * (var_21 - (var_22 * +1.4935E35f))));
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
  float tmp_2 = atof(argv[2]);
  float tmp_3 = atof(argv[3]);
  float tmp_4 = atof(argv[4]);
  int tmp_5 = atoi(argv[5]);
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
  float tmp_19 = atof(argv[19]);
  float tmp_20 = atof(argv[20]);
  float tmp_21 = atof(argv[21]);
  float tmp_22 = atof(argv[22]);
  float tmp_23 = atof(argv[23]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23);
  cudaDeviceSynchronize();

  return 0;
}
