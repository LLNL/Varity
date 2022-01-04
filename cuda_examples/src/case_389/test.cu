
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,int var_5,int var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float* var_20) {
if (comp <= var_1 - (var_2 - (var_3 * var_4))) {
  comp = (-1.4113E-35f + -1.7121E35f / -1.5316E-36f + (var_7 * var_8 + var_9));
float tmp_1 = +1.1032E34f;
comp = tmp_1 - var_10 - sqrtf(-1.4123E29f - (var_11 * floorf((var_12 / +0.0f - -0.0f))));
comp += (var_13 - (+1.5771E5f - (var_14 - -1.0910E-43f * -0.0f)));
for (int i=0; i < var_5; ++i) {
  comp += var_15 / (+1.3782E-36f / var_16 * +0.0f - var_17);
comp += (var_18 / (+1.8357E-44f - var_19));
}
for (int i=0; i < var_6; ++i) {
  var_20[i] = +0.0f;
comp = var_20[i] - -1.8295E-41f * (-0.0f - +0.0f + -1.0260E5f);
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
  int tmp_6 = atoi(argv[6]);
  int tmp_7 = atoi(argv[7]);
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
  float* tmp_21 = initPointer( atof(argv[21]) );

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21);
  cudaDeviceSynchronize();

  return 0;
}
