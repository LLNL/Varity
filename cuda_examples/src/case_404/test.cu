
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,float var_6,float var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17) {
if (comp >= -1.0106E-37f * (var_2 / var_3)) {
  comp = sinf(-0.0f / (+1.3812E-1f * -1.9419E34f * fmodf(+1.8742E35f, var_4 - +1.5845E36f * var_5)));
comp += (-1.0612E-11f + sinf((var_6 + log10f(+1.3991E36f))));
comp += var_7 / (-1.1860E-36f + (-1.7029E5f * var_8 - var_9));
if (comp <= (var_10 / sinf((-1.8483E-36f * (+1.3027E-43f + -1.0000E-35f * var_11 + -1.5438E-37f))))) {
  comp = (-1.8740E-43f - var_12);
}
for (int i=0; i < var_1; ++i) {
  float tmp_1 = (var_13 - -1.0165E26f);
float tmp_2 = +0.0f;
comp = tmp_2 - tmp_1 + var_14 * (+1.0543E-8f / -1.8980E-41f);
comp += -1.6881E-35f / powf((var_15 / -1.0392E8f - var_16 + var_17), acosf(+1.6332E-41f));
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
