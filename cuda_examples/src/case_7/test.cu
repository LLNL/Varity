
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18) {
if (comp > fmodf(sinhf(coshf(sinf(-1.2811E-36f / atan2f(-1.7338E-43f / var_1 * var_2 + -1.4001E-35f + var_3 - -0.0f, var_4 + (var_5 - powf(-0.0f, +0.0f + var_6)))))), -1.3655E-35f)) {
  comp = +0.0f * var_7 - (+0.0f * -0.0f);
comp += (var_8 - +1.6638E18f - var_9 - -1.7154E34f);
if (comp > -0.0f / (var_10 * (var_11 - var_12))) {
  float tmp_1 = var_13 + +0.0f / var_14 / (+1.7814E-44f - -1.6814E-41f * var_15);
comp += tmp_1 / +1.4925E25f + -0.0f;
comp += (+1.7556E6f - (-1.1964E-44f * -0.0f / var_16));
}
if (comp > var_17 / var_18) {
  comp += expf(+1.4605E35f);
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
  float tmp_15 = atof(argv[15]);
  float tmp_16 = atof(argv[16]);
  float tmp_17 = atof(argv[17]);
  float tmp_18 = atof(argv[18]);
  float tmp_19 = atof(argv[19]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19);
  cudaDeviceSynchronize();

  return 0;
}
