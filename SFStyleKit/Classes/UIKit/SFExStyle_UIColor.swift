//
//  SFExStyle_UIColor.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 扩展

public extension SFExStyle where Base: UIColor {
    /// 十六进制颜色
    ///
    /// - Parameter 
    ///   - hex: 16进制字符串，带不带“#”都可以
    ///   - alpha: [0, 1]
    ///
    /// - Returns: UIColor
    static func hexColor(hex: String, alpha: Float = 1) -> UIColor {
        // 去除空格等
        var cString: String = hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
        // 去除#
        if cString.hasPrefix("#") {
            cString = (cString as NSString).substring(from: 1)
        }
        // 必须为6位
        if cString.count != 6 {
            return UIColor.clear
        }
        // 红色的色值
        let rString = (cString as NSString).substring(to: 2)
        let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
        // 字符串转换
        var r: UInt64 = 0, g: UInt64 = 0, b: UInt64 = 0
        Scanner(string: rString).scanHexInt64(&r)
        Scanner(string: gString).scanHexInt64(&g)
        Scanner(string: bString).scanHexInt64(&b)
        
        return RGB(R: Float(r), G: Float(g), B: Float(b), alpha: alpha)
    }
    
    /// 十六进制颜色
    ///
    /// - Parameter hex: 16进制数字 类似 0xFF0000
    /// - Returns: UIColor
    static func hex(hex: uint) -> UIColor {
        let r = (hex & 0xFF0000) >> 16
        let g = (hex & 0x00FF00) >> 8
        let b = hex & 0x0000FF
        return RGB(R: Float(r), G: Float(g), B: Float(b))
    }
    
    /// 随机颜色
    ///
    /// - Returns: UIColor
    static var random: UIColor {
        return RGB(R: Float(arc4random_uniform(256)),
                   G: Float(arc4random_uniform(256)),
                   B: Float(arc4random_uniform(256)))
    }
    
    /// RGB颜色
    ///
    /// - Parameters:
    ///   - R: red
    ///   - G: green
    ///   - B: blue
    ///   - alpha: 透明度
    /// - Returns: UIColor
    static func RGB(R: Float, G: Float, B: Float, alpha: Float = 1) -> UIColor {
        return Base(red: CGFloat(R/255.0), green: CGFloat(G/255.0), blue: CGFloat(B/255.0), alpha: 1)
    }
    
    /// 颜色生成纯色图片
    var image: UIImage? {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.setFillColor(base.cgColor)
        context.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    /// 颜色的hex值
    var hex: String {
        let rgba = self.rgba
        let rs = String(Int(rgba.0*255), radix: 16)
        let gs = String(Int(rgba.1*255), radix: 16)
        let bs = String(Int(rgba.2*255), radix: 16)
        return "#" + rs + gs + bs
    }
    
    /// 颜色的rgba值
    var rgba: (CGFloat, CGFloat, CGFloat, CGFloat) {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 1
        base.getRed(&r, green: &g, blue: &b, alpha: &a)
        return (r, g, b, a)
    }
}

//MARK: 常用色
public extension UIColor {
    class var random: UIColor { sf.random }
    
    class var hex_222222: UIColor { sf.hexColor(hex: "#222222") }
    class var hex_AFB3BF: UIColor { sf.hexColor(hex: "#AFB3BF") }
    class var hex_C4CBDE: UIColor { sf.hexColor(hex: "#C4CBDE") }
    class var hex_FFC800: UIColor { sf.hexColor(hex: "#FFC800") }
    
    class var hex_F5F6F9: UIColor { sf.hexColor(hex: "#F5F6F9") }
    class var hex_F9FAFC: UIColor { sf.hexColor(hex: "#F9FAFC") }
    class var hex_F5F5F9: UIColor { sf.hexColor(hex: "#F5F5F9") }
    class var hex_FFEA00: UIColor { sf.hexColor(hex: "#FFEA00") }
    
