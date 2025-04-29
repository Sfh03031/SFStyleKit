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
    
    let SCREENW: CGFloat = UIScreen.main.bounds.width
    let SCREENH: CGFloat = UIScreen.main.bounds.height

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.sf.backgroundColor(.white).addSubview(backView)
        
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
        
        print("13000000000".maskedPhoneNumber())

        let temp = "130123456789abcdefghijklmnopqrstuvwxyz"
        print(temp.subString(start: 6, length: 3) ?? "-1")
        print(temp.subString(at: 15) ?? "-1")
    }
    
    lazy var backView: UIView = {
        let view = UIView()
        view.sf.frame(CGRect(x: 10, y: 100, width: SCREENW - 20, height: SCREENH - 200))
            .backgroundColor(.random)
            .addSubview(alphaLabel)
            .addSubview(broveLabel)
            .addSubview(btn)
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
    
    lazy var alphaLabel: UILabel = {
        let label = UILabel.init(frame: CGRect(x: 15, y: 50, width: SCREENW - 20 - 30, height: 40),
                                 bgColor: .white,
                                 text: "鹊桥二号",
                                 textColor: .red,
                                 aligment: .center)
        label.makeRadius(5.0)
        label.addTapAction { [weak self] view in
            guard let self = self else { return }
            UIAlertController().sf.message("点击了 alphaLabel").show(self).hidden(2)
        }
        return label
    }()
    
    lazy var broveLabel: UILabel = {
        let value = "鹊桥二号中继星自3月20日发射升空后，经过中途修正、近月制动、环月轨道机动，于4月2日按计划进入24小时周期的环月大椭圆使命轨道。4月6日，鹊桥二号中继星成功与正在月球背面开展探测任务的嫦娥四号完成对通测试。4月8日-9日，鹊桥二号中继星与嫦娥六号探测器（地面状态）开展对通测试。"
        
        let label = UILabel()
        label.sf
            .frame(CGRect(x: 50, y: 100, width: SCREENW - 20 - 100, height: 60))
            .backgroundColor(.hex_0C8918)
            .text(value)
            .textColor(.white)
            .font(UIFont.systemFont(ofSize: 15, weight: .semibold))
            .textAlignment(.center)
            .numberOfLines(2)
        label.makeCornerRadius(corners: [.topRight, .bottomLeft], radius: 20.0)
        label.makeRectSide(lineColor: .red, lineWidth: 2, rectSide: [.left, .top, .bottom], topRight: 20, bottomLeft: 20, isSuperClip: true, isDash: false)
        label.addTapAction { [weak self] view in
            guard let self = self else { return }
            UIAlertController.sf.alertStyle(.alert).message("点击了 broveLabel\n\(value)").show(self).hidden(2)
        }
        return label
    }()
    
    lazy var btn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.sf.frame(CGRect(x: 50, y: 180, width: SCREENW - 20 - 100, height: 60))
            .backgroundColor(.hex_0C8918)
        btn.makeRadius(10.0)
        btn.addTapAction { [weak self] view in
            guard let self = self else { return }
            UIAlertController.sf.alertStyle(.actionSheet).message("按钮被点击了").show(self).hidden(2)
        }
        btn.makePosition(title: "click me click me click me click me click me", image: UIImage(named: "img_block"), state: .normal, space: 15.0, position: .right)
        return btn
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



