
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17) {
if (comp > (+1.1242E-37f - var_2 / +1.0479E-37f / -1.4789E27f + +1.0551E-21f)) {
  for (int i=0; i < var_1; ++i) {
    comp = (-1.3618E-35f + (-1.3719E-44f / log10f(-1.8075E36f)));
if (comp < -0.0f + var_3) {
  float tmp_1 = +1.9542E-41f;
comp = tmp_1 + var_4 - +1.0161E-7f / (-1.9895E-35f - var_5 / (var_6 + var_7));
}
if (comp < +1.0675E36f * (-1.8376E36f / var_8 - (var_9 * -0.0f + var_10))) {
  comp = var_11 - logf((var_12 + var_13 - var_14 + var_15 + var_16 - +1.0731E22f));
comp = fabsf(sqrtf(+0.0f - var_17 - -1.3704E6f));
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
  float tmp_18 = atof(argv[18]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18);
  cudaDeviceSynchronize();

  return 0;
}
