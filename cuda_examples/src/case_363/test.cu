
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13) {
if (comp > (-1.4090E1f - (var_1 * -1.9889E-9f - (var_2 - var_3)))) {
  if (comp <= sinhf(-1.2483E-43f / var_4 * (-1.1176E-28f - (+1.7369E35f * -1.1525E-37f)))) {
    if (comp > atan2f(+1.5106E-42f, atan2f((var_5 / -1.1533E-43f + (var_6 + atanf(tanhf(-1.5643E-17f)))), var_7 + (+1.3014E10f - var_8)))) {
      float tmp_1 = +0.0f;
comp = tmp_1 + (+1.7689E36f / (+0.0f * -1.8398E36f * var_9 - +1.1815E-41f));
if (comp == +1.9968E-37f / var_10) {
  comp += var_11 - var_12 * var_13;
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
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14);
  cudaDeviceSynchronize();

  return 0;
}
