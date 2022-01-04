
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,int var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float* var_21,float* var_22,float var_23,float var_24,float var_25,float var_26,float var_27) {
if (comp >= atan2f(+1.8263E-35f * (-1.4330E-35f + var_1), atanf(-1.7431E-24f - var_2))) {
  if (comp < var_3 * -1.9534E-16f / var_4) {
    if (comp > -1.3650E13f * (+1.4388E10f / (-0.0f + sqrtf(acosf(-1.0829E-37f + (var_5 / var_6 / (var_7 / -1.6908E-44f))))))) {
      float tmp_1 = var_9 + var_10;
float tmp_2 = var_11 * (+1.2320E-44f * var_12);
comp = tmp_2 / tmp_1 / var_13 - var_14;
if (comp > -1.5878E36f * (+1.2811E20f + var_15)) {
  comp += (-1.6012E-35f * atanf(-1.0106E-36f));
float tmp_3 = (-1.8678E-42f - +0.0f / expf(var_16 / atanf((-1.2718E-42f / (var_17 + (+1.1095E-35f * var_18))))));
comp = tmp_3 / -1.0010E-44f - +0.0f;
comp += (var_19 * (-1.4058E-41f * var_20));
}
for (int i=0; i < var_8; ++i) {
  var_21[i] = -1.5802E-37f;
var_22[i] = +1.4171E36f + (+1.0369E-37f - (var_23 - var_24));
comp = var_22[i] - var_21[i] / ceilf(+0.0f - ldexpf((+1.0567E-44f - var_25), 2));
}
if (comp > (var_26 + (+1.6345E-37f + (-1.5608E0f + (+1.0870E35f - var_27))))) {
  comp += (-1.2127E-41f * -1.5377E15f);
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
  float tmp_2 = atof(argv[2]);
  float tmp_3 = atof(argv[3]);
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  int tmp_9 = atoi(argv[9]);
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
  float* tmp_22 = initPointer( atof(argv[22]) );
  float* tmp_23 = initPointer( atof(argv[23]) );
  float tmp_24 = atof(argv[24]);
  float tmp_25 = atof(argv[25]);
  float tmp_26 = atof(argv[26]);
  float tmp_27 = atof(argv[27]);
  float tmp_28 = atof(argv[28]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28);
  cudaDeviceSynchronize();

  return 0;
}
