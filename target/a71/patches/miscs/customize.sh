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