    class var hex_FFF2EB: UIColor { sf.hexColor(hex: "#FFF2EB") }
    class var hex_008AFF: UIColor { sf.hexColor(hex: "#008AFF") }
    class var hex_E7F4FF: UIColor { sf.hexColor(hex: "#E7F4FF") }
    class var hex_32D2FF: UIColor { sf.hexColor(hex: "#32D2FF") }
    
    class var hex_62CA00: UIColor { sf.hexColor(hex: "#62CA00") }
    class var hex_DFFADC: UIColor { sf.hexColor(hex: "#DFFADC") }
    class var hex_FF2E00: UIColor { sf.hexColor(hex: "#FF2E00") }
    class var hex_FFE6E0: UIColor { sf.hexColor(hex: "#FFE6E0") }
    
    class var hex_FF3B00: UIColor { sf.hexColor(hex: "#FF3B00") }
    class var hex_FF5200: UIColor { sf.hexColor(hex: "#FF5200") }
    class var hex_FFAF00: UIColor { sf.hexColor(hex: "#FFAF00") }
    class var hex_FFFAC8: UIColor { sf.hexColor(hex: "#FFFAC8") }
    
    class var hex_FF7800: UIColor { sf.hexColor(hex: "#FF7800") }
    class var hex_FFF6E3: UIColor { sf.hexColor(hex: "#FFF6E3") }
    class var hex_15D25F: UIColor { sf.hexColor(hex: "#15D25F") }
    class var hex_E6FFF0: UIColor { sf.hexColor(hex: "#E6FFF0") }
}

//MARK: 中国色彩
public extension UIColor {
    /// 丁香色
    class var hex_cca4e3: UIColor { sf.hexColor(hex: "#cca4e3") }
    /// 雪青
    class var hex_b0a4e3: UIColor { sf.hexColor(hex: "#b0a4e3") }
    /// 群青
    class var hex_4c8dae: UIColor { sf.hexColor(hex: "#4c8dae") }
    /// 紫棠
    class var hex_56004f: UIColor { sf.hexColor(hex: "#56004f") }
    
    /// 绀青
    class var hex_003371: UIColor { sf.hexColor(hex: "#003371") }
    /// 紫檀
    class var hex_4c221b: UIColor { sf.hexColor(hex: "#4c221b") }
    /// 酱紫
    class var hex_815476: UIColor { sf.hexColor(hex: "#815476") }
    /// 紫酱
    class var hex_815463: UIColor { sf.hexColor(hex: "#815463") }
    
    /// 紫色
    class var hex_8d4bbb: UIColor { sf.hexColor(hex: "#8d4bbb") }
    /// 黛紫
    class var hex_574266: UIColor { sf.hexColor(hex: "#574266") }
    /// 黛蓝
    class var hex_425066: UIColor { sf.hexColor(hex: "#425066") }
    /// 黛绿
    class var hex_426666: UIColor { sf.hexColor(hex: "#426666") }
    
    /// 黛
    class var hex_4a4266: UIColor { sf.hexColor(hex: "#4a4266") }
    /// 藏蓝
    class var hex_3b2e7e: UIColor { sf.hexColor(hex: "#3b2e7e") }
    /// 藏青
    class var hex_2e4e7e: UIColor { sf.hexColor(hex: "#2e4e7e") }
    /// 蓝灰
    class var hex_a1afc9: UIColor { sf.hexColor(hex: "#a1afc9") }
    
    /// 宝蓝
    class var hex_4b5cc4: UIColor { sf.hexColor(hex: "#4b5cc4") }
    /// 花青
    class var hex_003472: UIColor { sf.hexColor(hex: "#003472") }
    /// 靛蓝
    class var hex_065279: UIColor { sf.hexColor(hex: "#065279") }
    /// 靛青
    class var hex_177cb0: UIColor { sf.hexColor(hex: "#177cb0") }
    
