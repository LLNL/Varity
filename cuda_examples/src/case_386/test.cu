
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10) {
if (comp <= (var_1 * powf((var_2 / var_3 - -1.2661E36f * tanhf((-1.2654E-35f / (-1.6959E26f * +1.3592E35f)))), acosf((-1.9116E-36f + +0.0f))))) {
  if (comp == (var_4 + var_5 * var_6 - var_7)) {
    if (comp <= floorf((+1.9235E-37f + +1.2517E36f - (var_8 / (var_9 + -1.0885E15f))))) {
      float tmp_1 = -1.1715E-36f;
comp = tmp_1 / (-1.7614E36f / +1.0835E-22f * (-0.0f * (+1.5859E34f - var_10)));
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
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11);
  cudaDeviceSynchronize();

  return 0;
}
