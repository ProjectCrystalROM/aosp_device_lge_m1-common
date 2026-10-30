# AOSP Bluetooth address handoff

The current API22 product uses the dedicated external/bluetooth/bluedroid fork.
Its source-built Bluetooth stack publishes the selected persistent controller
address through the property expected by the stock LG address helper. Wi-Fi/
Bluetooth and reboot persistence passed the owner's AOSP regression tests.

The system/bt patch retained here is an Android6 historical export, not an AOSP
Lollipop installation step. Do not apply it to the current source tree or replace
the bluedroid fork with an unadapted provider. No NV rewrite or bond reset is part
of this handoff. Exact current sources are pinned by the AOSP manifest.
