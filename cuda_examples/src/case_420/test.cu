
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float* var_13,float var_14,float var_15,float var_16,float* var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float* var_28,float var_29,float var_30) {
if (comp == (var_4 + -1.8522E-37f + var_5 - (var_6 / cosf((-1.2784E17f * (var_7 / tanhf(var_8 + -0.0f - var_9))))))) {
  comp += (-1.1977E35f * var_10 / (+1.9911E-35f * (+1.2078E-36f * atanf((var_11 / +1.4141E-41f + var_12)))));
for (int i=0; i < var_1; ++i) {
  var_13[i] = (var_14 / log10f(+1.0240E-35f));
comp += var_13[i] - var_15 + -0.0f;
comp += +1.4381E-41f / +1.2882E-36f * var_16 / -1.5557E-15f;
}
for (int i=0; i < var_2; ++i) {
  var_17[i] = +0.0f;
comp = var_17[i] / (-1.5308E-36f - (-0.0f + var_18 + (+1.4126E-37f * var_19)));
float tmp_1 = var_20 * var_21 * +0.0f * (-0.0f / +1.7610E-37f / var_22);
comp = tmp_1 * var_23 / var_24 * (var_25 - (var_26 - var_27));
}
for (int i=0; i < var_3; ++i) {
  var_28[i] = +0.0f;
comp += var_28[i] - +1.6726E34f - var_29 * (+1.3177E-37f + (-1.9295E36f / var_30));
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
  float* tmp_14 = initPointer( atof(argv[14]) );
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);
  float tmp_17 = atof(argv[17]);
  float* tmp_18 = initPointer( atof(argv[18]) );
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
  float* tmp_29 = initPointer( atof(argv[29]) );
  float tmp_30 = atof(argv[30]);
  float tmp_31 = atof(argv[31]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31);
  cudaDeviceSynchronize();

  return 0;
}
