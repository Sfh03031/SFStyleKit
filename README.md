<div align="center" >
<!--  <img width="70%" src="image/logo.png" />-->
  <span style="color: red;font-size: large; display: block;">SFStyleKit</span>
</div>

# SFStyleKit

[![CI Status](https://img.shields.io/travis/Sfh03031/SFStyleKit.svg?style=flat)](https://travis-ci.org/Sfh03031/SFStyleKit)
[![Version](https://img.shields.io/cocoapods/v/SFStyleKit.svg?style=flat)](https://cocoapods.org/pods/SFStyleKit)
[![License](https://img.shields.io/cocoapods/l/SFStyleKit.svg?style=flat)](https://cocoapods.org/pods/SFStyleKit)
[![Platform](https://img.shields.io/cocoapods/p/SFStyleKit.svg?style=flat)](https://cocoapods.org/pods/SFStyleKit)

## Introduction

SFStyleKit is a swift library that supports chain programmin, so you don't need to write property name and equal operator many times anymore.

Like this:

```swift
    backView.layer.sf.borderColor(UIColor.brown.cgColor).borderWidth(2.0)
```
you can see the code in the Example Project.

SFStyleKit also provides many easy-to-use extensions that can be viewed based on the source code.

Like Colors:

```swift
    /// Chinese Colors
    
    /// 丁香色
    class var hex_cca4e3: UIColor { sf.hexColor(hex: "#cca4e3") }
    /// 雪青
    class var hex_b0a4e3: UIColor { sf.hexColor(hex: "#b0a4e3") }
    /// 群青
    class var hex_4c8dae: UIColor { sf.hexColor(hex: "#4c8dae") }
    /// 紫棠
    class var hex_56004f: UIColor { sf.hexColor(hex: "#56004f") }

    .....
    
    /// PanTong Year Colors
    
    /// 2024 - 柔和桃
    class var hex_PT_FFBE98: UIColor { sf.hexColor(hex: "#FFBE98") }
    /// 2023 - 非凡洋红
    class var hex_PT_BE3455: UIColor { sf.hexColor(hex: "#BE3455") }
    /// 2022 - 长春花蓝
    class var hex_PT_6667AB: UIColor { sf.hexColor(hex: "#6667AB") }
    /// 2021 - 明亮黄
    class var hex_PT_F5DF4D: UIColor { sf.hexColor(hex: "#F5DF4D") }
    
    ....
    
```

Like get some current device's infomations:

```swift
    print("idfv: \(UIDevice.current.sf.idfv)")
    print("StringWithUUID: \(UIDevice.current.sf.StringWithUUID)")
    print("batteryLevel: \(UIDevice.current.sf.batteryLevel)")
    print("batteryState: \(UIDevice.current.sf.batteryState)")
    print("cpuCoreNum: \(UIDevice.current.sf.cpuCoreNum)")
    print("cpuType: \(UIDevice.current.sf.cpuType)")
    print("deviceName: \(UIDevice.current.sf.deviceName)")
    print("deviceType: \(UIDevice.current.sf.deviceType)")
    print("deviceVolume: \(UIDevice.current.sf.deviceVolume)")
    print("diskTotalSize: \(UIDevice.current.sf.diskTotalSize)")
    print("diskAvailableSize: \(UIDevice.current.sf.diskAvailableSize)")
    print("ipAddress: \(String(describing: UIDevice.current.sf.ipAddress))")
    print("isJailbreak: \(UIDevice.current.sf.isJailbreak)")
    print("isSimulator: \(UIDevice.current.sf.isSimulator)")
    print("localizedModel: \(UIDevice.current.sf.localizedModel)")
    print("model: \(UIDevice.current.sf.model)")
    print("name: \(UIDevice.current.sf.name)")
    print("pasteBoardValue: \(UIDevice.current.sf.pasteBoardValue)")
    print("screenBrightness: \(UIDevice.current.sf.screenBrightness)")
    print("screenSize: \(UIDevice.current.sf.screenResolution)")
    print("simProvider: \(UIDevice.current.sf.simProvider)")
    print("systemName: \(UIDevice.current.sf.systemName)")
    print("systemVersion: \(UIDevice.current.sf.systemVersion)")
    
    print("memoryUsage: \(UIApplication.shared.sf.memoryUsage)")
    
``` 

## Requirements

* iOS 12.0 or later
* Swift 5.9.2
* Xcode 15.1

## Installation

### Carthage
```
  github "Sfh03031/SFStyleKit"
```

### CocoaPods
SFStyleKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SFStyleKit'
```

## Usage

```swift
import SFStyleKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.sf.backgroundColor(.white).add(subview: backView)
    }
    
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 10, y: 50, width: self.view.bounds.width - 20, height: self.view.bounds.height / 2 - 50))
        view.sf
            .backgroundColor(UIColor.sf.random)
            .makeShadow(5, color: .hex_bbcdc5, offset: CGSize(width: 5, height: 10), opacity: 1)
            .makeGradient([UIColor.green.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor], locations: [0, 0.4, 1], startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 1, y: 1))
            .showBadgePoint()
            .addTapAction { view in
                view?.sf.hiddenBadgePoint()
            }
            .addSubview(alphaLabel)
            .addSubview(broveLabel)
            .addSubview(btn)
        return view
    }()
    
    lazy var alphaLabel: UILabel = {
        let label = UILabel.init(frame: CGRect(x: 150, y: 50, width: self.view.bounds.width - 300, height: 40),
                                 bgColor: .white,
                                 text: "Magpie Bridge 2",
                                 textColor: .red,
                                 aligment: .center,
                                 radius: 5)
        label.sf.addTapAction { [weak self] view in
            guard let self = self else { return }
            UIAlertController().sf.message("click alphaLabel").show(self).hidden(2)
        }
        return label
    }()
    
    lazy var broveLabel: UILabel = {
        let value = "After its launch on March 20th, the Magpie Bridge 2 relay satellite underwent intermediate corrections, near moon braking, and lunar orbit maneuvers, and entered a planned 24-hour elliptical mission orbit around the moon on April 2nd. On April 6th, the Magpie Bridge 2 relay satellite successfully completed communication testing with Chang'e-4, which is conducting exploration missions on the far side of the moon. From April 8th to 9th, communication tests were conducted between the Queqiao 2 relay satellite and the Chang'e-6 probe (in ground condition)."
        
        let label = UILabel()
        label.sf
            .frame(CGRect(x: 50, y: 100, width: self.view.bounds.width - 100, height: 60))
            .bgColor(UIColor.hex_PT_FFBE98)
            .text(value)
            .textColor(.white)
            .font(UIFont.systemFont(ofSize: 15, weight: .semibold))
            .alignment(.center)
            .lines(2)
            .makeCornerRadius(corners: [.topLeft, .bottomRight], radius: 20.0)
            .addTapAction { [weak self] view in
                guard let self = self else { return }
                UIAlertController.alertStyle(.alert).message("click broveLabel\n\(value)").show(self).hidden(2)
            }
        return label
    }()
    
    lazy var btn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.sf.frame(CGRect(x: 50, y: 180, width: self.view.bounds.width - 100, height: 60))
            .imagePosition(title: "click me click me click me click me click me", image: UIImage(named: "img_block"), state: .normal, space: 15.0, position: .bottom)
            .backgroundColor(.hex_0c8918)
            .makeRadius(10.0)
            .addTapAction { [weak self] view in
            guard let self = self else { return }
            UIAlertController.alertStyle(.actionSheet).message("the btn has been clicked").show(self).hidden(2)
        }
        
        return btn
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
```
### Customized
You can also create your own methods.

Like this:
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

CLLocation
- CLLocationCoordinate2D
- CLPlacemark

Foundation
- Array
- Bundle
- CGFloat
- Date
- Dictionary
- Double
- Float
- Int
- String

QuartzCore
- CALayer

UIKit
- UIAlertController
- UIApplication
- UIButton
- UICollectionView
- UICollectionViewFlowLayout
- UIColor
- UIControl
- UIDevice
- UIImage
- UIImageView
- UILabel
- UINavigationController
- UIScrollView
- UISlider
- UIStackView
- UISwitch
- UITableView
- UITextField
- UITextView
- UIView
- UIViewController

## Warning
If the system native method has a return value or a property that is read-only, this extension is not suitable for use.
 
## Contributing
Please make an issue or pull request if you have any request.

Bug reports, Documentation, or tests, are always welcome as well.

## Author

Sfh03031, sfh894645252@163.com

## License

SFStyleKit is available under the MIT license. See the LICENSE file for more info.
