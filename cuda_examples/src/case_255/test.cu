
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31) {
if (comp == (+1.6324E-35f / +1.7344E-22f + +1.5046E34f)) {
  comp = var_2 * -1.2741E-35f;
comp += (-1.2420E-37f / -1.5003E-44f);
comp = (-1.2703E23f - -1.4485E35f - (-1.0363E-25f / -0.0f));
for (int i=0; i < var_1; ++i) {
  float tmp_1 = (-1.8322E36f - +0.0f + var_3 - +1.4168E35f);
comp = tmp_1 * ceilf((var_4 / var_5 + var_6 / var_7));
}
if (comp < (var_8 - -1.5338E-37f * tanhf(var_9 - -1.7752E-41f + var_10))) {
  comp = -1.6042E-44f + (var_11 + +1.4285E34f);
comp += -1.1709E-44f / atanf((-1.9398E34f * (-1.1727E-43f + (var_12 + fabsf(powf((var_13 * (var_14 + fabsf((var_15 / var_16 - (var_17 + var_18))))), +1.3976E36f))))));
comp += (-1.2307E-37f - (+0.0f / var_19 - coshf((-1.5122E-19f * atan2f(+1.9070E-36f, -0.0f)))));
}
if (comp > -1.3863E6f / -1.8961E34f - cosf(var_20 / ceilf((var_21 * var_22 * (var_23 * (var_24 / -0.0f)))))) {
  float tmp_2 = -1.8267E36f;
float tmp_3 = fabsf(-1.2176E22f * tanhf((var_25 / var_26)));
comp += tmp_3 / tmp_2 + -1.3408E-37f + floorf((-1.4715E-42f + logf(-1.9427E13f - powf(var_27 - var_28 - ceilf(-1.1814E16f * (+1.9660E7f * -1.6151E-1f / cosf((var_29 - (var_30 + var_31))))), coshf(-1.9162E36f)))));
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
  float tmp_25 = atof(argv[25]);
  float tmp_26 = atof(argv[26]);
  float tmp_27 = atof(argv[27]);
  float tmp_28 = atof(argv[28]);
  float tmp_29 = atof(argv[29]);
  float tmp_30 = atof(argv[30]);
  float tmp_31 = atof(argv[31]);
  float tmp_32 = atof(argv[32]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32);
  cudaDeviceSynchronize();

  return 0;
}
