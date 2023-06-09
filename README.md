# elb0w-grease

This Bash script configures the Chrome app on an Android device to be more privacy-conscious. The script uses `ADB` (Android Debug Bridge) to modify Chrome settings and enable various privacy options.

## Prerequisites
* An Android device with Chrome installed
* ADB (Android Debug Bridge) installed on your computer

## Usage
* Connect your Android device to your computer via USB
* Enable USB debugging on your Android device (see instructions)
* Open a terminal or command prompt on your computer and navigate to the directory containing the script
* Run the script by entering the following command:
```
./configure_chrome_privacy.sh
```

The script will execute and configure Chrome with the specified privacy options

## Privacy options
The following privacy options are enabled by default in the script:

* Enable Do Not Track
* Disable WebRTC
* Block third-party cookies
* Disable autofill
* Disable location sharing
* Disable push notifications
* Block camera and microphone access
* Block usage data sharing
* Allow first-party cookies only
* Set default browsing mode to incognito
* Enable Safe Browsing
* Disable search and site suggestions
* Disable personalized ads

## Customization
You can modify the script to enable/disable specific privacy options or add new options by editing the script using a text editor. The script is well-documented and includes comments explaining each option.

## Troubleshooting
* If you encounter any issues running the script, make sure that your device is properly connected and that USB debugging is enabled.
* If the script fails to execute, try running the `adb devices` command to verify that your device is listed and authorized.
* If Chrome does not restart after the script executes, try manually closing Chrome and reopening it.

## [Disclaimer](DISCLAIMER)
**This software is provided "as is" and without warranty of any kind**, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

**The authors do not endorse or support any harmful or malicious activities** that may be carried out with the software. It is the user's responsibility to ensure that their use of the software complies with all applicable laws and regulations.

## License
These files are released under the [MIT License](LICENSE).
