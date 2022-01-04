
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,int var_3,int var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17) {
if (comp <= cosf(-1.3183E-43f * var_1)) {
  if (comp == (+1.4693E-42f / -1.3452E-37f + ldexpf(expf(var_2 / -1.3044E-6f), 2))) {
    float tmp_1 = +0.0f * (var_5 * +1.3045E-41f - -1.6079E-1f + +1.5984E-44f);
comp = tmp_1 + atan2f(+1.3203E-42f + var_6, -1.1528E36f);
if (comp <= +1.5156E36f * expf(var_7 * -1.2909E35f)) {
  comp = -1.7182E-37f - (var_8 - (+1.5009E-35f - +1.2950E35f - -1.6396E-21f));
float tmp_2 = -0.0f;
comp = tmp_2 - var_9 * +1.4362E35f;
}
for (int i=0; i < var_3; ++i) {
  comp = var_10 * -1.5497E34f - sinhf(sqrtf(expf(-0.0f - (var_11 * var_12))));
comp += (var_13 + sqrtf((+1.9559E35f + var_14)));
}
for (int i=0; i < var_4; ++i) {
  float tmp_3 = var_15 + tanhf(logf(-1.5079E16f));
float tmp_4 = +1.4164E-36f;
comp = tmp_4 + tmp_3 / +1.2844E7f * var_16 - +1.2031E-41f;
comp = (var_17 * +1.0304E-44f);
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
  int tmp_4 = atoi(argv[4]);
  int tmp_5 = atoi(argv[5]);
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18);
  cudaDeviceSynchronize();

  return 0;
}
