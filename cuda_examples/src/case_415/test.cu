
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15) {
if (comp > -1.6624E34f + (var_1 * var_2 * +1.5281E34f)) {
  float tmp_1 = +1.7184E-36f;
comp = tmp_1 + (var_4 - -1.5998E-41f);
comp += (var_5 * var_6);
if (comp <= atanf(+1.7906E-44f)) {
  comp += (-1.4259E34f - fmodf((-1.8190E-36f + (var_7 * var_8)), +1.7298E-43f));
comp += (-1.0381E-18f - var_9);
}
for (int i=0; i < var_3; ++i) {
  comp += (-0.0f + +1.3330E-7f);
comp += sqrtf((+1.9270E-43f + var_10 + (var_11 + -1.0902E35f / +1.3433E-37f)));
float tmp_2 = var_12 + var_13 * var_14;
comp += tmp_2 - (-1.3125E-37f * +0.0f - (-1.1000E-44f + (+1.7340E-41f + var_15)));
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
  int tmp_4 = atoi(argv[4]);
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
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16);
  cudaDeviceSynchronize();

  return 0;
}
