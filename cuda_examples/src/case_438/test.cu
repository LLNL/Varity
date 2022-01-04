
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,int var_3,int var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31,float var_32,float var_33,float var_34) {
if (comp <= atan2f(-1.9609E36f, (-1.0909E35f - (-0.0f * -0.0f - +1.6894E36f * var_1 - var_2)))) {
  comp += +0.0f / var_5 / asinf(sinhf((-0.0f + (var_6 - var_7 / (var_8 + -1.2708E34f)))));
comp += (var_9 / +1.8863E34f - (+1.5962E35f * -1.7898E8f));
float tmp_1 = var_10 - +1.5170E14f / (var_11 * var_12);
comp = tmp_1 / var_13 * atan2f((var_14 * fmodf((var_15 * sqrtf(+1.4350E-42f)), -1.6143E-44f)), var_16 - +1.7299E-41f * var_17 * var_18);
for (int i=0; i < var_3; ++i) {
  float tmp_2 = (var_19 + +1.5840E19f);
comp += tmp_2 + var_20 + (var_21 / log10f(+1.1656E-35f));
}
if (comp <= (var_22 - var_23 * +1.3236E15f)) {
  float tmp_3 = cosf(var_24 / (var_25 + cosf(+1.3723E-6f)));
comp = tmp_3 - var_26 - +1.8483E35f / (var_27 / coshf((+1.4827E35f * var_28 / +1.4063E-42f - (var_29 - acosf(var_30 - (-0.0f - var_31 - +1.7038E-35f))))));
}
for (int i=0; i < var_4; ++i) {
  float tmp_4 = var_32 - var_33 + (-1.2868E35f + (+1.4498E-36f - log10f(+1.8560E35f)));
comp = tmp_4 + (var_34 + -1.4707E-35f);
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
  float tmp_24 = atof(argv[24]);
  float tmp_25 = atof(argv[25]);
  float tmp_26 = atof(argv[26]);
  float tmp_27 = atof(argv[27]);
  float tmp_28 = atof(argv[28]);
  float tmp_29 = atof(argv[29]);
  float tmp_30 = atof(argv[30]);
  float tmp_31 = atof(argv[31]);
  float tmp_32 = atof(argv[32]);
  float tmp_33 = atof(argv[33]);
  float tmp_34 = atof(argv[34]);
  float tmp_35 = atof(argv[35]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33,tmp_34,tmp_35);
  cudaDeviceSynchronize();

  return 0;
}
