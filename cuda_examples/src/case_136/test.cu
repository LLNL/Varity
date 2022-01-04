
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6) {
if (comp == var_1 + var_2 / +1.9016E34f + expf(sinhf(+1.4150E-37f))) {
  if (comp == (+1.9368E-44f / -0.0f + (+1.6143E-37f + var_3))) {
    comp += var_4 - var_5;
if (comp <= (-1.3896E-44f - -1.1397E-20f)) {
  float tmp_1 = -1.5318E-35f;
float tmp_2 = +1.2387E35f;
comp += tmp_2 / tmp_1 * (+0.0f * +1.7532E36f - -0.0f + (-1.6383E36f + -0.0f));
comp += (-1.5410E-36f - (+1.9450E-41f + var_6 * +0.0f));
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
  float tmp_2 = atof(argv[2]);
  float tmp_3 = atof(argv[3]);
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7);
  cudaDeviceSynchronize();

  return 0;
}
