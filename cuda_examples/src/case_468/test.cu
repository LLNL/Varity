
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13) {
if (comp >= var_2 / var_3 * -1.9642E34f) {
  if (comp >= (+0.0f / -1.5998E-43f + +1.6862E-27f + (var_4 / var_5))) {
    for (int i=0; i < var_1; ++i) {
      float tmp_1 = sinhf(-1.6157E-35f);
float tmp_2 = (var_6 * (-1.8705E-42f / var_7 - +0.0f));
comp += tmp_2 * tmp_1 / -1.2006E-41f * +1.5022E-36f * +1.3346E-43f - +1.9799E-37f * -1.3239E22f + -1.3287E36f;
comp += asinf(+1.1500E-37f);
if (comp < +1.7669E21f + ldexpf((var_8 * (-0.0f / +1.5812E-41f / (-1.3024E-44f - var_9))), 2)) {
  comp = -1.9185E-13f / var_10 * +1.9758E-43f * (var_11 / (var_12 * var_13));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14);
  cudaDeviceSynchronize();

  return 0;
}
