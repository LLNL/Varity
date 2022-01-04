
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,int var_3,int var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18) {
if (comp < (-1.2964E-35f / var_2)) {
  for (int i=0; i < var_1; ++i) {
    comp = (var_5 - (-1.0299E-43f * (-0.0f + acosf((-1.7670E-37f - +1.1236E-8f / -1.0999E-36f - floorf((var_6 + var_7)))))));
for (int i=0; i < var_3; ++i) {
  comp += (var_8 - -1.4604E-44f);
}
for (int i=0; i < var_4; ++i) {
  comp += var_9 / +1.0312E-29f;
comp = var_10 + var_11;
}
if (comp <= tanhf(var_12 / sqrtf((var_13 + +1.1098E-27f * (-1.8034E-3f - var_14))))) {
  comp += +0.0f - atan2f(var_15 + (var_16 + (+1.6843E36f - +1.5738E-21f - var_17 - +1.5894E-37f)), -1.2096E15f);
comp = (var_18 / -1.2181E-12f);
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
  int tmp_4 = atoi(argv[4]);
  int tmp_5 = atoi(argv[5]);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19);
  cudaDeviceSynchronize();

  return 0;
}
