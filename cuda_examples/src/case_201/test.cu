
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15) {
if (comp <= (+0.0f - var_1)) {
  comp += (var_2 / sinhf((+1.7583E34f - cosf(ldexpf((-1.3731E35f / -1.9426E-35f - +1.2726E34f), 2)))));
comp = (-1.6435E-41f / -1.9180E-44f * -1.1709E-43f + +1.6432E-11f);
float tmp_1 = var_3 / (var_4 * (-1.9631E-41f * +1.2510E4f + -1.4633E35f / -0.0f));
comp += tmp_1 - -1.1638E-36f / (var_5 / (+0.0f / (var_6 - +0.0f)));
if (comp > (-1.8237E-43f - (var_7 / (var_8 + var_9)))) {
  comp = atan2f(var_10 / var_11 - tanhf(expf(+1.0671E28f)), +1.3638E-35f);
float tmp_2 = var_12 - sinf(asinf((var_13 - floorf(var_14 + var_15))));
float tmp_3 = +1.6033E-9f;
comp += tmp_3 - tmp_2 / ceilf(acosf(-0.0f));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16);
  cudaDeviceSynchronize();

  return 0;
}
