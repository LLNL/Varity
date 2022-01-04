
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,int var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float* var_20,float var_21,float var_22,float var_23) {
for (int i=0; i < var_1; ++i) {
  for (int i=0; i < var_2; ++i) {
    if (comp > (var_3 + (-1.0098E-42f * var_4 / ldexpf((-1.0995E-35f * log10f((var_5 / -0.0f / (var_6 - (-1.2510E-29f / +0.0f))))), 2)))) {
      comp += sqrtf((+1.3200E-27f + var_8 / -0.0f));
comp += sinhf(var_9 + expf((-1.5029E-36f + (+1.1308E34f * (+1.6593E35f * (-1.3221E34f / logf((var_10 / var_11))))))));
if (comp > (var_12 * (var_13 - logf((-1.0601E-42f / -1.8378E-44f / var_14 - -0.0f - +1.2988E-24f))))) {
  comp += var_15 - -1.1625E-36f * +1.0075E6f * (var_16 / (-1.7412E21f * +1.7537E36f));
comp += (-1.9807E-44f + var_17 / (var_18 + powf(-1.3309E19f, (+1.0554E-41f - (var_19 + -1.4991E-44f)))));
}
for (int i=0; i < var_7; ++i) {
  var_20[i] = -1.2342E35f;
comp += var_20[i] - atanf((var_21 / ceilf(sqrtf(floorf(sqrtf(var_22 / var_23))))));
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
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  int tmp_8 = atoi(argv[8]);
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
  float tmp_22 = atof(argv[22]);
  float tmp_23 = atof(argv[23]);
  float tmp_24 = atof(argv[24]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24);
  cudaDeviceSynchronize();

  return 0;
}