    /// 石青
    class var hex_1685a9: UIColor { sf.hexColor(hex: "#1685a9") }
    /// 碧蓝
    class var hex_3eede7: UIColor { sf.hexColor(hex: "#3eede7") }
    /// 蓝
    class var hex_44cef6: UIColor { sf.hexColor(hex: "#44cef6") }
    /// 蔚蓝
    class var hex_70f3ff: UIColor { sf.hexColor(hex: "#70f3ff") }
    
    /// 玄色
    class var hex_622a1d: UIColor { sf.hexColor(hex: "#622a1d") }
    /// 栗色
    class var hex_60281e: UIColor { sf.hexColor(hex: "#60281e") }
    /// 胭脂
    class var hex_9d2933: UIColor { sf.hexColor(hex: "#9d2933") }
    /// 赤
    class var hex_c3272b: UIColor { sf.hexColor(hex: "#c3272b") }
    
    /// 银朱
    class var hex_bf242a: UIColor { sf.hexColor(hex: "#bf242a") }
    /// 赫赤
    class var hex_c91f37: UIColor { sf.hexColor(hex: "#c91f37") }
    /// 殷红
    class var hex_be002f: UIColor { sf.hexColor(hex: "#be002f") }
    /// 枣红
    class var hex_c32136: UIColor { sf.hexColor(hex: "#c32136") }
    
    /// 洋红
    class var hex_ff0097: UIColor { sf.hexColor(hex: "#ff0097") }
    /// 嫣红
    class var hex_ef7a82: UIColor { sf.hexColor(hex: "#ef7a82") }
    /// 檀
    class var hex_b36d61: UIColor { sf.hexColor(hex: "#b36d61") }
    /// 绾
    class var hex_a98175: UIColor { sf.hexColor(hex: "#a98175") }
    
    /// 茜色
    class var hex_cb3a56: UIColor { sf.hexColor(hex: "#cb3a56") }
    /// 炎
    class var hex_ff3300: UIColor { sf.hexColor(hex: "#ff3300") }
    /// 酡红
    class var hex_dc3023: UIColor { sf.hexColor(hex: "#dc3023") }
    /// 彤
    class var hex_f35336: UIColor { sf.hexColor(hex: "#f35336") }
    
    /// 丹
    class var hex_ff4e20: UIColor { sf.hexColor(hex: "#ff4e20") }
    /// 朱红
    class var hex_ff4c00: UIColor { sf.hexColor(hex: "#ff4c00") }
    /// 绯红
    class var hex_c83c23: UIColor { sf.hexColor(hex: "#c83c23") }
    
    /// 绛紫
    class var hex_8c4356: UIColor { sf.hexColor(hex: "#8c4356") }
    /// 石榴红
    class var hex_f20c00: UIColor { sf.hexColor(hex: "#f20c00") }
    /// 大红
    class var hex_ff2121: UIColor { sf.hexColor(hex: "#ff2121") }
    /// 银红
    class var hex_f05654: UIColor { sf.hexColor(hex: "#f05654") }
    
    /// 酡颜
    class var hex_f9906f: UIColor { sf.hexColor(hex: "#f9906f") }
    /// 樱桃色
    class var hex_c93756: UIColor { sf.hexColor(hex: "#c93756") }
    /// 海棠红
    class var hex_db5a6b: UIColor { sf.hexColor(hex: "#db5a6b") }
    /// 桃红
    class var hex_f47983: UIColor { sf.hexColor(hex: "#f47983") }
    
    /// 粉红
    class var hex_ffb3a7: UIColor { sf.hexColor(hex: "#ffb3a7") }
    /// 品红
    class var hex_f00056: UIColor { sf.hexColor(hex: "#f00056") }
    /// 洋红
    class var hex_ff4777: UIColor { sf.hexColor(hex: "#ff4777") }
    /// 妃色
    class var hex_ed5736: UIColor { sf.hexColor(hex: "#ed5736") }
    
