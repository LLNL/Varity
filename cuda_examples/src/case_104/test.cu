
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4) {
if (comp > var_1 + log10f(-1.4101E36f)) {
  float tmp_1 = (-1.7403E-43f * -1.3132E-41f + sinhf(+1.9582E19f - var_2 * floorf((-0.0f + (var_3 * (+1.7918E-37f + +1.0935E-11f))))));
comp = tmp_1 + (var_4 / -1.1573E14f);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5);
  cudaDeviceSynchronize();

  return 0;
}
