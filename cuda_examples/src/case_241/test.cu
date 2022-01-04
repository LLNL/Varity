
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,int var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float* var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float* var_21,float* var_22) {
for (int i=0; i < var_1; ++i) {
  for (int i=0; i < var_2; ++i) {
    if (comp < var_5 + var_6 / sinhf((-1.9525E-42f / -1.9125E-43f + -1.7595E-14f))) {
      float tmp_1 = (var_7 / sinhf(-0.0f / (var_8 - ldexpf((+1.0336E-41f / -1.7989E-35f + sqrtf(sqrtf(var_9 + var_10 - var_11 * +1.1901E-15f))), 2))));
comp = tmp_1 + powf(+1.3671E-2f / (+1.4016E35f / +0.0f), +1.1971E-6f);
for (int i=0; i < var_3; ++i) {
  var_12[i] = expf(+0.0f / log10f(+1.2910E-43f));
comp += var_12[i] + (+1.4961E15f + var_13 + var_14);
}
if (comp < sinhf(-0.0f * (+1.7127E-37f / +1.6857E-37f))) {
  comp = +1.0177E35f * ceilf(atanf((var_15 + var_16 - fmodf(+1.9858E-19f * +1.3827E34f, (var_17 * (-0.0f / var_18))))));
comp += fabsf(var_19 + -1.2918E36f - +1.3146E-36f * (+0.0f * -1.1836E-42f));
comp = (-1.6744E-41f * fabsf(+1.4058E34f * (-1.0385E-41f * (+1.7333E36f - (var_20 / +0.0f)))));
}
for (int i=0; i < var_4; ++i) {
  var_21[i] = (-1.5486E7f / (+1.6543E-43f - -1.6441E-36f));
var_22[i] = +1.9275E35f;
comp += var_22[i] / var_21[i] * -0.0f / +1.5934E2f;
comp = -1.9194E35f + +1.0712E34f;
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
  int tmp_5 = atoi(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  float tmp_12 = atof(argv[12]);
  float* tmp_13 = initPointer( atof(argv[13]) );
  float tmp_14 = atof(argv[14]);
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);
  float tmp_17 = atof(argv[17]);
  float tmp_18 = atof(argv[18]);
  float tmp_19 = atof(argv[19]);
  float tmp_20 = atof(argv[20]);
  float tmp_21 = atof(argv[21]);
  float* tmp_22 = initPointer( atof(argv[22]) );
  float* tmp_23 = initPointer( atof(argv[23]) );

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23);
  cudaDeviceSynchronize();

  return 0;
}
