
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24) {
if (comp <= +1.1835E-37f * -0.0f * +1.4158E18f) {
  if (comp <= (var_1 - +1.8254E-18f * var_2)) {
    if (comp < (-1.5993E35f + atanf(var_3 / -1.0063E34f / (+1.4389E-35f * (var_4 + (var_5 + +1.5755E-42f)))))) {
      comp = (-1.4594E-35f + (var_6 + var_7));
comp = +1.6699E36f + (-1.0754E36f - var_8 * tanhf((-1.0677E-43f / (-1.9029E-41f + (var_9 * (-1.4207E-22f * (var_10 * var_11)))))));
comp = (+1.9140E36f + logf(-1.6804E-30f + floorf((var_12 / +1.3205E-27f * +0.0f - (var_13 / var_14)))));
comp = (var_15 * +1.2529E-42f / +0.0f + (-1.5310E25f / (+1.3544E-35f + +1.3707E3f)));
if (comp >= (var_16 / powf((+0.0f / +1.3461E-42f / var_17 / fmodf((-1.3440E-44f + var_18 / (var_19 * +1.0866E35f)), -0.0f)), -1.6627E36f / var_20))) {
  comp = -0.0f + (-1.6202E34f - var_21);
comp += cosf(fmodf(+1.6898E-43f, (var_22 - +1.8240E-36f / +1.3727E-35f * ldexpf((var_23 / var_24), 2))));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25);
  cudaDeviceSynchronize();

  return 0;
}