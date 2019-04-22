# DeviceDetector

DeviceDetector able to detect device's model and cellular type.

Supported devices:
1. iPhone
2. iPad
3. AppleTV
4. Apple Watch

## Usage

Import module
```Swift
import DeviceDetector
```

And then you can check current device directly in condition or switch-case

```Swift
if DeviceDetector.device.is(iPadModel.Model2(cellularType: .CDMA))
{
  print("is iPad2")
}

if DeviceDetector.device.younger(iPhoneModel.Model3G(cellularType: .CDMA))
{
  print("Current device is younger than iPhone 3G")
}

if case iPhoneModel.Model3G(cellularType: let cellular) = DeviceDetector.device, cellular == .GSM
{
    print("The device is iPhone 3G AND GSM")
}
```

## Installation

DeviceDetector is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DeviceDetector'
```

Alternatively, copy DeviceDetector folder . If you use this method, you can omit the line "import DeviceDetector" at the head of your file.

## Author

Alexander Zakatnov, me@zaakk.com


## License

DeviceDetector is available under the MIT license. See the LICENSE file for more info.
