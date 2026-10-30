# Historical Android6 radio Parcel bridges — inactive on AOSP API22

The ARM32 bridges retained here came from the earlier Android6 bringup and the
Apache-2.0 H631 source touchpro/android_device_lge_msm8916-common-lineageos13
(candidate84ab091b9eb7). Original code attribution and source history are retained.

They are not selected by the current AOSP5.1.1 product: M1_BUILD_RADIO_COMPAT=false.
The dedicated AOSP Binder fork supplies the required LG exports directly; matched
stock radio libraries and source-owned providers supply the running RIL path.
No compatibility shim or missing-symbol stub is newly required by this directory.

Current LTE/data and persistence acceptance is documented in the AOSP product
release notes. Old CM13 ABI tests and active-SIM status must not be presented as
current AOSP qualification. Voice/VoLTE remains outside the product scope.
