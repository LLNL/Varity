
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16) {
if (comp == log10f((var_2 - +1.1577E36f - -1.8794E-5f))) {
  for (int i=0; i < var_1; ++i) {
    if (comp > (-1.1475E-41f + -1.6555E35f * var_3 - ldexpf(+1.2269E-43f, 2))) {
      comp += (-1.3153E-37f * (var_4 + (-1.3335E-36f - ldexpf(-1.8376E-37f + var_5, 2))));
comp = expf(+1.0689E-44f);
comp += (var_6 / var_7);
if (comp > -1.9665E-4f - floorf((var_8 * (+1.5141E-35f + +0.0f)))) {
  comp = (+1.6147E-35f * (-1.1747E-23f * -1.1611E-41f - sinf(-1.8971E36f * atan2f((+1.0059E-37f + var_9), -1.9819E-41f / (var_10 + +1.7102E-35f + +1.6553E35f * var_11 + +0.0f)))));
comp = (var_12 - (var_13 * -1.0335E-37f / acosf(+1.2626E35f * -1.4019E25f + -1.2947E4f / -1.7868E34f)));
}
if (comp == (var_14 - (+1.9929E-37f * (var_15 / (+1.0786E35f - -1.8681E-36f / +1.4120E-37f))))) {
  comp = -1.4602E-37f / -1.0876E-7f;
}
if (comp == var_16 / cosf((-1.8486E13f / +1.1893E34f + +1.7863E-42f))) {
  comp += sinhf(fmodf(-1.6442E34f, asinf(-1.1475E-27f)));
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
