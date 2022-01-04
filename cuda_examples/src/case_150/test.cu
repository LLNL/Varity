
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,int var_2,int var_3,float var_4,float* var_5,int var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float* var_14,float var_15,float var_16) {
if (comp < (-1.4341E36f + var_4)) {
  for (int i=0; i < var_1; ++i) {
    for (int i=0; i < var_2; ++i) {
      for (int i=0; i < var_3; ++i) {
        comp = fabsf(+1.4017E-44f);
float tmp_1 = (var_7 * (var_8 - +1.0915E34f));
var_5[i] = (+0.0f + var_9 + var_10 / sinf((var_11 / asinf(+1.5488E-43f))));
comp += var_5[i] + tmp_1 - (var_12 - logf(var_13 - +1.4557E5f / (+1.4304E1f - -1.1404E23f)));
for (int i=0; i < var_6; ++i) {
  comp += +1.1929E2f / cosf(-0.0f / tanhf(+0.0f - var_15 - -1.2256E-42f));
var_14[i] = -1.6334E-22f;
comp += var_14[i] + var_16 * -1.2262E-44f;
}
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
  float* tmp_6 = initPointer( atof(argv[6]) );
  int tmp_7 = atoi(argv[7]);
  float tmp_8 = atof(argv[8]);
  float tmp_9 = atof(argv[9]);
  float tmp_10 = atof(argv[10]);
  float tmp_11 = atof(argv[11]);
  float tmp_12 = atof(argv[12]);
  float tmp_13 = atof(argv[13]);
  float tmp_14 = atof(argv[14]);
  float* tmp_15 = initPointer( atof(argv[15]) );
  float tmp_16 = atof(argv[16]);
  float tmp_17 = atof(argv[17]);

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17);
  cudaDeviceSynchronize();

  return 0;
}
