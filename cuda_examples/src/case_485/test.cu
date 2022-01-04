
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23) {
for (int i=0; i < var_1; ++i) {
  if (comp == var_3 - sinf(fabsf(-1.4078E-37f * +1.4528E-41f / (+1.2785E29f + -1.5067E-24f)))) {
    float tmp_1 = -1.6583E-37f;
comp += tmp_1 + (-1.8459E-37f - fabsf((var_4 / var_5 / -1.8331E-23f - var_6)));
float tmp_2 = -1.0824E-42f + -0.0f;
comp += tmp_2 / (+1.6734E20f - (var_7 - (var_8 - (var_9 + var_10 - -1.9965E-37f))));
for (int i=0; i < var_2; ++i) {
  comp = (-1.2763E-42f / -1.1696E13f / log10f(floorf(fabsf(atanf(atanf(-1.1086E17f / (-0.0f + atanf(sqrtf(var_11 / (-1.2771E-35f / (+1.3172E-44f / var_12 + var_13)))))))))));
}
if (comp == atanf((var_14 - (var_15 / (var_16 - +1.4993E-29f - fmodf(-1.3230E-20f - var_17 - +1.1952E34f, +1.2697E-37f - (-1.5434E35f / var_18))))))) {
  comp = ceilf(var_19 * floorf((var_20 / (var_21 / +1.1530E-36f))));
comp = atan2f(tanhf(-1.6363E-43f / (-1.9051E-44f + -1.3996E-44f + (-1.6654E35f - -1.0940E-37f / +0.0f))), var_22 / var_23);
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
  float tmp_24 = atof(argv[24]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24);
  cudaDeviceSynchronize();

  return 0;
}
