#!/bin/bash

# Clear existing Chrome data
adb shell pm clear com.android.chrome

# Enable Do Not Track for Chrome
adb shell "echo '
<map>
  <entry key=\"enable_do_not_track\">true</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Disable WebRTC for Chrome
adb shell "echo '
<map>
  <entry key=\"webrtc.ip_handling_policy\">disable_non_proxied_udp</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Block third-party cookies for Chrome
adb shell "echo '
<map>
  <entry key=\"profile.content_settings.exceptions.cookies\">{}</entry>
  <entry key=\"profile.content_settings.exceptions.cookies_for_urls\">[{&quot;pattern&quot;:&quot;[*.]google.com&quot;,&quot;setting&quot;:1}]</entry>
  <entry key=\"profile.content_settings.pattern_pairs.last_used\">4</entry>
  <entry key=\"profile.content_settings.pattern_pairs.4.pattern\">[*.]google.com</entry>
  <entry key=\"profile.content_settings.pattern_pairs.4.setting\">1</entry>
  <entry key=\"profile.default_content_setting_values.cookies\">2</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Disable autofill for Chrome
adb shell "echo '
<map>
  <entry key=\"autofill_enabled\">false</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Disable location sharing for Chrome
adb shell "echo '
<map>
  <entry key=\"geolocation\">{}</entry>
  <entry key=\"profile.content_settings.exceptions.geolocation\">{}</entry>
  <entry key=\"profile.content_settings.exceptions.geolocation_for_urls\">[]</entry>
  <entry key=\"profile.default_content_setting_values.geolocation\">2</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Disable push notifications for Chrome
adb shell "echo '
<map>
  <entry key=\"push_messaging_blocked\">true</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Block camera and microphone access for Chrome
adb shell "echo '
<map>
  <entry key=\"profile.content_settings.exceptions.media_stream_camera\">{}</entry>
  <entry key=\"profile.content_settings.exceptions.media_stream_camera_for_urls\">[]</entry>
  <entry key=\"profile.content_settings.exceptions.media_stream_mic\">{}</entry>
  <entry key=\"profile.content_settings.exceptions.media_stream_mic_for_urls\">[]</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Allow first-party cookies only for Chrome
adb shell "echo '
<map>
  <entry key=\"profile.default_content_setting_values.cookies\">1</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Set default browsing mode to incognito for Chrome
adb shell "echo '
<map>
  <entry key=\"incognito_mode_availability\">1</entry>
</map>
' > /data/data/com.android.chrome/app_chrome/Default/Preferences"

# Restart Chrome
adb shell am force-stop com.android.chrome
adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main
