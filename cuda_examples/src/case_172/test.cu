
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13) {
if (comp == (+1.9791E7f * coshf((var_2 + +0.0f)))) {
  comp += atan2f(floorf(+1.4721E-44f), -1.3111E-36f * ldexpf((+1.8350E-35f * var_3 - var_4), 2));
float tmp_1 = +1.0002E28f;
float tmp_2 = -1.2076E-35f;
comp += tmp_2 * tmp_1 / sinf(-0.0f);
if (comp == var_5 + -0.0f * asinf(+1.6377E-41f)) {
  float tmp_3 = -1.2597E10f;
comp = tmp_3 / powf(-1.2530E7f, -1.8301E-44f);
}
if (comp >= atan2f(atanf((var_6 / (var_7 - (var_8 - +1.9054E35f * +1.0821E-44f - var_9)))), +0.0f)) {
  comp = (var_10 - (-0.0f / cosf(+0.0f)));
}
for (int i=0; i < var_1; ++i) {
  float tmp_4 = -1.7750E-18f / -1.2021E-43f;
comp = tmp_4 * (+1.3609E-19f + +0.0f);
comp += var_11 - (+0.0f * +1.1393E4f);
comp = (var_12 - var_13);
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