    /// 朱膘
    class var hex_f36838: UIColor { sf.hexColor(hex: "#f36838") }
    /// 火红
    class var hex_ff2d51: UIColor { sf.hexColor(hex: "#ff2d51") }
    /// 朱砂
    class var hex_ff461f: UIColor { sf.hexColor(hex: "#ff461f") }
    /// 酒红
    class var hex_f04155: UIColor { sf.hexColor(hex: "#f04155") }
    
    /// 黯
    class var hex_41555d: UIColor { sf.hexColor(hex: "#41555d") }
    /// 鸦青
    class var hex_424c50: UIColor { sf.hexColor(hex: "#424c50") }
    /// 墨色
    class var hex_50616d: UIColor { sf.hexColor(hex: "#50616d") }
    /// 墨灰
    class var hex_758a99: UIColor { sf.hexColor(hex: "#758a99") }
    
    /// 竹青
    class var hex_789262: UIColor { sf.hexColor(hex: "#789262") }
    /// 铜绿
    class var hex_549688: UIColor { sf.hexColor(hex: "#549688") }
    /// 青碧
    class var hex_48c0a3: UIColor { sf.hexColor(hex: "#48c0a3") }
    /// 碧色
    class var hex_1bd1a5: UIColor { sf.hexColor(hex: "#1bd1a5") }
    
    /// 石青
    class var hex_7bcfa6: UIColor { sf.hexColor(hex: "#7bcfa6") }
    /// 艾绿
    class var hex_a4e2c6: UIColor { sf.hexColor(hex: "#a4e2c6") }
    /// 缥
    class var hex_7fecad: UIColor { sf.hexColor(hex: "#7fecad") }
    /// 玉色
    class var hex_2edfa3: UIColor { sf.hexColor(hex: "#2edfa3") }
    
    /// 碧绿
    class var hex_2add9c: UIColor { sf.hexColor(hex: "#2add9c") }
    /// 翡翠色
    class var hex_3de1ad: UIColor { sf.hexColor(hex: "#3de1ad") }
    /// 青色
    class var hex_00e09e: UIColor { sf.hexColor(hex: "#00e09e") }
    /// 青翠
    class var hex_00e079: UIColor { sf.hexColor(hex: "#00e079") }
    
    /// 草绿
    class var hex_40de5a: UIColor { sf.hexColor(hex: "#40de5a") }
    /// 绿色
    class var hex_00e500: UIColor { sf.hexColor(hex: "#00e500") }
    /// 绿沈
    class var hex_0c8918: UIColor { sf.hexColor(hex: "#0c8918") }
    /// 松花绿
    class var hex_057748: UIColor { sf.hexColor(hex: "#057748") }
    
    /// 松柏绿
    class var hex_21a675: UIColor { sf.hexColor(hex: "#21a675") }
    /// 石绿
    class var hex_16a951: UIColor { sf.hexColor(hex: "#16a951") }
    /// 青葱
    class var hex_0aa344: UIColor { sf.hexColor(hex: "#0aa344") }
    /// 葱青
    class var hex_0eb83a: UIColor { sf.hexColor(hex: "#0eb83a") }
    
    /// 葱绿
    class var hex_9ed900: UIColor { sf.hexColor(hex: "#9ed900") }
    /// 油绿
    class var hex_00bc12: UIColor { sf.hexColor(hex: "#00bc12") }
    /// 豆青
    class var hex_96ce54: UIColor { sf.hexColor(hex: "#96ce54") }
    /// 豆绿
    class var hex_9ed048: UIColor { sf.hexColor(hex: "#9ed048") }
    
    /// 葱黄
    class var hex_a3d900: UIColor { sf.hexColor(hex: "#a3d900") }
    /// 柳绿
    class var hex_afdd22: UIColor { sf.hexColor(hex: "#afdd22") }
    /// 嫩绿
    class var hex_bddd22: UIColor { sf.hexColor(hex: "#bddd22") }
    
