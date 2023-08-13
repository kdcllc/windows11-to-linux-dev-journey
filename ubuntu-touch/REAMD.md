# Journey from Apple iPhone and Android to Ubuntu Touch on Pixel 3a

Welcome to the GitHub repository chronicling an exciting journey of transitioning from Apple's iPhone and Android devices to Ubuntu Touch on the Google Pixel 3a. 
This repository serves as a comprehensive guide and resource hub for individuals looking to explore the world of open-source mobile operating systems and break free from the confines of proprietary platforms.

## About

In an age dominated by closed ecosystems, this repository shares the experiences, challenges, and triumphs of migrating to Ubuntu Touch, an alternative mobile operating system built on the principles of privacy, security, and user empowerment. Follow along as we uncover the process of liberating a Google Pixel 3a from the Android ecosystem and embracing Ubuntu Touch's unique features and capabilities.

## Why Ubuntu Touch?

- Privacy: Ubuntu Touch prioritizes user privacy by minimizing data collection and offering comprehensive privacy controls.

- Customization: Tailor your mobile experience to your preferences with a variety of customization options, from theming to app layouts.

- Security: Benefit from regular security updates and a secure architecture that puts you in control of your device's data.

- Open Source: Ubuntu Touch is built on open-source principles, giving you the freedom to explore, modify, and contribute to the operating system.


I found that Google usb driver must be installed on windows 11 https://developer.android.com/studio/run/win-usb before connecting device to usb port.

1. complete the setup of the phone WIFI and bare minimum
2. then oem onlock greyed out is enabled and should be toggled

3. adb reboot-bootloader (enters the phone into a state stating that it is locked)

4. Command promont: `fastboot flashing unlock`
```
	OKAY [  0.136s]
	Finished. Total time: 0.138s
```


5. On the device select `Unlock the bootloader'

6. Start the device -> go thru the wizard again -> enable developer mode as well

7. https://devices.ubuntu-touch.io/device/sargo/ 

8. https://developers.google.com/android/images#sargo and search for PQ3B.190801.002

```bash
 	adb kill-server
	then flash device
	allow adb
```

7. setup Androin device no need for wifi 
8. Start the phone About Phone --> Build Number 
9. download ububtu touch install  https://devices.ubuntu-touch.io/device/sargo/ 


## References

- https://www.youtube.com/watch?v=v3nZSKsedr4&ab_channel=Lumpology

## Disclaimer

While this repository aims to provide comprehensive and accurate information, please note that the process of transitioning to Ubuntu Touch involves technical steps that can potentially impact your device. Proceed with caution and ensure you fully understand the process before making any changes.

__Happy migrating and exploring the open world of Ubuntu Touch on your Pixel 3a!__