
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16) {
if (comp >= (+1.6475E-42f * var_1 * (var_2 + (var_3 / var_4 - -1.2878E-37f)))) {
  if (comp > cosf((var_5 / (-0.0f * var_6)))) {
    comp += atanf(var_7 * coshf(sinhf(-1.4673E-35f)));
if (comp == (var_8 * -0.0f)) {
  float tmp_1 = var_9 - var_10;
float tmp_2 = +1.9474E34f / +1.1877E3f - -1.1239E-28f - +1.5257E35f / -1.2099E-41f - var_11;
comp = tmp_2 - tmp_1 + var_12 - +0.0f + (+1.7411E35f - logf(atan2f(var_13 / var_14 / (-1.0919E36f / (var_15 * var_16 - +1.2750E-43f)), sinf(-1.3205E2f * -1.5501E-43f - -1.2024E-41f))));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17);
  cudaDeviceSynchronize();

  return 0;
}
