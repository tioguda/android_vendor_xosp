$(call inherit-product, vendor/xosp/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Tejat.ogg \
    ro.config.alarm_alert=xperia.ogg
    
$(call inherit-product, vendor/xosp/config/telephony.mk)
ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/xosp/prebuilt/common/bootanimation/320.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/xosp/config/telephony.mk)
