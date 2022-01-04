
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, float var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17) {
if (comp == +1.0347E-36f - atan2f(sinf(+1.4337E35f), (+1.3940E36f + var_1 + (var_2 * -1.5186E36f + var_3)))) {
  if (comp > (var_4 * sqrtf(+1.7793E34f))) {
    if (comp >= -1.0748E-42f * (-1.4484E-41f + (-1.9524E-43f + (+1.6624E-25f * -0.0f)))) {
      if (comp >= (var_5 - floorf(var_6 + -1.5508E28f * (-1.8030E-41f / +1.6465E-43f)))) {
        comp = (-1.9321E-16f * var_7);
if (comp >= sqrtf(+1.6382E-35f)) {
  float tmp_1 = -1.5351E-42f;
float tmp_2 = var_8 * (var_9 - -1.0149E36f / var_10 * +1.6542E-43f * -1.7481E21f);
comp = tmp_2 + tmp_1 + (+1.6733E34f * (+1.7556E36f * var_11));
comp += (var_12 / cosf((var_13 - var_14 + ceilf((var_15 + var_16 * var_17)))));
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

  compute<<<1,1>>>(tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_10,tmp_11,tmp_12,tmp_13,tmp_14,tmp_15,tmp_16,tmp_17,tmp_18);
  cudaDeviceSynchronize();

  return 0;
}
