<div align="center" >
  <img width="85%" src="image/logo.png" />
</div>

# SFStyleKit

[![CI Status](https://img.shields.io/travis/Sfh03031/SFStyleKit.svg?style=flat)](https://travis-ci.org/Sfh03031/SFStyleKit)
[![Version](https://img.shields.io/cocoapods/v/SFStyleKit.svg?style=flat)](https://cocoapods.org/pods/SFStyleKit)
[![License](https://img.shields.io/cocoapods/l/SFStyleKit.svg?style=flat)](https://cocoapods.org/pods/SFStyleKit)
[![Platform](https://img.shields.io/cocoapods/p/SFStyleKit.svg?style=flat)](https://cocoapods.org/pods/SFStyleKit)

## Introduction

SFStyleKit is a swift library that supports chain programming, at present, the native APIs of 16 classes including CALayer and UIKit have been added with chain programming, and extensions have been added to 27 types including UIKit, Foundation, and CLLocation.

(zh: SFStyleKit是一个支持链式编程写法的swift库，目前为CALayer、UIKit共16个类的原生api增加了链式编程写法，同时为UIKit、Foundation和CLLocation共27个类型增加了扩展。)

To run the example project, clone the repo, and run `pod install` from the Example directory first.

[DeepWiki](https://deepwiki.com/Sfh03031/SFStyleKit/)


## Requirements

* iOS 12.0 or later
* Swift 5.9.2
* Xcode 15.1

## Installation
<!---->
<!--### Carthage-->
<!--```-->
<!--  github "Sfh03031/SFStyleKit"-->
<!--```-->

### CocoaPods
SFStyleKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby

pod 'SFStyleKit'

```

SFStyleKit has created sub libraries and subspecs.

if you only want to use it about core protocal, simply add the following line to your Podfile: 
```
pod 'SFStyleKit/Core'

#or

pod 'SFStyleKit', :subspecs => ['Core']

```

if you only want to use it about extensions, simply add the following line to your Podfile: 
```
pod 'SFStyleKit/JWEx'

#or

pod 'SFStyleKit', :subspecs => ['JWEx']

```

if you only want to use it about chain programming, simply add the following line to your Podfile: 
```
pod 'SFStyleKit/JWChain'

#or

pod 'SFStyleKit', :subspecs => ['JWChain']

```

if you want to use the full functionality, simply add the following line to your Podfile:

```swift

pod 'SFStyleKit'

#or

pod 'SFStyleKit', :subspecs => ['Core', 'JWEx', 'JWChain']

```

If you want to use the latest features of SFStyleKit, use normal external source dependencies.

```ruby

pod 'SFStyleKit', :git => 'https://github.com/Sfh03031/SFStyleKit.git'

```

## Usage

Install and import SFStyleKit

```swift

import SFStyleKit

```

### Chain programming

experience chain programming, like:

```swift

    let SCREENW: CGFloat = UIScreen.main.bounds.width
    let SCREENH: CGFloat = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.sf.backgroundColor(.white).addSubview(backView)

    }
    
    lazy var backView: UIView = {
        let view = UIView()
        view.sf.frame(CGRect(x: 10, y: 100, width: SCREENW - 20, height: SCREENH - 200))
            .backgroundColor(.random)
            .addSubview(alphaLabel)
            .addSubview(broveLabel)
            .addSubview(btn)
        
        ...
        
        return view
    }()
    
```
you can see the code in the Example Project.

### Extensions

SFStyleKit also provides many easy-to-use extensions that can be viewed based on the source code.

Methods extensions, like:

```swift

    lazy var backView: UIView = {
        let view = UIView()
        
        ...
        
        view.makeBorder(color: .brown, with: 1.0)
        view.makeRadius(10.0, corners: [.layerMinXMinYCorner, .layerMaxXMaxYCorner])
        view.makeShadow(5.0, color: .hex_BBCDC5, offset: CGSizeMake(5, 10), opacity: 1)
        view.showBadgePoint()
        view.addTapAction(2) { view in
            view?.hiddenBadgePoint()
        }
        view.addTapAction { view in
            UIAlertController().sf.message("tap backView").show(self).hidden(2)
        }
        return view
    }()
    
```

Property extensions, like:

```swift

    print("idfv: \(UIDevice.current.Idfv)")
    print("StringWithUUID: \(UIDevice.current.UUIDCreated)")
    print("batteryLevel: \(UIDevice.current.BatteryLevel)")
    print("batteryState: \(UIDevice.current.BatteryState)")
    print("cpuCoreNum: \(UIDevice.current.CpuCoreNum)")
    print("cpuType: \(UIDevice.current.CpuType)")
    print("deviceName: \(UIDevice.current.DeviceName)")
    print("deviceType: \(UIDevice.current.DeviceType)")
    print("deviceVolume: \(UIDevice.current.Volume)")
    print("diskTotalSize: \(UIDevice.current.DiskTotalSize)")
    print("diskAvailableSize: \(UIDevice.current.DiskAvailableSize)")
    print("ipAddress: \(String(describing: UIDevice.current.IpAddress))")
    print("isJailbreak: \(UIDevice.current.isJailbreak)")
    print("isSimulator: \(UIDevice.current.isSimulator)")
    print("localizedModel: \(UIDevice.current.LocalizedModel)")
    print("model: \(UIDevice.current.Model)")
    print("name: \(UIDevice.current.Name)")
    print("pasteBoardValue: \(UIDevice.current.PasteBoardValue)")
    print("screenBrightness: \(UIDevice.current.Brightness)")
    print("screenSize: \(UIDevice.current.Resolution)")
    print("simProvider: \(UIDevice.current.SimProvider)")
    print("systemName: \(UIDevice.current.SystemName)")
    print("systemVersion: \(UIDevice.current.SystemVersion)")
    
    print("DocumentsURL: \(UIApplication.shared.DocumentsURL?.absoluteString ?? "")")
    print("DocumentsPath: \(UIApplication.shared.DocumentsPath ?? "")")
    print("CachesURL: \(UIApplication.shared.CachesURL?.absoluteString ?? "")")
    print("CachesPath: \(UIApplication.shared.CachesPath ?? "")")
    print("LibraryURL: \(UIApplication.shared.LibraryURL?.absoluteString ?? "")")
    print("LibraryPath: \(UIApplication.shared.LibraryPath ?? "")")
    print("memoryUsage: \(UIApplication.shared.MemoryUsage)")
    
``` 

### Customized

You can also create your own methods. like:

```swift

extension UIView: SFExStyleProtocol {}

public extension SFExStyle where Base: UIView {

    @discardableResult 
    func methodA(_ radius: CGFloat) -> SFExStyle {
        base.layer.cornerRadius = radius
        base.layer.masksToBounds = radius > 0
        return self
    }
    
}

```

## Support

### Core

- SFExStyle

### JWEx

- CLLocation
    - CLLocationCoordinate2D
    - CLPlacemark

- Foundation
    - Array
    - Bundle
    - CGFloat
    - Date
    - Dictionary
    - Double
    - Float
    - Int
    - String
    - NSAttributedString

- UIKit
    - UIAlertController
    - UIApplication
    - UIButton
    - UIDevice
    - UIImage
    - UIImageView
    - UILabel
    - UINavigationController
    - UITapGestureRecognizer
    - UITextField
    - UITextView
    - UIView
    - UIViewController
    - UIColor
    - UIFont

### JWChain

- QuartzCore
    - CALayer

- UIKit
    - UIAlertController
    - UIButton
    - UICollectionView
    - UICollectionViewFlowLayout
    - UIControl
    - UIImageView
    - UILabel
    - UIScrollView
    - UISlider
    - UIStackView
    - UISwitch
    - UITableView
    - UITextField
    - UITextView
    - UIView

## Change log

2025.4.29, 1.0.0

- Support iOS18.0

- Upgrade version code and create sub libraries

2024.10.11, 0.1.7

- Update extensions and readme

- Add new support device names

2024.07.25, 0.1.6

- Update extensions

2024.07.11, 0.1.3

- Fix bugs

- Add new extensions with UICollectionView and UITableView

2024.05.15, 0.1.2

- Add new common color extensions
    
- Adjust the hierarchical structure of UIView extension and update several comments

2024.04.15, 0.1.1

- Initial version

## Warning

If the system native method has a return value or a property that is read-only, this extension is not suitable for use.

(zh: 如果系统原生方法有返回值或者属性是只读属性，则不适用这种链式写法的扩展。)
 
## Contributing

Please make an issue or pull request if you have any request.

Bug reports, Documentation, or tests, are always welcome as well.

## Author

Sfh03031, sfh894645252@163.com

## License

SFStyleKit is available under the MIT license. See the LICENSE file for more info.
