LOG_STEP_IN "- Disable several GMS components"
echo "# Disable GMS components" >> "$WORK_DIR/vendor/bin/init.qcom.early_boot.sh"
echo "pm disable com.google.android.gms/com.google.android.gms.auth.managed.admin.DeviceAdminReceiver" >> "$WORK_DIR/vendor/bin/init.qcom.early_boot.sh"
echo "pm disable com.google.android.gms/com.google.android.gms.chimera.GmsIntentOperationService" >> "$WORK_DIR/vendor/bin/init.qcom.early_boot.sh"
echo "pm disable com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver" >> "$WORK_DIR/vendor/bin/init.qcom.early_boot.sh"
LOG_STEP_OUT

LOG_STEP_IN "- Adding light blobs from source"
ADD_TO_WORK_DIR "$SOURCE_FIRMWARE" "vendor" "bin/hw/vendor.samsung.hardware.light-service"
ADD_TO_WORK_DIR "$SOURCE_FIRMWARE" "vendor" "lib64/vendor.samsung.hardware.light-V1-ndk_platform.so"
LOG_STEP_OUT

LOG_STEP_IN "- Adding SoundBooster libs from stock"
for f in "$WORK_DIR"/system/system/lib/lib_SAG_EQ_ver*.so; do [ -e "$f" ] && DELETE_FROM_WORK_DIR "system" "system/lib/${f##*/}"; done
for f in "$WORK_DIR"/system/system/lib64/lib_SAG_EQ_ver*.so; do [ -e "$f" ] && DELETE_FROM_WORK_DIR "system" "system/lib64/${f##*/}"; done

for f in "$WORK_DIR"/system/system/lib/lib_SoundBooster_ver*.so; do [ -e "$f" ] && DELETE_FROM_WORK_DIR "system" "system/lib/${f##*/}"; done
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib/lib_SoundBooster_ver1050.so"
for f in "$WORK_DIR"/system/system/lib64/lib_SoundBooster_ver*.so; do [ -e "$f" ] && DELETE_FROM_WORK_DIR "system" "system/lib64/${f##*/}"; done
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/lib_SoundBooster_ver1050.so"

for f in "$WORK_DIR"/system/system/lib/lib_SoundAlive_play_plus_ver*.so; do [ -e "$f" ] && DELETE_FROM_WORK_DIR "system" "system/lib/${f##*/}"; done
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib/lib_SoundAlive_play_plus_ver500.so"
for f in "$WORK_DIR"/system/system/lib64/lib_SoundAlive_play_plus_ver*.so; do [ -e "$f" ] && DELETE_FROM_WORK_DIR "system" "system/lib64/${f##*/}"; done
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/lib_SoundAlive_play_plus_ver500.so"

ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib/libaudiosaplus_sec_legacy.so"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libaudiosaplus_sec_legacy.so"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib/libsamsungSoundbooster_plus_legacy.so"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libsamsungSoundbooster_plus_legacy.so"
LOG_STEP_OUT