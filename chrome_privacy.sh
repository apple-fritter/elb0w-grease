#!/bin/bash

# Clear existing Chrome data
adb shell pm clear com.android.chrome

# Enable Do Not Track
adb shell settings put global privacy_do_not_track_enabled 1

# Disable WebRTC
adb shell settings put global webview_enable_webrtc 0

# Block third-party cookies
adb shell settings put global third_party_cookies_enabled 0

# Disable autofill
adb shell settings put secure autofill_enabled 0

# Disable location sharing
adb shell settings put global location_settings_enabled 0

# Disable push notifications
adb shell settings put global pushmessaging_enabled 0

# Block camera and microphone access
adb shell settings put global camera_disabled 1
adb shell settings put global microphone_disabled 1

# Block usage data sharing
adb shell settings put global usage_stats_enabled 0

# Allow first-party cookies only
adb shell settings put global cookie_setting 1

# Set default browsing mode to incognito
adb shell "echo '
<map>
  <entry key=\"browser_mode_incognito\" value=\"true\" />
</map>
' > /data/user_de/0/com.android.chrome/shared_prefs/ChromeSyncPrefs.xml"

# Restart Chrome
adb shell am force-stop com.android.chrome
adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main
