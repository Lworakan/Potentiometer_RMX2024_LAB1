/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: potenlab_types.h
 *
 * Code generated for Simulink model 'potenlab'.
 *
 * Model version                  : 1.0
 * Simulink Coder version         : 24.2 (R2024b) 21-Jun-2024
 * C/C++ source code generated on : Tue Oct  8 01:22:17 2024
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex-M
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef potenlab_types_h_
#define potenlab_types_h_
#include "rtwtypes.h"
#include "stm_adc_ll.h"

/* Custom Type definition for MATLABSystem: '<S3>/Analog to Digital Converter' */
#include "stm_adc_ll.h"
#include "stm_adc_ll.h"
#ifndef struct_tag_UjrdchBSJr9uXrLnGNh2HB
#define struct_tag_UjrdchBSJr9uXrLnGNh2HB

struct tag_UjrdchBSJr9uXrLnGNh2HB
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  ADC_Type_T* ADCHandle;
};

#endif                                 /* struct_tag_UjrdchBSJr9uXrLnGNh2HB */

#ifndef typedef_stm32cube_blocks_AnalogInput__T
#define typedef_stm32cube_blocks_AnalogInput__T

typedef struct tag_UjrdchBSJr9uXrLnGNh2HB stm32cube_blocks_AnalogInput__T;

#endif                             /* typedef_stm32cube_blocks_AnalogInput__T */

/* Forward declaration for rtModel */
typedef struct tag_RTM_potenlab_T RT_MODEL_potenlab_T;

#endif                                 /* potenlab_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
