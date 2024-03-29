
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float* var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22) {
for (int i=0; i < var_1; ++i) {
  if (comp < coshf(+1.8494E36f / (var_4 / -1.7419E35f))) {
    if (comp >= var_5 / (-1.2732E34f * (-1.6059E-37f / (+1.0834E-44f * var_6)))) {
      comp += (var_7 / var_8 - +1.8188E35f);
comp += var_9 + (-1.2492E-35f / var_10);
float tmp_1 = ceilf(-1.6458E36f);
comp = tmp_1 / var_11 * asinf(-1.8096E36f);
for (int i=0; i < var_2; ++i) {
  var_12[i] = +1.8832E-42f;
comp = var_12[i] + (+1.6264E20f - var_13 - (var_14 * +1.1822E-35f));
comp += var_15 + +1.3064E-28f;
}
for (int i=0; i < var_3; ++i) {
  comp = (+1.5325E35f + (var_16 - ldexpf(cosf(+0.0f), 2)));
comp = sinhf((+1.6014E-43f - acosf(var_17 * (var_18 - (+1.7912E-43f * -1.9747E-36f / var_19)))));
comp = ceilf(-1.3857E-35f * (-0.0f * var_20));
comp = (var_21 * var_22);
}
if (comp < +1.0727E-37f / (-1.8503E-35f * fmodf((+1.0860E36f - -1.9976E-35f), -1.0564E9f))) {
  comp += atan2f(-1.3276E-41f, +1.4777E-44f);
comp = atanf(-0.0f - -1.8053E-42f - +0.0f / +1.1653E36f);
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
  float* tmp_13 = initPointer( atof(argv[13]) );
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
