
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,int var_3,int var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float* var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float* var_20,float var_21) {
if (comp == (-0.0f / var_1 / expf(acosf(-1.2513E-43f - var_2 / +1.9779E-37f)))) {
  comp = (+1.8974E-44f + +1.2493E-37f + -1.0347E-30f * (-1.4569E27f - var_5));
comp = +1.1623E-5f * log10f(var_6 + (var_7 + -1.3131E-37f * +1.7783E-37f));
comp += var_8 - (-0.0f + fabsf(-1.0131E21f + atanf(powf(coshf((var_9 - (-1.4074E-44f - var_10 / -1.6276E34f - +1.0109E-7f))), (var_11 - log10f(+1.7576E-35f))))));
for (int i=0; i < var_3; ++i) {
  var_12[i] = (var_13 / (var_14 * +1.4414E-42f / sinhf(-1.5031E-44f - (-0.0f - var_15 - (var_16 / (-1.4357E35f - -1.7691E36f))))));
comp += var_12[i] / -1.0193E-35f * var_17;
comp += +0.0f - -0.0f / (var_18 * -1.2206E36f);
comp += var_19 * -1.5791E-43f;
}
for (int i=0; i < var_4; ++i) {
  var_20[i] = +1.0155E35f;
comp = var_20[i] / -0.0f + -1.0106E35f * -1.8495E36f * var_21;
comp += +1.3088E34f * +1.2880E-23f - -1.1207E10f;
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
  float* tmp_13 = initPointer( atof(argv[13]) );
  float tmp_14 = atof(argv[14]);
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);
  float tmp_17 = atof(argv[17]);
  float tmp_18 = atof(argv[18]);
  float tmp_19 = atof(argv[19]);
  float tmp_20 = atof(argv[20]);
  float* tmp_21 = initPointer( atof(argv[21]) );
  float tmp_22 = atof(argv[22]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22);
  cudaDeviceSynchronize();

  return 0;
}
