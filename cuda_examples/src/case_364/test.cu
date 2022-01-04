
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float* var_29,float* var_30,float* var_31,float var_32,float var_33,float var_34,float var_35,float var_36,float var_37,float var_38,float var_39) {
if (comp > +1.5965E-6f * +0.0f - sinf(acosf(sinf((var_3 * var_4 / (+0.0f - -1.7945E-17f)))))) {
  float tmp_1 = var_5 * -1.5286E-43f / var_6;
comp = tmp_1 - var_7 - fmodf(-1.6283E-35f, acosf((+0.0f / (var_8 * (+1.5672E35f / var_9)))));
for (int i=0; i < var_1; ++i) {
  float tmp_2 = -1.0614E36f;
comp = tmp_2 - var_10 / (+0.0f - -0.0f * (var_11 + var_12));
}
if (comp == +1.2665E4f - (var_13 - (-0.0f * sqrtf(var_14 / var_15 - expf(var_16 * +1.5636E-42f / -0.0f - var_17))))) {
  comp += -0.0f * (-1.0037E-35f + -0.0f / (var_18 - var_19));
comp = powf((-0.0f - -1.0754E-42f), fmodf((-1.0412E34f - var_20 + atan2f((-1.4733E-21f * +1.9789E36f + -1.8577E-27f / (var_21 + var_22 / var_23)), var_24 * ldexpf(asinf((var_25 + var_26)), 2))), (-1.4438E12f - (var_27 + var_28 - +0.0f))));
comp += asinf(-1.4041E-14f);
}
for (int i=0; i < var_2; ++i) {
  var_29[i] = +1.6733E-28f / (+1.5325E36f - +1.4437E34f / atanf(+1.4076E17f / (-1.5764E-41f / ceilf((+1.9181E-43f * var_32 + (var_33 * +0.0f))))));
var_30[i] = atan2f(-1.9927E-42f, var_34 + tanhf(var_35 * (var_36 / +1.2159E-12f / +1.5273E-37f)));
var_31[i] = -0.0f;
comp += var_31[i] + var_30[i] * var_29[i] - var_37 * var_38 / var_39;
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
  float* tmp_30 = initPointer( atof(argv[30]) );
  float* tmp_31 = initPointer( atof(argv[31]) );
  float* tmp_32 = initPointer( atof(argv[32]) );
  float tmp_33 = atof(argv[33]);
  float tmp_34 = atof(argv[34]);
  float tmp_35 = atof(argv[35]);
  float tmp_36 = atof(argv[36]);
  float tmp_37 = atof(argv[37]);
  float tmp_38 = atof(argv[38]);
  float tmp_39 = atof(argv[39]);
  float tmp_40 = atof(argv[40]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33,tmp_34,tmp_35,tmp_36,tmp_37,tmp_38,tmp_39,tmp_40);
  cudaDeviceSynchronize();

  return 0;
}
