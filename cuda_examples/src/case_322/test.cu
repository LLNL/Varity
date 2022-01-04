
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float* var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16) {
if (comp == logf(asinf(logf((var_4 / (-1.2967E34f - -1.0139E36f / floorf(+1.8133E35f))))))) {
  if (comp <= acosf((-1.5215E-30f - atanf((-1.6059E-43f / var_5 * +1.3769E-42f + (var_6 + var_7 + +1.5183E-37f)))))) {
    for (int i=0; i < var_1; ++i) {
      comp += powf((var_8 / (var_9 * -0.0f)), +1.6931E-41f);
for (int i=0; i < var_2; ++i) {
  float tmp_1 = -1.9088E-41f;
var_10[i] = +1.5159E-42f;
comp += var_10[i] + tmp_1 - (+1.5150E-43f * -1.1537E36f + (var_11 / var_12 / -0.0f));
comp = (var_13 / coshf(-1.4654E-43f + +1.1435E-42f));
}
for (int i=0; i < var_3; ++i) {
  comp = (var_14 / (var_15 - coshf(acosf(sinhf((-1.3010E-44f / var_16))))));
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
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float* tmp_11 = initPointer( atof(argv[11]) );
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
