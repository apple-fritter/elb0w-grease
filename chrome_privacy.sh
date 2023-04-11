#!/bin/bash

# Clear existing Chrome data
adb shell pm clear com.android.chrome

# Enable Do Not Track
adb shell "echo 'chrome://settings/privacy' > /sdcard/chrome.txt"
adb shell "am start -a android.intent.action.VIEW -d file:///sdcard/chrome.txt"
adb shell "input tap 155 260"
adb shell "input tap 155 330"

# Disable WebRTC
adb shell "echo 'chrome://flags/#disable-webrtc' > /sdcard/chrome.txt"
adb shell "am start -a android.intent.action.VIEW -d file:///sdcard/chrome.txt"
adb shell "input tap 350 530"
adb shell "input tap 350 630"
adb shell "input tap 350 1080"
adb shell "input keyevent 4"

# Block third-party cookies
adb shell "echo 'chrome://settings/siteData' > /sdcard/chrome.txt"
adb shell "am start -a android.intent.action.VIEW -d file:///sdcard/chrome.txt"
adb shell "input tap 155 1075"
adb shell "input tap 155 1320"
adb shell "input tap 155 1600"
adb shell "input keyevent 4"

# Disable autofill
adb shell "echo 'chrome://settings/autofill' > /sdcard/chrome.txt"
adb shell "am start -a android.intent.action.VIEW -d file:///sdcard/chrome.txt"
adb shell "input tap 155 710"
adb shell "input tap 155 890"

# Disable location sharing
adb shell "echo 'chrome://settings/content/location' > /sdcard/chrome.txt"
adb shell "am start -a android.intent.action.VIEW -d file:///sdcard/chrome.txt"
adb shell "input tap 155 480"
adb shell "input tap 155 590"

# Disable push notifications
adb shell "echo 'chrome://settings/content/notifications' > /sdcard/chrome.txt"
adb shell "am start -a android.intent.action.VIEW -d file:///sdcard/chrome.txt"
adb shell "input tap 155 480"
adb shell "input tap 155 590"

# Close Chrome settings
adb shell "input keyevent 4"