    /// 嫩黄
    class var hex_c9dd22: UIColor { sf.hexColor(hex: "#c9dd22") }
    /// 松花色
    class var hex_bce672: UIColor { sf.hexColor(hex: "#bce672") }
    /// 赭石
    class var hex_845a33: UIColor { sf.hexColor(hex: "#845a33") }
    /// 赭色
    class var hex_955539: UIColor { sf.hexColor(hex: "#955539") }
    
    /// 棕黑
    class var hex_7c4b00: UIColor { sf.hexColor(hex: "#7c4b00") }
    /// 褐色
    class var hex_6e511e: UIColor { sf.hexColor(hex: "#6e511e") }
    /// 棕绿
    class var hex_827100: UIColor { sf.hexColor(hex: "#827100") }
    /// 秋色
    class var hex_896c39: UIColor { sf.hexColor(hex: "#896c39") }
    
    /// 驼色
    class var hex_a88462: UIColor { sf.hexColor(hex: "#a88462") }
    /// 赭
    class var hex_9c5333: UIColor { sf.hexColor(hex: "#9c5333") }
    /// 棕红
    class var hex_9b4400: UIColor { sf.hexColor(hex: "#9b4400") }
    /// 茶色
    class var hex_b35c44: UIColor { sf.hexColor(hex: "#b35c44") }
    
    /// 棕色
    class var hex_b25d25: UIColor { sf.hexColor(hex: "#b25d25") }
    /// 琥珀
    class var hex_ca6924: UIColor { sf.hexColor(hex: "#ca6924") }
    /// 棕黄
    class var hex_ae7000: UIColor { sf.hexColor(hex: "#ae7000") }
    /// 昏黄
    class var hex_c89b40: UIColor { sf.hexColor(hex: "#c89b40") }
    
    /// 乌金
    class var hex_a78e44: UIColor { sf.hexColor(hex: "#a78e44") }
    /// 黄栌
    class var hex_e29c45: UIColor { sf.hexColor(hex: "#e29c45") }
    /// 枯黄
    class var hex_d3b17d: UIColor { sf.hexColor(hex: "#d3b17d") }
    /// 牙色
    class var hex_eedeb0: UIColor { sf.hexColor(hex: "#eedeb0") }
    
    /// 金色
    class var hex_eacd76: UIColor { sf.hexColor(hex: "#eacd76") }
    /// 秋香色
    class var hex_d9b611: UIColor { sf.hexColor(hex: "#d9b611") }
    /// 雄黄
    class var hex_e9bb1d: UIColor { sf.hexColor(hex: "#e9bb1d") }
    /// 缃色
    class var hex_f0c239: UIColor { sf.hexColor(hex: "#f0c239") }
    
    /// 赤金
    class var hex_f2be45: UIColor { sf.hexColor(hex: "#f2be45") }
    /// 雌黄
    class var hex_ffc64b: UIColor { sf.hexColor(hex: "#ffc64b") }
    /// 姜黄
    class var hex_ffc773: UIColor { sf.hexColor(hex: "#ffc773") }
    /// 藤黄
    class var hex_ffb61e: UIColor { sf.hexColor(hex: "#ffb61e") }
    
    /// 橘红
    class var hex_ff7500: UIColor { sf.hexColor(hex: "#ff7500") }
    /// 橘黄
    class var hex_ff8936: UIColor { sf.hexColor(hex: "#ff8936") }
    /// 杏红
    class var hex_ff8c31: UIColor { sf.hexColor(hex: "#ff8c31") }
    /// 橙色
    class var hex_fa8c35: UIColor { sf.hexColor(hex: "#fa8c35") }
    
    /// 橙黄
    class var hex_ffa400: UIColor { sf.hexColor(hex: "#ffa400") }
    /// 杏黄
    class var hex_ffa631: UIColor { sf.hexColor(hex: "#ffa631") }
    /// 鸭黄
    class var hex_faff72: UIColor { sf.hexColor(hex: "#faff72") }
    /// 鹅黄
    class var hex_fff143: UIColor { sf.hexColor(hex: "#fff143") }
    
