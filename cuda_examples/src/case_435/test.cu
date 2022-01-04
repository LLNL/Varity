
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,int var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13) {
if (comp == sinf(+1.1894E-36f - powf(-1.3596E-44f + (var_1 + (+1.4869E-41f / var_2 + (var_3 * +0.0f))), +1.1176E-42f))) {
  float tmp_1 = +0.0f;
float tmp_2 = +1.8021E36f;
comp += tmp_2 / tmp_1 + var_5 + var_6 - +1.7849E-37f * +1.8890E-37f + -0.0f;
for (int i=0; i < var_4; ++i) {
  comp += +1.4990E7f / +1.1159E-37f;
comp = (-1.3709E5f + sinf((var_7 / -1.3219E-42f / var_8)));
comp = fabsf((var_9 - +1.2732E34f));
}
if (comp < -1.1817E-43f + (+1.1781E-1f / +1.0107E-44f)) {
  comp = asinf(var_10 + var_11 + (var_12 - +1.4480E-19f - var_13));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14);
  cudaDeviceSynchronize();

  return 0;
}
