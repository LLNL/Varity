
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float* var_10,float var_11,float var_12,float* var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29) {
if (comp == -1.8217E-35f - +1.8380E35f) {
  float tmp_1 = (-1.3938E34f * (+1.3584E36f + (var_3 - var_4)));
float tmp_2 = (var_5 - var_6 + var_7 - var_8 - var_9 + +1.7052E-43f);
float tmp_3 = -1.4184E-37f;
comp += tmp_3 + tmp_2 - tmp_1 - -1.3002E35f + (-1.0984E-35f * -0.0f / -1.0064E-42f + -0.0f);
for (int i=0; i < var_1; ++i) {
  var_10[i] = +1.6111E-43f;
comp += var_10[i] / (-1.2321E4f / var_11);
comp += (+1.1547E-42f - var_12 + logf(-1.3089E-35f + +1.2171E-37f));
}
for (int i=0; i < var_2; ++i) {
  comp += (-1.6667E-3f - atan2f((-1.9244E3f + (+1.1787E-36f + var_14)), -0.0f));
var_13[i] = -1.0145E-37f;
comp += var_13[i] / var_15 + var_16 - +1.7152E-36f / coshf(expf(-0.0f / +1.8396E-36f * fabsf((var_17 / atan2f(-1.1384E-35f * (var_18 - (var_19 * -1.5425E34f)), +1.6398E-42f)))));
}
if (comp <= (+0.0f / (var_20 + (+1.5149E-37f - (var_21 - var_22))))) {
  comp += (var_23 + var_24 + +1.9793E-29f - -1.6197E-36f + -1.5127E35f + var_25);
comp = var_26 / -1.2263E4f;
comp += (var_27 + (var_28 + var_29));
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
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float* tmp_11 = initPointer( atof(argv[11]) );
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30);
  cudaDeviceSynchronize();

  return 0;
}
