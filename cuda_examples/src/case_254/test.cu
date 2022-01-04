
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,float var_3,float var_4,float* var_5,float* var_6,float var_7,float var_8,float var_9,float var_10) {
if (comp <= (var_3 - var_4)) {
  for (int i=0; i < var_1; ++i) {
    comp = +1.3954E35f + -0.0f;
for (int i=0; i < var_2; ++i) {
  var_5[i] = +1.7694E35f;
comp += var_5[i] - +1.9550E-43f * +1.6932E-43f - (-1.4210E-35f / (var_7 / -0.0f));
var_6[i] = +1.6805E-35f;
comp += var_6[i] + var_8 / -0.0f * var_9 - var_10;
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
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float* tmp_6 = initPointer( atof(argv[6]) );
  float* tmp_7 = initPointer( atof(argv[7]) );
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11);
  cudaDeviceSynchronize();

  return 0;
}
