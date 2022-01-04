
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float* var_5,int var_6,int var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29) {
if (comp == (+0.0f - -1.2479E35f / (-1.8671E36f / coshf((+0.0f * (-0.0f + var_2 + (var_3 + var_4))))))) {
  if (comp < -1.5390E-42f / (-0.0f + floorf((-1.1163E17f - -1.4826E-36f)))) {
    for (int i=0; i < var_1; ++i) {
      float tmp_1 = -1.7034E-35f;
var_5[i] = sinf(+1.0246E35f);
comp = var_5[i] * tmp_1 - sqrtf(var_8 / -0.0f);
for (int i=0; i < var_6; ++i) {
  comp = sqrtf((-1.2861E-36f * sinf((+1.9299E17f - var_9 / +1.9421E-37f * var_10))));
comp = (var_11 * -1.6041E-25f - (var_12 * +0.0f - var_13));
}
for (int i=0; i < var_7; ++i) {
  comp = +1.8307E-18f * (-1.1635E-8f / -0.0f);
comp = (-0.0f * (var_14 * (var_15 - +0.0f - (var_16 / var_17))));
comp = sinhf((var_18 / acosf((var_19 + logf((var_20 - -0.0f))))));
}
if (comp > var_21 - expf(-1.0257E-36f)) {
  comp += (var_22 - var_23 - (-0.0f + var_24));
float tmp_2 = (+1.3188E35f / var_25 + sqrtf(var_26 * var_27 / -1.1334E-44f));
comp = tmp_2 - var_28 / (-1.7613E36f / -0.0f * var_29);
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
  float* tmp_6 = initPointer( atof(argv[6]) );
  int tmp_7 = atoi(argv[7]);
  int tmp_8 = atoi(argv[8]);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30);
  cudaDeviceSynchronize();

  return 0;
}
