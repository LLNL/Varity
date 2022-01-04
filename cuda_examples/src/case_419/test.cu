
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,int var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24) {
if (comp == (-1.2579E-35f - (var_1 + (-1.0518E-1f * (+1.6866E-35f - -1.9646E-36f))))) {
  if (comp > (+1.3266E-8f + (var_2 * +1.3132E-43f + sinhf(var_3 - var_4 - (var_5 - var_6))))) {
    float tmp_1 = +1.2442E-36f * atanf((+1.0640E-44f + var_8 * var_9));
comp = tmp_1 * (-1.3575E-36f / var_10 * var_11 - var_12);
for (int i=0; i < var_7; ++i) {
  comp += var_13 * var_14;
comp = (+1.1025E-35f * -1.9304E-41f * +1.8745E34f - +1.8769E-42f);
comp += -0.0f + (+1.4865E-36f + (+0.0f * +1.5963E-43f));
comp += var_15 / ldexpf((-1.9723E35f / (-1.5751E36f * +1.5224E-37f / var_16)), 2);
}
if (comp > +0.0f + (var_17 * tanhf(+1.5846E-36f * (var_18 + +1.4856E-43f + -0.0f)))) {
  comp = acosf((var_19 * (var_20 + var_21 * (var_22 - var_23 + var_24))));
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
  int tmp_8 = atoi(argv[8]);
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
  float tmp_20 = atof(argv[20]);
  float tmp_21 = atof(argv[21]);
  float tmp_22 = atof(argv[22]);
  float tmp_23 = atof(argv[23]);
  float tmp_24 = atof(argv[24]);
  float tmp_25 = atof(argv[25]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25);
  cudaDeviceSynchronize();

  return 0;
}
