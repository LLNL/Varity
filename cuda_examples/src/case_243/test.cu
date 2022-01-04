
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6) {
for (int i=0; i < var_1; ++i) {
  if (comp == (-0.0f * var_3)) {
    if (comp == fabsf(+1.8912E36f)) {
      for (int i=0; i < var_2; ++i) {
        float tmp_1 = +1.0060E-36f;
comp += tmp_1 * ldexpf((var_4 - +1.4224E-30f - (var_5 / +1.6304E35f)), 2);
comp = (var_6 - -0.0f + cosf(powf(-1.3475E-43f + (+1.4059E36f - +1.4890E-35f), -1.2542E-44f)));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7);
  cudaDeviceSynchronize();

  return 0;
}
