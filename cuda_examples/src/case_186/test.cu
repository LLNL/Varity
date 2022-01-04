
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,int var_8,float var_9,float var_10,float var_11,float var_12,float var_13) {
if (comp >= acosf(var_1 - -1.6813E20f / sinhf((-1.7615E36f * var_2 * powf((var_3 - atan2f(var_4 - (var_5 / (-1.2802E-35f * (+1.2995E-36f / +0.0f))), -1.7257E-36f / (var_6 - var_7))), -1.1318E-44f))))) {
  comp = (var_9 * +1.5399E15f);
float tmp_1 = -1.7330E-35f;
comp = tmp_1 + floorf(powf((-1.2926E-16f / log10f((-1.0911E-43f - -1.6562E-44f))), -1.6636E36f));
comp += (+0.0f - (-1.9864E14f * (var_10 + fmodf(log10f(+1.4451E-35f), var_11 / acosf(var_12 + logf(ceilf((-1.3226E-43f * -1.7162E27f))))))));
for (int i=0; i < var_8; ++i) {
  comp = var_13 + (-1.9298E16f - +1.7892E-23f);
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
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  int tmp_9 = atoi(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14);
  cudaDeviceSynchronize();

  return 0;
}
