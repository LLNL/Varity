
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,int var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31,float var_32,float var_33,float var_34,float var_35,float var_36,float var_37,float var_38,float var_39,float var_40,float var_41) {
if (comp == var_1 / +0.0f - var_2 - (var_3 * var_4 - var_5)) {
  comp = +1.4329E-43f * (+0.0f / (var_7 / -1.1450E36f));
comp += asinf((+1.5663E-22f / var_8 + logf(ceilf((var_9 + +1.8261E-44f * fmodf((var_10 + sqrtf(+1.6147E-36f)), (+1.2292E35f * (-0.0f - +1.5430E-41f))))))));
comp += (var_11 * sinf((+1.5481E36f / var_12 - atanf(tanhf(-1.8254E-44f)))));
if (comp == (+1.6499E35f * atanf(atanf(var_13 / var_14)))) {
  comp += var_15 - +0.0f / var_16;
float tmp_1 = var_17 * +0.0f - var_18 / tanhf(-1.6246E-36f);
comp += tmp_1 - log10f((+1.3728E-44f / fmodf((var_19 / (var_20 * +0.0f / -1.4205E-35f / +1.7331E-41f)), var_21 + var_22 * (var_23 / +1.4503E34f))));
comp = (+1.9415E34f * (var_24 * +1.0316E-29f * powf(+1.4698E-42f, -1.9273E35f - +1.8795E34f)));
}
if (comp < -1.5516E21f / (+1.6774E35f * (var_25 + -1.9158E36f))) {
  comp += (var_26 * (-1.3676E-37f / (var_27 / var_28)));
float tmp_2 = log10f((var_29 * (+1.6247E-42f / var_30)));
comp += tmp_2 * (-1.5496E-42f / var_31 + (var_32 + var_33 - var_34));
}
for (int i=0; i < var_6; ++i) {
  comp += (+1.8339E-43f + -0.0f * (-1.8858E-41f + (var_35 + expf((var_36 + var_37 / -0.0f / var_38)))));
comp = (-1.1668E-37f + fabsf((+1.9394E34f + var_39 / var_40 + (var_41 * -1.3973E-21f))));
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
  int tmp_7 = atoi(argv[7]);
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
  float tmp_36 = atof(argv[36]);
  float tmp_37 = atof(argv[37]);
  float tmp_38 = atof(argv[38]);
  float tmp_39 = atof(argv[39]);
  float tmp_40 = atof(argv[40]);
  float tmp_41 = atof(argv[41]);
  float tmp_42 = atof(argv[42]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33,tmp_34,tmp_35,tmp_36,tmp_37,tmp_38,tmp_39,tmp_40,tmp_41,tmp_42);
  cudaDeviceSynchronize();

  return 0;
}
