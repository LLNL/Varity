
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29) {
float tmp_1 = +1.2717E35f;
comp += tmp_1 + var_1 / (var_2 / (var_3 + (var_4 - (var_5 + +1.1904E-44f))));
if (comp <= (-1.6650E35f - var_6)) {
  comp += fabsf(-0.0f);
comp += (+1.5888E-44f + (var_7 + var_8));
float tmp_2 = +0.0f;
comp += tmp_2 * log10f(+1.8298E-42f);
}
if (comp >= var_9 / var_10 - -1.3790E36f / +1.9448E-37f / var_11) {
  float tmp_3 = +0.0f + (var_12 * (-1.2287E36f * (-1.7564E-44f + var_13)));
comp = tmp_3 - (var_14 / var_15 * logf((-0.0f - (+1.7327E-20f + (+1.0167E-35f + (var_16 / var_17))))));
}
if (comp == cosf(fmodf((var_18 * var_19), -1.1589E-37f - (-1.0502E-42f - var_20)))) {
  comp += var_21 * log10f(-0.0f + (var_22 / coshf((var_23 * (var_24 - -1.0887E36f)))));
float tmp_4 = (+0.0f * var_25 + (+1.0707E-43f + var_26 - +1.3600E-35f));
comp = tmp_4 / (+0.0f - atan2f(-1.4231E21f, var_27 + var_28 - acosf(-0.0f + (+1.3707E-35f - var_29))));
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
  float tmp_26 = atof(argv[26]);
  float tmp_27 = atof(argv[27]);
  float tmp_28 = atof(argv[28]);
  float tmp_29 = atof(argv[29]);
  float tmp_30 = atof(argv[30]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30);
  cudaDeviceSynchronize();

  return 0;
}
