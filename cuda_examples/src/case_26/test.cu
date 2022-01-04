
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8) {
if (comp <= (var_1 - (-1.8809E-35f - (+1.2500E-42f / var_2 + (-0.0f - var_3))))) {
  if (comp > (var_4 * atanf(fmodf(cosf(-1.1861E-37f), -1.0219E-35f / asinf((var_5 - var_6 + +1.3468E-37f)))))) {
    comp = asinf(atan2f(log10f(var_7 / expf(-1.2621E-35f)), -1.5984E-35f * (-1.0863E-36f / +1.2865E-5f + var_8)));
comp += tanhf(-0.0f);
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
  float tmp_9 = atof(argv[9]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9);
  cudaDeviceSynchronize();

  return 0;
}
