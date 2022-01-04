
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float* var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float* var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31,float var_32,float var_33,float var_34,float var_35) {
if (comp < sqrtf(var_3 / fabsf(var_4 - var_5))) {
  float tmp_1 = +1.0398E-35f;
comp = tmp_1 - (+1.8022E35f * (var_6 + (-1.2891E36f / var_7 * -1.3743E-43f)));
for (int i=0; i < var_1; ++i) {
  var_8[i] = var_9 + (+1.9129E15f / var_10 + var_11 - var_12);
comp += var_8[i] + coshf(ldexpf((-0.0f - atan2f(-1.1634E-35f, (var_13 - var_14 - -0.0f * +1.7666E9f))), 2));
comp += atan2f(+0.0f - tanhf((var_15 * (var_16 + (-1.4854E-23f - var_17)))), var_18 / (+0.0f - -1.5006E-36f / (var_19 + var_20 - var_21)));
}
for (int i=0; i < var_2; ++i) {
  var_22[i] = (var_23 + (-1.6868E-44f - -1.2618E-44f));
comp = var_22[i] - var_24 / tanhf(-1.3568E35f * tanhf(+1.3535E-37f));
comp += var_25 + -0.0f / (-0.0f * (+1.2949E11f + (var_26 * -1.1446E-35f)));
comp += (var_27 * -1.0322E2f);
}
if (comp > var_28 * -0.0f) {
  comp += (var_29 * var_30 - (-1.7216E-37f + var_31 + acosf(-1.6976E-28f)));
comp = cosf((var_32 - var_33 + var_34));
float tmp_2 = -1.5790E36f;
comp = tmp_2 + (-0.0f - var_35);
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
  float* tmp_9 = initPointer( atof(argv[9]) );
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
  float* tmp_23 = initPointer( atof(argv[23]) );
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33,tmp_34,tmp_35,tmp_36);
  cudaDeviceSynchronize();

  return 0;
}
