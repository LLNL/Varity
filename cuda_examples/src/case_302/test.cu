
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float* var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31,float var_32,float var_33,float var_34,float var_35,float var_36) {
if (comp > (+1.9454E-43f / -1.6310E-41f - log10f(asinf(atanf(-1.4081E36f / +1.9580E-35f + ldexpf(-0.0f, 2)))))) {
  comp = logf((+1.6824E-35f + var_3));
comp = sinf(logf(+1.9683E35f * var_4 + (-1.3096E27f / (-1.0728E-42f / +1.3030E-44f))));
comp = -1.9873E3f - var_5 / sinf(atan2f(ceilf(-0.0f), -1.0034E23f / -1.9082E-42f - (+1.8208E-37f - (-1.0413E35f - var_6 - var_7))));
comp = var_8 + +1.5220E-42f * +1.6150E-37f;
for (int i=0; i < var_1; ++i) {
  comp += var_10 * var_11 - (var_12 - var_13);
comp += var_14 / var_15 + (var_16 - (+1.6045E29f / +1.6438E-30f));
var_9[i] = +1.9760E-41f * (var_17 * powf(var_18 - (var_19 + -0.0f), var_20 - -1.4484E34f));
comp = var_9[i] + var_21 + (var_22 / (-1.4978E-44f * +1.7617E-36f));
}
if (comp <= var_23 - +1.2077E36f) {
  comp += (-1.2650E-44f + var_24);
comp += var_25 / var_26 * var_27;
comp = var_28 / (var_29 - var_30 + var_31);
}
for (int i=0; i < var_2; ++i) {
  comp = +0.0f - var_32 + -1.5098E-43f - var_33 - -1.0533E36f / var_34;
float tmp_1 = +1.1414E-10f;
float tmp_2 = (-1.4780E-12f + var_35 + (var_36 * (+1.6885E11f * -1.1892E-37f)));
comp = tmp_2 + tmp_1 + acosf(+1.3678E21f);
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
  float* tmp_10 = initPointer( atof(argv[10]) );
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33,tmp_34,tmp_35,tmp_36,tmp_37);
  cudaDeviceSynchronize();

  return 0;
}
