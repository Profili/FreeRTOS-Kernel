# Add set(CONFIG_USE_middleware_freertos-kernel_template true) in config.cmake to use this component

include_guard(GLOBAL)
message("${CMAKE_CURRENT_LIST_FILE} component is included.")

if(CONFIG_CORE STREQUAL cm0p)
  add_config_file(${CMAKE_CURRENT_LIST_DIR}/template/ARM_CM0/FreeRTOSConfig.h ${CMAKE_CURRENT_LIST_DIR}/template/ARM_CM4F_4_priority_bits middleware_freertos-kernel_template)
endif()

if(CONFIG_CORE STREQUAL cm33 AND (CONFIG_FPU STREQUAL NO_FPU OR CONFIG_FPU STREQUAL SP_FPU) AND (CONFIG_DEVICE_ID STREQUAL LPC5502 OR CONFIG_DEVICE_ID STREQUAL LPC5504 OR CONFIG_DEVICE_ID STREQUAL LPC5506 OR CONFIG_DEVICE_ID STREQUAL LPC5512 OR CONFIG_DEVICE_ID STREQUAL LPC5514 OR CONFIG_DEVICE_ID STREQUAL LPC5516 OR CONFIG_DEVICE_ID STREQUAL LPC5526 OR CONFIG_DEVICE_ID STREQUAL LPC5528 OR CONFIG_DEVICE_ID STREQUAL LPC55S04 OR CONFIG_DEVICE_ID STREQUAL LPC55S06 OR CONFIG_DEVICE_ID STREQUAL LPC55S14 OR CONFIG_DEVICE_ID STREQUAL LPC55S16 OR CONFIG_DEVICE_ID STREQUAL LPC55S26 OR CONFIG_DEVICE_ID STREQUAL LPC55S28 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL MIMXRT533S OR CONFIG_DEVICE_ID STREQUAL MIMXRT555S OR CONFIG_DEVICE_ID STREQUAL MIMXRT595S OR CONFIG_DEVICE_ID STREQUAL MIMXRT633S OR CONFIG_DEVICE_ID STREQUAL MIMXRT685S))
  add_config_file(${CMAKE_CURRENT_LIST_DIR}/template/ARM_CM33_3_priority_bits/FreeRTOSConfig.h ${CMAKE_CURRENT_LIST_DIR}/template/ARM_CM4F_4_priority_bits middleware_freertos-kernel_template)
endif()

if(CONFIG_CORE STREQUAL cm4f AND (CONFIG_DEVICE_ID STREQUAL LPC54005 OR CONFIG_DEVICE_ID STREQUAL LPC54016 OR CONFIG_DEVICE_ID STREQUAL LPC54018 OR CONFIG_DEVICE_ID STREQUAL LPC54018J2M OR CONFIG_DEVICE_ID STREQUAL LPC54018J4M OR CONFIG_DEVICE_ID STREQUAL LPC54605J512 OR CONFIG_DEVICE_ID STREQUAL LPC54605J256 OR CONFIG_DEVICE_ID STREQUAL LPC54606J512 OR CONFIG_DEVICE_ID STREQUAL LPC54606J256 OR CONFIG_DEVICE_ID STREQUAL LPC54607J256 OR CONFIG_DEVICE_ID STREQUAL LPC54607J512 OR CONFIG_DEVICE_ID STREQUAL LPC54608J512 OR CONFIG_DEVICE_ID STREQUAL LPC54616J512 OR CONFIG_DEVICE_ID STREQUAL LPC54616J256 OR CONFIG_DEVICE_ID STREQUAL LPC54618J512 OR CONFIG_DEVICE_ID STREQUAL LPC54628J512 OR CONFIG_DEVICE_ID STREQUAL LPC54S005 OR CONFIG_DEVICE_ID STREQUAL LPC54S016 OR CONFIG_DEVICE_ID STREQUAL LPC54S018 OR CONFIG_DEVICE_ID STREQUAL LPC54S018J2M OR CONFIG_DEVICE_ID STREQUAL LPC54S018J4M))
  add_config_file(${CMAKE_CURRENT_LIST_DIR}/template/ARM_CM4F_3_priority_bits/FreeRTOSConfig.h ${CMAKE_CURRENT_LIST_DIR}/template/ARM_CM4F_4_priority_bits middleware_freertos-kernel_template)
endif()

if((CONFIG_CORE STREQUAL cm4f OR CONFIG_CORE STREQUAL cm7f) AND (CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL MCIMX7U3xxxxx OR CONFIG_DEVICE_ID STREQUAL MCIMX7U5xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM1xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM1xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM2xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM2xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM3xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM3xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM4xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM4xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM5xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM5xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM6xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM6xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MK02FN128xxx10 OR CONFIG_DEVICE_ID STREQUAL MK02FN64xxx10 OR CONFIG_DEVICE_ID STREQUAL MK22FN128xxx12 OR CONFIG_DEVICE_ID STREQUAL MK22FN256xxx12 OR CONFIG_DEVICE_ID STREQUAL MK22FN512xxx12 OR CONFIG_DEVICE_ID STREQUAL MIMX8ML3xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML3xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML4xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML4xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML6xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML6xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML8xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML8xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN1xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN1xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN2xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN2xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN3xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN3xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN4xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN4xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN5xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN6xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMXRT1011xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1015xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1021xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1024xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1041xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1042xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1051xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1052xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx))
  add_config_file(${CMAKE_CURRENT_LIST_DIR}/template/ARM_CM4F_4_priority_bits/FreeRTOSConfig.h ${CMAKE_CURRENT_LIST_DIR}/template/ARM_CM4F_4_priority_bits middleware_freertos-kernel_template)
endif()

