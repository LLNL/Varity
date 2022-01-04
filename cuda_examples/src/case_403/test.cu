
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float* var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28) {
for (int i=0; i < var_1; ++i) {
  for (int i=0; i < var_2; ++i) {
    if (comp <= -1.6060E36f / ldexpf(+1.5617E35f, 2)) {
      comp += (+1.3779E36f - floorf(-1.2482E-43f));
comp = fmodf(-1.5149E36f / var_4, sinhf(-0.0f + (var_5 + var_6 * +1.0563E35f + (-1.6218E-43f + -1.5339E-35f))));
float tmp_1 = acosf(+1.3883E20f * atanf((+0.0f + (var_7 / var_8 / var_9))));
comp = tmp_1 / var_10 + var_11 / var_12 * var_13 - (-0.0f * +1.6618E-41f);
for (int i=0; i < var_3; ++i) {
  var_14[i] = +1.2734E-37f;
comp = var_14[i] + logf(+0.0f);
comp += (var_15 * var_16 * var_17);
comp = (-1.4694E-36f * (+1.7018E3f + +1.7157E-36f - (var_18 / -1.8436E36f)));
}
if (comp <= (var_19 - +1.4128E34f * (-1.2866E35f - (var_20 - (+1.9375E35f + var_21))))) {
  comp += (var_22 * +1.8236E34f - var_23 * var_24 - var_25);
float tmp_2 = +1.8835E-26f;
comp = tmp_2 + (var_26 - -1.8132E-35f);
}
if (comp < sinf(+1.0853E-44f)) {
  float tmp_3 = var_27 * var_28;
comp += tmp_3 / (-1.6435E36f - -1.6854E-44f);
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
  float tmp_14 = atof(argv[14]);
  float* tmp_15 = initPointer( atof(argv[15]) );
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29);
  cudaDeviceSynchronize();

  return 0;
}
