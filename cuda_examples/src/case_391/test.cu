
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,int var_8,float var_9,float* var_10,float var_11,float var_12,float var_13,float var_14) {
if (comp > (var_4 - -1.6884E-11f - powf(-0.0f + (var_5 - sinhf(-1.9661E34f / (-1.4342E-36f / (var_6 * -1.5904E-35f / (var_7 + +0.0f))))), -1.6178E-35f))) {
  for (int i=0; i < var_1; ++i) {
    for (int i=0; i < var_2; ++i) {
      for (int i=0; i < var_3; ++i) {
        comp += (+1.1944E-16f - fmodf((+1.3415E-35f * (+1.6316E-42f - +1.1709E36f)), -1.0730E36f - var_9));
if (comp == coshf((-0.0f / +1.0872E36f))) {
  comp = sinhf(-1.4058E-43f);
}
for (int i=0; i < var_8; ++i) {
  var_10[i] = +1.8297E36f;
comp = var_10[i] - var_11 * expf((var_12 / var_13 - var_14));
}
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
  int tmp_9 = atoi(argv[9]);
  float tmp_10 = atof(argv[10]);
  float* tmp_11 = initPointer( atof(argv[11]) );
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);
  float tmp_15 = atof(argv[15]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15);
  cudaDeviceSynchronize();

  return 0;
}
