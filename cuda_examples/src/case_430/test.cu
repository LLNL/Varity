
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float* var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20) {
comp = sqrtf((-1.1830E34f + var_2));
float tmp_1 = -1.6861E25f + -1.9280E-43f + +1.0388E34f / (var_3 / var_4);
comp = tmp_1 + var_5 + (-1.3749E15f + floorf(+1.2918E-44f));
comp += var_6 / (var_7 + +1.4018E-44f * var_8);
if (comp > -1.2561E-41f / -1.6609E35f / (var_9 / var_10)) {
  comp = sinf(-1.3345E-16f - -1.9315E-42f);
comp += -1.0176E-42f - +0.0f;
}
for (int i=0; i < var_1; ++i) {
  var_11[i] = +0.0f;
float tmp_2 = -1.4970E34f;
float tmp_3 = var_12 - (-1.4811E-37f - (-0.0f * sqrtf(var_13 + (-1.8149E-43f + (-1.4461E-42f - (+1.7745E34f - (var_14 - var_15)))))));
comp = tmp_3 - tmp_2 * var_11[i] * (var_16 + -1.5250E-35f + -1.3596E-44f - -0.0f);
}
if (comp > +1.9908E34f - expf(-1.6164E13f)) {
  comp = (var_17 + var_18 + fmodf(+1.2267E-35f * var_19, atanf((-1.6750E10f + +1.9142E-37f + -1.0010E-35f + -1.9315E-36f + (var_20 - -1.4851E-44f)))));
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
  float* tmp_12 = initPointer( atof(argv[12]) );
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
