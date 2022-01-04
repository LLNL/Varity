
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8) {
if (comp > (var_1 * coshf(+1.4495E-35f))) {
  float tmp_1 = -1.5411E-43f;
comp += tmp_1 * floorf((-0.0f * (var_2 + (var_3 - +1.9494E22f))));
comp += +1.9190E-12f / sqrtf(+1.1884E-37f);
if (comp <= (+1.5333E6f + asinf(acosf(var_4 * (-0.0f * var_5))))) {
  float tmp_2 = +1.4419E35f;
float tmp_3 = +1.9923E-42f;
comp = tmp_3 * tmp_2 / (var_6 / cosf(-1.7798E-36f + var_7 / (var_8 + (+1.5801E34f * +0.0f))));
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
