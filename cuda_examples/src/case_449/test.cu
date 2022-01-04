
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7) {
if (comp <= (+1.6716E-44f / -1.5155E23f / ceilf(sinf(fmodf(+1.2273E35f, var_1 + (var_2 * (-1.3112E35f / var_3))))))) {
  comp = (+1.2672E-36f + (+1.3490E-37f / (var_4 / (var_5 + -1.3174E-37f - +1.5944E-44f))));
comp = (-1.0648E36f + ldexpf(-1.4353E-37f, 2));
comp += +1.1875E36f * var_6 / coshf(+1.0999E-36f / (+1.1275E34f / var_7));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8);
  cudaDeviceSynchronize();

  return 0;
}
