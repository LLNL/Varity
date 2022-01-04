
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float var_5,float var_6,float var_7,float* var_8,float* var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17,float var_18,float var_19,float var_20,float var_21,float var_22,float var_23,float var_24,float var_25,float var_26,float var_27,float var_28,float var_29,float var_30,float var_31,float var_32) {
if (comp > -1.5164E-37f - (+0.0f / var_4 / -1.7193E-11f - +1.7215E36f / +0.0f)) {
  if (comp < var_5 + (var_6 * (+1.2714E34f + expf(sinf(+0.0f))))) {
    for (int i=0; i < var_1; ++i) {
      float tmp_1 = +0.0f;
comp += tmp_1 + tanhf((+0.0f / (+1.0588E-44f - +1.3267E-27f - var_7)));
comp = +1.8957E36f - -1.3050E-44f;
for (int i=0; i < var_2; ++i) {
  var_8[i] = +1.9077E-41f;
comp += var_8[i] * (var_10 + (var_11 - +1.9771E0f + var_12));
var_9[i] = -0.0f;
comp += var_9[i] + (+1.3055E-17f / var_13 - tanhf((var_14 * -1.7053E-44f / var_15)));
}
for (int i=0; i < var_3; ++i) {
  comp += (+1.2066E-42f / +0.0f);
float tmp_2 = -1.2245E-42f;
comp += tmp_2 - var_16 * sinf(powf((+1.7499E9f - expf((-1.6039E-12f + var_17 - var_18))), -1.1118E36f + (var_19 - (-1.5834E34f * acosf(coshf((-1.7556E11f + var_20)))))));
comp = (-0.0f + var_21 - var_22 / fmodf(+0.0f / var_23 - var_24, (+1.7953E-16f / atanf((var_25 - var_26)))));
}
if (comp <= (+1.4745E34f * var_27)) {
  float tmp_3 = (var_28 - (var_29 / (var_30 / var_31 / var_32)));
comp += tmp_3 * sqrtf(-1.7494E-36f);
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
  int tmp_2 = atoi(argv[2]);
  int tmp_3 = atoi(argv[3]);
  int tmp_4 = atoi(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  float tmp_7 = atof(argv[7]);
  float tmp_8 = atof(argv[8]);
  float* tmp_9 = initPointer( atof(argv[9]) );
  float* tmp_10 = initPointer( atof(argv[10]) );
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
  float tmp_26 = atof(argv[26]);
  float tmp_27 = atof(argv[27]);
  float tmp_28 = atof(argv[28]);
  float tmp_29 = atof(argv[29]);
  float tmp_30 = atof(argv[30]);
  float tmp_31 = atof(argv[31]);
  float tmp_32 = atof(argv[32]);
  float tmp_33 = atof(argv[33]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,tmp_26,tmp_27,tmp_28,tmp_29,tmp_30,tmp_31,tmp_32,tmp_33);
  cudaDeviceSynchronize();

  return 0;
}
