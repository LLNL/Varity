
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22) {
comp += (-1.0286E-44f - sqrtf((var_2 / +1.4721E8f + (var_3 + log10f((-1.9761E-35f / (-1.8954E-42f * (+0.0f - -0.0f / -1.3228E-44f))))))));
for (int i=0; i < var_1; ++i) {
  comp = var_4 + (var_5 * var_6 * -0.0f - -0.0f);
comp = var_7 * (var_8 - +0.0f * sinhf(var_9 - sqrtf(var_10 - -1.0776E35f / +1.8397E17f)));
comp = fmodf(tanhf(var_11 + (var_12 / (var_13 - var_14))), +1.5268E36f - -0.0f + (var_15 - -1.8391E36f));
comp = (+1.9871E6f / (+1.9138E36f * var_16));
}
if (comp < +0.0f / +1.3853E34f) {
  comp += var_17 - var_18;
float tmp_1 = fabsf((+1.8984E-36f * (+1.9612E1f + var_19 + var_20)));
comp += tmp_1 * (+1.4073E-35f / (var_21 * -1.7297E-36f));
comp += +1.1075E-35f + (-1.1091E-44f / (+1.6502E-43f / +1.9312E35f * var_22));
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
  int tmp_2 = atoi(argv[2]);
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
  float tmp_20 = atof(argv[20]);
  float tmp_21 = atof(argv[21]);
  float tmp_22 = atof(argv[22]);
  float tmp_23 = atof(argv[23]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23);
  cudaDeviceSynchronize();

  return 0;
}
