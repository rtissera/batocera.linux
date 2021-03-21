include $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/utils-host/compiler-commons/compiler-commons.mk
include $(sort $(wildcard $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/*/*.mk $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/*/*/*.mk $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/*/*/*/*.mk $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/*/*/*/*/*.mk))
