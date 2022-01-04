
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20) {
if (comp > var_1 - var_2) {
  if (comp <= ldexpf((var_3 + +0.0f), 2)) {
    float tmp_1 = (var_4 - var_5);
float tmp_2 = +0.0f * var_6;
comp += tmp_2 * tmp_1 - floorf(+1.2953E-9f + (-0.0f + var_7 / (-1.9780E36f - powf(var_8 * +1.6747E-44f - var_9 / fmodf(-1.9290E34f / var_10 - -0.0f, (-1.0991E-44f - sinhf(var_11 * var_12 * -1.3232E-36f))), -1.6650E-35f * (+1.2151E-42f - (var_13 * (+1.8866E36f * (-1.7231E-41f * var_14))))))));
comp += +1.2812E10f / var_15;
if (comp <= atanf(-1.0044E-42f + (var_16 * -1.9840E8f * +1.6481E35f - var_17))) {
  float tmp_3 = +0.0f;
comp = tmp_3 / var_18 - var_19 - -1.3206E-36f - var_20 / -1.0774E-41f;
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
