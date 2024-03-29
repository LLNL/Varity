
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float* var_16,float var_17,float var_18,float var_19,float var_20,float var_21) {
for (int i=0; i < var_1; ++i) {
  float tmp_1 = +1.7238E-13f;
comp += tmp_1 / (var_3 + (var_4 * coshf((+0.0f * (var_5 + (var_6 - (var_7 / logf(atan2f(+1.5160E-13f * var_8 - (var_9 * -1.2032E19f), -1.0343E-36f)))))))));
if (comp == logf((var_10 / var_11 + var_12 + (var_13 * -1.2225E36f)))) {
  comp += -0.0f * (var_14 - var_15 + +1.7355E35f);
}
for (int i=0; i < var_2; ++i) {
  comp += (-1.2430E-43f - var_17 * +1.7458E-37f - +1.2869E-36f);
var_16[i] = +1.2003E-29f;
comp = var_16[i] / var_18 * (var_19 - +1.9828E1f);
comp += var_20 - (var_21 + +1.6830E10f - (+1.1497E-37f + -1.0421E-44f));
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
  float* tmp_17 = initPointer( atof(argv[17]) );
  float tmp_18 = atof(argv[18]);
  float tmp_19 = atof(argv[19]);
  float tmp_20 = atof(argv[20]);
  float tmp_21 = atof(argv[21]);
  float tmp_22 = atof(argv[22]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22);
  cudaDeviceSynchronize();

  return 0;
}
