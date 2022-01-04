
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20) {
if (comp > cosf(+1.9582E-41f + sinhf(ceilf((var_1 - var_2))))) {
  comp = (var_3 / (-0.0f + -1.6881E35f));
comp = (+1.8431E-42f / var_4 + (+1.2711E9f * (-1.8596E-36f + -0.0f)));
if (comp < (var_5 - var_6)) {
  float tmp_1 = asinf((+1.2602E-44f / var_7 + (+1.2545E35f - (+1.9197E-44f - var_8 / var_9))));
comp = tmp_1 + (var_10 + -1.2933E-44f);
}
if (comp > (var_11 * -1.7485E-36f / +1.6752E12f / +1.8402E36f)) {
  comp += (var_12 * -1.6848E36f * var_13);
comp += powf(-1.7945E26f, ldexpf(+1.4503E-35f, 2));
}
if (comp <= var_14 + +1.7294E36f + (-1.5616E-37f + (var_15 * +1.7433E34f))) {
  comp = (+1.3655E-36f - (var_16 * +1.4232E2f + (var_17 * +1.8256E-43f / var_18)));
comp += (+1.9111E-44f + (var_19 + tanhf((-1.4905E-41f + var_20))));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21);
  cudaDeviceSynchronize();

  return 0;
}
