
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float* var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26) {
for (int i=0; i < var_1; ++i) {
  float tmp_1 = +1.5495E-20f * -0.0f - +1.7373E34f + -1.2227E-41f;
comp += tmp_1 / powf(logf(+1.4807E-42f - (var_3 - var_4 + (-1.1452E-43f / -1.8998E5f))), (var_5 / -1.6529E34f));
for (int i=0; i < var_2; ++i) {
  var_6[i] = +1.6711E-42f;
comp += var_6[i] + (var_7 + (-0.0f + cosf(-1.3084E-36f / var_8 / +1.0464E-37f - var_9)));
comp += (var_10 * +1.1323E13f);
}
if (comp < (-1.7168E0f - ldexpf((var_11 / +1.2724E-43f * (+1.2128E-20f + (+1.5143E-36f + fabsf(-1.8362E-35f / var_12)))), 2))) {
  float tmp_2 = (var_13 * ceilf(var_14 + +1.0084E-35f));
comp += tmp_2 / floorf(var_15 + +1.9434E29f - var_16);
comp += (var_17 / (+1.1753E-44f - var_18 + +1.6236E-15f * atanf((var_19 / var_20 - (-1.9437E-44f / atanf(var_21 * +1.9941E36f + (var_22 * var_23 - var_24)))))));
comp += (-1.9196E-13f + var_25 - -1.8491E4f + var_26);
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
  float* tmp_7 = initPointer( atof(argv[7]) );
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27);
  cudaDeviceSynchronize();

  return 0;
}
