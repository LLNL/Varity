
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float* var_19,float var_20,float var_21,float var_22,float var_23,float var_24) {
if (comp <= logf((var_1 - sinhf(+1.3758E22f)))) {
  comp = (var_4 - var_5);
comp += (var_6 * (-1.1832E35f * var_7 * var_8));
for (int i=0; i < var_2; ++i) {
  comp = (var_9 - (var_10 + acosf(var_11 * -1.6475E-43f)));
comp += asinf(+1.2860E-35f);
comp = fmodf(atan2f((var_12 - (var_13 + -0.0f - (var_14 * var_15 / -1.7790E14f))), var_16 + +1.6107E36f / -0.0f / +1.8488E36f * +1.4295E36f), -1.8084E-37f);
comp = -1.7217E35f / (+1.5718E-36f + (var_17 + (-1.0460E-41f - var_18)));
}
for (int i=0; i < var_3; ++i) {
  float tmp_1 = var_20 - -1.0851E34f;
var_19[i] = (-1.6743E-44f * +0.0f / (-1.3048E34f * +1.4836E-37f));
comp += var_19[i] - tmp_1 / (var_21 + var_22);
}
if (comp == fabsf((+1.0207E-36f / -1.1486E-41f))) {
  comp = -1.3839E-41f + (+1.5019E36f + (var_23 + -0.0f));
float tmp_2 = (-0.0f / (+1.9028E35f * +1.3077E-35f));
comp += tmp_2 + powf(+1.9011E-44f, (var_24 / +1.1185E35f));
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
  int tmp_3 = atoi(argv[3]);
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
  float tmp_17 = atof(argv[17]);
  float tmp_18 = atof(argv[18]);
  float tmp_19 = atof(argv[19]);
  float* tmp_20 = initPointer( atof(argv[20]) );
  float tmp_21 = atof(argv[21]);
  float tmp_22 = atof(argv[22]);
  float tmp_23 = atof(argv[23]);
  float tmp_24 = atof(argv[24]);
  float tmp_25 = atof(argv[25]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25);
  cudaDeviceSynchronize();

  return 0;
}