    /// 樱草色
    class var hex_eaff56: UIColor { sf.hexColor(hex: "#eaff56") }
    /// 黑色
    class var hex_000000: UIColor { sf.hexColor(hex: "#000000") }
    /// 漆黑
    class var hex_161823: UIColor { sf.hexColor(hex: "#161823") }
    /// 煤黑
    class var hex_312520: UIColor { sf.hexColor(hex: "#312520") }
    
    /// 缁色
    class var hex_493131: UIColor { sf.hexColor(hex: "#493131") }
    /// 黝黑
    class var hex_665757: UIColor { sf.hexColor(hex: "#665757") }
    /// 黧
    class var hex_5d513c: UIColor { sf.hexColor(hex: "#5d513c") }
    /// 黎
    class var hex_75664d: UIColor { sf.hexColor(hex: "#75664d") }
    
    /// 乌黑
    class var hex_392f41: UIColor { sf.hexColor(hex: "#392f41") }
    /// 玄青
    class var hex_3d3b4f: UIColor { sf.hexColor(hex: "#3d3b4f") }
    /// 乌色
    class var hex_725e82: UIColor { sf.hexColor(hex: "#725e82") }
    /// 黝
    class var hex_6b6882: UIColor { sf.hexColor(hex: "#6b6882") }
    
    /// 水色
    class var hex_88ada6: UIColor { sf.hexColor(hex: "#88ada6") }
    /// 苍色
    class var hex_75878a: UIColor { sf.hexColor(hex: "#75878a") }
    /// 灰色
    class var hex_808080: UIColor { sf.hexColor(hex: "#808080") }
    /// 老银
    class var hex_bacac6: UIColor { sf.hexColor(hex: "#bacac6") }
    
    /// 花白
    class var hex_c2ccd0: UIColor { sf.hexColor(hex: "#c2ccd0") }
    /// 蟹壳青
    class var hex_bbcdc5: UIColor { sf.hexColor(hex: "#bbcdc5") }
    /// 青白
    class var hex_c0ebd7: UIColor { sf.hexColor(hex: "#c0ebd7") }
    /// 素
    class var hex_e0f0e9: UIColor { sf.hexColor(hex: "#e0f0e9") }
    
    /// 鸭卵青
    class var hex_e0eee8: UIColor { sf.hexColor(hex: "#e0eee8") }
    /// 茶白
    class var hex_f3f9f1: UIColor { sf.hexColor(hex: "#f3f9f1") }
    /// 藕荷色
    class var hex_e4c6d0: UIColor { sf.hexColor(hex: "#e4c6d0") }
    /// 藕色
    class var hex_edd1d8: UIColor { sf.hexColor(hex: "#edd1d8") }
    
    /// 白粉
    class var hex_fff2df: UIColor { sf.hexColor(hex: "#fff2df") }
    /// 鱼肚白
    class var hex_fcefe8: UIColor { sf.hexColor(hex: "#fcefe8") }
    /// 缟
    class var hex_f2ecde: UIColor { sf.hexColor(hex: "#f2ecde") }
    /// 象牙白
    class var hex_fffbf0: UIColor { sf.hexColor(hex: "#fffbf0") }
    
    /// 月白
    class var hex_d6ecf0: UIColor { sf.hexColor(hex: "#d6ecf0") }
    /// 莹白
    class var hex_e3f9fd: UIColor { sf.hexColor(hex: "#e3f9fd") }
    /// 雪白
    class var hex_f0fcff: UIColor { sf.hexColor(hex: "#f0fcff") }
    /// 霜色
    class var hex_e9f1f6: UIColor { sf.hexColor(hex: "#e9f1f6") }
    
