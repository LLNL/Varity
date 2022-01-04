
/* This is a automatically generated test. Do not modify */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__
void compute(float comp, int var_1,float var_2,float var_3,float var_4,float var_5,int var_6,int var_7,float var_8,float var_9,float var_10,float var_11,float var_12,float var_13,float var_14,float var_15,float var_16,float var_17) {
if (comp < +1.2966E-16f + log10f((var_2 / +1.2215E-36f))) {
  for (int i=0; i < var_1; ++i) {
    if (comp >= (var_3 * (var_4 / (-1.4061E-37f + var_5)))) {
      if (comp < (-1.6458E-44f - +1.3342E1f)) {
        comp += -1.4261E-41f + +1.1801E35f;
for (int i=0; i < var_6; ++i) {
  float tmp_1 = (var_8 / -1.7263E-43f + -1.0250E34f);
comp += tmp_1 - atan2f(-1.5918E36f, var_9 + var_10);
}
for (int i=0; i < var_7; ++i) {
  comp += coshf(var_11 * logf((+1.6664E-35f / (+1.1506E-36f / var_12))));
comp += var_13 - +1.0771E-42f - var_14;
}
if (comp <= (+1.2255E-43f + acosf(+1.9201E-35f))) {
  comp = -1.0782E-41f - +1.4578E-44f + (var_15 * +1.4237E-35f + -1.6330E-43f - -1.8123E-19f);
float tmp_2 = +1.0156E34f;
comp = tmp_2 - acosf(var_16 / (var_17 * -1.9758E6f));
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
  float tmp_3 = atof(argv[3]);
  float tmp_4 = atof(argv[4]);
  float tmp_5 = atof(argv[5]);
  float tmp_6 = atof(argv[6]);
  int tmp_7 = atoi(argv[7]);
  int tmp_8 = atoi(argv[8]);
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
