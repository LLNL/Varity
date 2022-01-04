
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25) {
if (comp == -1.9467E-41f - var_4 * +1.9051E35f) {
  if (comp > log10f(fmodf((var_5 + expf((var_6 * (+1.7263E24f / (-1.5881E29f * sinf((-0.0f + var_7 / var_8))))))), fabsf(+1.4663E34f)))) {
    for (int i=0; i < var_1; ++i) {
      float tmp_1 = (+1.9916E-37f / var_9 * -1.1234E27f);
comp = tmp_1 / -1.6073E-35f + var_10 - -0.0f;
float tmp_2 = -1.2121E36f;
comp = tmp_2 - -1.4484E-41f / var_11 * -1.5109E-20f - (var_12 + logf(var_13 * ceilf(-1.6841E-41f)));
if (comp == (var_14 - +1.3758E-36f * +1.5062E35f)) {
  float tmp_3 = +1.5421E35f;
comp = tmp_3 / +0.0f - (+1.6900E16f / (var_15 * var_16 + +1.2085E-43f));
float tmp_4 = var_17 - var_18 + var_19 - (-1.8552E-35f - +0.0f - var_20);
comp += tmp_4 / (-1.9335E-43f * +1.9013E24f);
}
for (int i=0; i < var_2; ++i) {
  comp = (+1.0634E-42f + var_21 / (var_22 + -1.9728E36f));
}
for (int i=0; i < var_3; ++i) {
  comp += -1.5732E-43f + -0.0f - var_23 - var_24;
float tmp_5 = +1.4165E-35f;
comp += tmp_5 / (var_25 + acosf((+1.4707E-36f / -1.0243E-35f)));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26);
  cudaDeviceSynchronize();

  return 0;
}
