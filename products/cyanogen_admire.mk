# Inherit AOSP device configuration for tass
$(call inherit-product, device/samsung/admire/device_admire.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_admire
PRODUCT_BRAND := samsung_admire
PRODUCT_DEVICE := admire
PRODUCT_MODEL := SCH-R720
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=EH02 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/SCH-R720/SCH-R720:2.3.4/GINGERBREAD/EH02:user/release-keys PRIVATE_BUILD_DESC="SCH-R720-user 2.3.4 GINGERBREAD EH02 release-keys"

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := Admire
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
