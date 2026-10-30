# AOSP API22 stock K7 GPS integration

The current product copies the original MS330 GPS HAL directly to gps.msm8909.so.
The AOSP frameworks/base JNI adaptation supplies the three-entry LG XTRA callback
layout, and the platform changes include the legacy AGPS callback fallback needed
for the vendor extension. Keep these matched platform/device versions together.

The native gps.msm8909 wrapper retained in this directory belongs to the earlier
Android6 integration; it is not the selected AOSP5.1.1 HAL path. Do not substitute
it or its historical NULL-callback assumptions for the current direct-HAL setup.

GPS fix/accuracy claims must come from the current product's device tests; they
must not be copied from old CM reports. Do not publish raw coordinates or location
logs. The active hardware selection is documented by ../gps.mk.
