
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,int var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float* var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31,float var_32,float var_33,float var_34,float var_35,float var_36,float var_37,float var_38,float var_39,float var_40,float var_41,float var_42) {
for (int i=0; i < var_1; ++i) {
  for (int i=0; i < var_2; ++i) {
    if (comp < -1.3991E35f + var_3 * +1.4162E9f / var_4) {
      if (comp <= -1.1995E-9f - -1.7017E-37f / var_5 / (var_6 + +1.8188E-35f)) {
        float tmp_1 = (var_8 / var_9 - +0.0f);
comp += tmp_1 / (+1.9210E35f / var_10 * -1.7824E35f + (-1.4496E-37f * expf((var_11 - fmodf(+1.2371E-44f - (-1.4016E-36f + var_12), (+1.4381E36f / +1.3855E34f * +1.6777E-27f))))));
for (int i=0; i < var_7; ++i) {
  var_13[i] = +0.0f * powf((-1.0946E5f * (+1.9144E-43f + var_14 - var_15 - var_16 / var_17)), var_18 - (-1.0446E-35f + var_19 * (+1.2310E-35f / (var_20 / var_21))));
float tmp_2 = +1.2608E-22f;
comp = tmp_2 * var_13[i] + (+1.0021E35f - floorf((+1.6976E36f / var_22 - (var_23 - tanhf(var_24 / (var_25 * (var_26 * -0.0f)))))));
}
if (comp <= (+0.0f * (var_27 - +1.3131E34f))) {
  comp += var_28 - +1.9225E36f;
}
if (comp > (var_29 - (-1.7616E-41f * (var_30 - var_31)))) {
  comp = var_32 + -1.3167E36f - (-1.4523E1f * var_33 / (var_34 / var_35));
float tmp_3 = +1.6180E-44f / var_36 - (var_37 + var_38 - (-1.8663E-37f + -0.0f));
comp = tmp_3 / (-1.2382E35f * powf((+1.7628E-42f + var_39 / ldexpf(var_40 / coshf(-1.5175E35f / var_41), 2)), var_42 - +0.0f));
}
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
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  int tmp_8 = atoi(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float* tmp_14 = initPointer( atof(argv[14]) );
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
  float tmp_43 = atof(argv[43]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33,tmp_34,tmp_35,tmp_36,tmp_37,tmp_38,tmp_39,tmp_40,tmp_41,tmp_42,tmp_43);
  cudaDeviceSynchronize();

  return 0;
}
