# Reviewed CM13/CAF providers; replace legacy copies in experimental profiles.
# See audit/PROVIDER_COMPATIBILITY_INTEGRATION.md in the audit workspace.
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libQWiFiSoftApCfg \
    libandroid \
    libandroid_servers \
    libaudio-resampler \
    libaudioroute \
    libc2dcolorconvert \
    libcnefeatureconfig \
    libcurl \
    libemoji \
    libhdmi \
    libiprouteutil \
    libmemalloc \
    libminui \
    libmm-omxcore \
    libnetlink \
    liboverlay \
    libqdMetaData \
    libqdutils \
    libqsap_sdk \
    libqservice \
    libstagefrighthw \
    libtinycompress \
    libtinyxml \
    libtinyxml2

# Source owns these CM12 platform libraries instead of duplicate copy rules.
PRODUCT_PACKAGES += libaudioparameter libbson libdivxdrmdecrypt libstlport

# These providers served CM's netd extensions. AOSP netd does not use them,
# and no selected vendor DT_NEEDED entry references them.
ifneq ($(TARGET_PRODUCT),aosp_m1)
PRODUCT_PACKAGES += \
    libebt_802_3 \
    libebt_among \
    libebt_arp \
    libebt_arpreply \
    libebt_ip \
    libebt_ip6 \
    libebt_limit \
    libebt_log \
    libebt_mark \
    libebt_mark_m \
    libebt_nat \
    libebt_nflog \
    libebt_pkttype \
    libebt_redirect \
    libebt_standard \
    libebt_stp \
    libebt_ulog \
    libebt_vlan \
    libebtable_broute \
    libebtable_filter \
    libebtable_nat \
    libebtc \
    libnetfilter_conntrack \
    libnfnetlink
endif