    /// 铅白
    class var hex_f0f0f4: UIColor { sf.hexColor(hex: "#f0f0f4") }
    /// 银白
    class var hex_e9e7ef: UIColor { sf.hexColor(hex: "#e9e7ef") }
    /// 精白
    class var hex_ffffff: UIColor { sf.hexColor(hex: "#ffffff") }
    
}

//MARK: 潘通年度色
public extension UIColor {
    /// 2024 - 柔和桃
    class var hex_PT_FFBE98: UIColor { sf.hexColor(hex: "#FFBE98") }
    /// 2023 - 非凡洋红
    class var hex_PT_BE3455: UIColor { sf.hexColor(hex: "#BE3455") }
    /// 2022 - 长春花蓝
    class var hex_PT_6667AB: UIColor { sf.hexColor(hex: "#6667AB") }
    /// 2021 - 明亮黄
    class var hex_PT_F5DF4D: UIColor { sf.hexColor(hex: "#F5DF4D") }
    
    /// 2021 - 极致灰
    class var hex_PT_939597: UIColor { sf.hexColor(hex: "#939597") }
    /// 2020 - 经典蓝
    class var hex_PT_0F4C81: UIColor { sf.hexColor(hex: "#0F4C81") }
    /// 2019 - 珊瑚橙
    class var hex_PT_FF6F61: UIColor { sf.hexColor(hex: "#FF6F61") }
    /// 2018 - 紫外光
    class var hex_PT_5F4B8B: UIColor { sf.hexColor(hex: "#5F4B8B") }
    
    /// 2017 - 草木绿
    class var hex_PT_88B04B: UIColor { sf.hexColor(hex: "#88B04B") }
    /// 2016 - 水晶粉
    class var hex_PT_F7CAC9: UIColor { sf.hexColor(hex: "#F7CAC9") }
    /// 2016 - 宁静蓝
    class var hex_PT_92A8D1: UIColor { sf.hexColor(hex: "#92A8D1") }
    /// 2015 - 玛萨拉酒红
    class var hex_PT_955251: UIColor { sf.hexColor(hex: "#955251") }
    
    /// 2014 - 璀璨紫兰花
    class var hex_PT_B565A7: UIColor { sf.hexColor(hex: "#B565A7") }
    /// 2013 - 翡翠绿
    class var hex_PT_009B77: UIColor { sf.hexColor(hex: "#009B77") }
    /// 2012 - 探戈橘
    class var hex_PT_E2492F: UIColor { sf.hexColor(hex: "#E2492F") }
    /// 2011 - 忍冬红
    class var hex_PT_CB6586: UIColor { sf.hexColor(hex: "#CB6586") }
    
    /// 2010 - 松石绿
    class var hex_PT_45B5AA: UIColor { sf.hexColor(hex: "#45B5AA") }
    /// 2009 - 含羞草黄
    class var hex_PT_F0C05A: UIColor { sf.hexColor(hex: "#F0C05A") }
    /// 2008 - 鸢尾蓝
    class var hex_PT_5A5B9F: UIColor { sf.hexColor(hex: "#5A5B9F") }
    /// 2007 - 辣椒红
    class var hex_PT_9B1B30: UIColor { sf.hexColor(hex: "#9B1B30") }
    
    /// 2006 - 沙色金
    class var hex_PT_DECDBE: UIColor { sf.hexColor(hex: "#DECDBE") }
    /// 2005 - 虎皮百合
    class var hex_PT_53B0AE: UIColor { sf.hexColor(hex: "#53B0AE") }
    /// 2004 - 蓝色绿松石
    class var hex_PT_E2583E: UIColor { sf.hexColor(hex: "#E2583E") }
    /// 2003 - 水色天空
    class var hex_PT_7BC4C4: UIColor { sf.hexColor(hex: "#7BC4C4") }
    
    /// 2002 - 真实红
    class var hex_PT_BF1932: UIColor { sf.hexColor(hex: "#BF1932") }
    /// 2001 - 桃色玫瑰色
    class var hex_PT_C74375: UIColor { sf.hexColor(hex: "#C74375") }
    /// 2000 - 蔚蓝
    class var hex_PT_98B2D1: UIColor { sf.hexColor(hex: "#98B2D1") }
}
