//
//  ViewController.swift
//  SFStyleKit
//
//  Created by Sfh03031 on 04/01/2024.
//  Copyright (c) 2024 Sfh03031. All rights reserved.
//

import UIKit
import SFStyleKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        let backView = UIView()
        backView.sf
        // 位置和尺寸
            .frame(CGRect(x: 10, y: 50, width: self.view.bounds.width - 20, height: self.view.bounds.height / 2 - 50))
        // 背景色
            .backgroundColor(.random)
        // 设置边框
            .makeBorder(color: .brown, with: 1.0)
        // 设置圆角
            .makeCornerRadius(corners: [.topLeft, .topRight], radius: 10.0)
        // 设置阴影
            .makeShadow(5, color: .hex_bbcdc5, offset: CGSize(width: 5, height: 10), opacity: 1)
        // 右上角显示小红点
            .showBadgePoint()
        // 点击事件回调
            .addTapAction { view in
                // 右上角不显示小红点
                view?.sf.hiddenBadgePoint()
            }
            .addTapsAction(tapsRequired: 2, handler: { view in
                print("点击了两下")
            })
        // 添加子视图
            .add(subview: alphaLabel)
            .add(subview: broveLabel)
            .add(subview: btn)
        self.view.sf.backgroundColor(.white).add(subview: backView)
    }
    
    lazy var alphaLabel: UILabel = {
        let label = UILabel.init(frame: CGRect(x: 150, y: 50, width: self.view.bounds.width - 300, height: 40),
                                 bgColor: .white,
                                 text: "鹊桥二号",
                                 textColor: .red,
                                 aligment: .center,
                                 radius: 5)
        label.sf.addTapAction { [weak self] view in
            guard let self = self else { return }
            UIAlertController().sf.message("点击了 alphaLabel").show(self).hidden(2)
        }
        return label
    }()
    
    lazy var broveLabel: UILabel = {
        let value = "鹊桥二号中继星自3月20日发射升空后，经过中途修正、近月制动、环月轨道机动，于4月2日按计划进入24小时周期的环月大椭圆使命轨道。4月6日，鹊桥二号中继星成功与正在月球背面开展探测任务的嫦娥四号完成对通测试。4月8日-9日，鹊桥二号中继星与嫦娥六号探测器（地面状态）开展对通测试。"
        
        let label = UILabel()
        label.sf
            .frame(CGRect(x: 50, y: 100, width: self.view.bounds.width - 100, height: 60))
            .bgColor(UIColor.hex_PT_FFBE98)
            .text(value)
            .textColor(.white)
            .font(UIFont.systemFont(ofSize: 15, weight: .semibold))
            .alignment(.center)
            .lines(2)
            .makeCornerRadius(corners: [.topRight, .bottomLeft], radius: 20.0)
            .makeCustomizeBorder(color: .red, with: 2, rectSide: [.left, .top, .bottom], topRight: 20, bottomLeft: 20, isSuperClip: true, isDash: false)
            .addTapAction { [weak self] view in
                guard let self = self else { return }
                UIAlertController.alertStyle(.alert).message("点击了 broveLabel\n\(value)").show(self).hidden(2)
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
            UIAlertController.alertStyle(.actionSheet).message("按钮被点击了").show(self).hidden(2)
        }
        
        return btn
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



