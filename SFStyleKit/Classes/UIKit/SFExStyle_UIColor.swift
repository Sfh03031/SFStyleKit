//
//  SFExStyle_UIColor.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: 扩展

public extension SFExStyle where Base: UIColor {
    /// 十六进制颜色
    /// - Parameter 
    ///   - hex: 16进制字符串，带不带“#”都可以
    ///   - alpha: [0, 1]
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
    /// - Parameter hex: 16进制数字 类似 0xFF0000
    /// - Returns: UIColor
    static func hex(hex: uint) -> UIColor {
        let r = (hex & 0xFF0000) >> 16
        let g = (hex & 0x00FF00) >> 8
        let b = hex & 0x0000FF
        return RGB(R: Float(r), G: Float(g), B: Float(b))
    }
    
    /// 随机颜色
    /// - Returns: UIColor
    static var random: UIColor {
        // [0, 256)，左开右闭
        return UIColor(red: CGFloat(arc4random_uniform(256)) / 255.0, green: CGFloat(arc4random_uniform(256)) / 255.0, blue: CGFloat(arc4random_uniform(256)) / 255.0, alpha: 1.0)
    }
    
    /// RGB颜色
    /// - Parameters:
    ///   - R: red
    ///   - G: green
    ///   - B: blue
    ///   - alpha: 透明度
    /// - Returns: UIColor
    static func RGB(R: Float, G: Float, B: Float, alpha: Float = 1) -> UIColor {
        return Base(red: CGFloat(R/255.0), green: CGFloat(G/255.0), blue: CGFloat(B/255.0), alpha: CGFloat(alpha))
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

// MARK: - 常用色
public extension UIColor {
    class var random: UIColor { sf.random }
    
    class var hex_222222: UIColor { #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1) }
    class var hex_AFB3BF: UIColor { #colorLiteral(red: 0.6862745098, green: 0.7019607843, blue: 0.7490196078, alpha: 1) }
    class var hex_C4CBDE: UIColor { #colorLiteral(red: 0.768627451, green: 0.7960784314, blue: 0.8705882353, alpha: 1) }
    class var hex_FFC800: UIColor { #colorLiteral(red: 1, green: 0.7843137255, blue: 0, alpha: 1) }
    
    class var hex_F5F6F9: UIColor { #colorLiteral(red: 0.9607843137, green: 0.9647058824, blue: 0.9764705882, alpha: 1) }
    class var hex_F9FAFC: UIColor { #colorLiteral(red: 0.9764705882, green: 0.9803921569, blue: 0.9882352941, alpha: 1) }
    class var hex_F5F5F9: UIColor { #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9764705882, alpha: 1) }
    class var hex_FFEA00: UIColor { #colorLiteral(red: 1, green: 0.9176470588, blue: 0, alpha: 1) }
    
    class var hex_FFF2EB: UIColor { #colorLiteral(red: 1, green: 0.9490196078, blue: 0.9215686275, alpha: 1) }
    class var hex_008AFF: UIColor { #colorLiteral(red: 0, green: 0.5411764706, blue: 1, alpha: 1) }
    class var hex_E7F4FF: UIColor { #colorLiteral(red: 0.9058823529, green: 0.9568627451, blue: 1, alpha: 1) }
    class var hex_32D2FF: UIColor { #colorLiteral(red: 0.1960784314, green: 0.8235294118, blue: 1, alpha: 1) }
    
    class var hex_62CA00: UIColor { #colorLiteral(red: 0.3843137255, green: 0.7921568627, blue: 0, alpha: 1) }
    class var hex_DFFADC: UIColor { #colorLiteral(red: 0.8745098039, green: 0.9803921569, blue: 0.862745098, alpha: 1) }
    class var hex_FF2E00: UIColor { #colorLiteral(red: 1, green: 0.1803921569, blue: 0, alpha: 1) }
    class var hex_FFE6E0: UIColor { #colorLiteral(red: 1, green: 0.9019607843, blue: 0.8784313725, alpha: 1) }
    
    class var hex_FF3B00: UIColor { #colorLiteral(red: 1, green: 0.231372549, blue: 0, alpha: 1) }
    class var hex_FF5200: UIColor { #colorLiteral(red: 1, green: 0.3215686275, blue: 0, alpha: 1) }
    class var hex_FFAF00: UIColor { #colorLiteral(red: 1, green: 0.6862745098, blue: 0, alpha: 1) }
    class var hex_FFFAC8: UIColor { #colorLiteral(red: 1, green: 0.9803921569, blue: 0.7843137255, alpha: 1) }
    
    class var hex_FF7800: UIColor { #colorLiteral(red: 1, green: 0.4705882353, blue: 0, alpha: 1) }
    class var hex_FFF6E3: UIColor { #colorLiteral(red: 1, green: 0.9647058824, blue: 0.8901960784, alpha: 1) }
    class var hex_15D25F: UIColor { #colorLiteral(red: 0.08235294118, green: 0.8235294118, blue: 0.3725490196, alpha: 1) }
    class var hex_E6FFF0: UIColor { #colorLiteral(red: 0.9019607843, green: 1, blue: 0.9411764706, alpha: 1) }
}

// MARK: - 中国色彩
public extension UIColor {
    /// 丁香色
    class var hex_CCA4E3: UIColor { #colorLiteral(red: 0.8, green: 0.6431372549, blue: 0.8901960784, alpha: 1) }
    /// 雪青
    class var hex_B0A4E3: UIColor { #colorLiteral(red: 0.6901960784, green: 0.6431372549, blue: 0.8901960784, alpha: 1) }
    /// 群青
    class var hex_4C8DAE: UIColor { #colorLiteral(red: 0.2980392157, green: 0.5529411765, blue: 0.6823529412, alpha: 1) }
    /// 紫棠
    class var hex_56004F: UIColor { #colorLiteral(red: 0.337254902, green: 0, blue: 0.3098039216, alpha: 1) }
    
    /// 绀青
    class var hex_003371: UIColor { #colorLiteral(red: 0, green: 0.2, blue: 0.4431372549, alpha: 1) }
    /// 紫檀
    class var hex_4C221B: UIColor { #colorLiteral(red: 0.2980392157, green: 0.1333333333, blue: 0.1058823529, alpha: 1) }
    /// 酱紫
    class var hex_815476: UIColor { #colorLiteral(red: 0.5058823529, green: 0.3294117647, blue: 0.462745098, alpha: 1) }
    /// 紫酱
    class var hex_815463: UIColor { #colorLiteral(red: 0.5058823529, green: 0.3294117647, blue: 0.3882352941, alpha: 1) }
    
    /// 紫色
    class var hex_8D4BBB: UIColor { #colorLiteral(red: 0.5529411765, green: 0.2941176471, blue: 0.7333333333, alpha: 1) }
    /// 黛紫
    class var hex_574266: UIColor { #colorLiteral(red: 0.3411764706, green: 0.2588235294, blue: 0.4, alpha: 1) }
    /// 黛蓝
    class var hex_425066: UIColor { #colorLiteral(red: 0.2588235294, green: 0.3137254902, blue: 0.4, alpha: 1) }
    /// 黛绿
    class var hex_426666: UIColor { #colorLiteral(red: 0.2588235294, green: 0.4, blue: 0.4, alpha: 1) }
    
    /// 黛
    class var hex_4A4266: UIColor { #colorLiteral(red: 0.2901960784, green: 0.2588235294, blue: 0.4, alpha: 1) }
    /// 藏蓝
    class var hex_3B2E7E: UIColor { #colorLiteral(red: 0.231372549, green: 0.1803921569, blue: 0.4941176471, alpha: 1) }
    /// 藏青
    class var hex_2E4E7E: UIColor { #colorLiteral(red: 0.1803921569, green: 0.3058823529, blue: 0.4941176471, alpha: 1) }
    /// 蓝灰
    class var hex_A1AFC9: UIColor { #colorLiteral(red: 0.631372549, green: 0.6862745098, blue: 0.7882352941, alpha: 1) }
    
    /// 宝蓝
    class var hex_4B5CC4: UIColor { #colorLiteral(red: 0.2941176471, green: 0.3607843137, blue: 0.768627451, alpha: 1) }
    /// 花青
    class var hex_003472: UIColor { #colorLiteral(red: 0, green: 0.2039215686, blue: 0.4470588235, alpha: 1) }
    /// 靛蓝
    class var hex_065279: UIColor { #colorLiteral(red: 0.02352941176, green: 0.3215686275, blue: 0.4745098039, alpha: 1) }
    /// 靛青
    class var hex_177CB0: UIColor { #colorLiteral(red: 0.09019607843, green: 0.4862745098, blue: 0.6901960784, alpha: 1) }
    
    /// 石青
    class var hex_1685A9: UIColor { #colorLiteral(red: 0.0862745098, green: 0.5215686275, blue: 0.662745098, alpha: 1) }
    /// 碧蓝
    class var hex_3EEDE7: UIColor { #colorLiteral(red: 0.2431372549, green: 0.9294117647, blue: 0.9058823529, alpha: 1) }
    /// 蓝
    class var hex_44CEF6: UIColor { #colorLiteral(red: 0.2666666667, green: 0.8078431373, blue: 0.9647058824, alpha: 1) }
    /// 蔚蓝
    class var hex_70F3FF: UIColor { #colorLiteral(red: 0.4392156863, green: 0.9529411765, blue: 1, alpha: 1) }
    
    /// 玄色
    class var hex_622A1D: UIColor { #colorLiteral(red: 0.3843137255, green: 0.1647058824, blue: 0.1137254902, alpha: 1) }
    /// 栗色
    class var hex_60281E: UIColor { #colorLiteral(red: 0.3764705882, green: 0.1568627451, blue: 0.1176470588, alpha: 1) }
    /// 胭脂
    class var hex_9D2933: UIColor { #colorLiteral(red: 0.6156862745, green: 0.1607843137, blue: 0.2, alpha: 1) }
    /// 赤
    class var hex_C3272B: UIColor { #colorLiteral(red: 0.7647058824, green: 0.1529411765, blue: 0.168627451, alpha: 1) }
    
    /// 银朱
    class var hex_BF242A: UIColor { #colorLiteral(red: 0.7490196078, green: 0.1411764706, blue: 0.1647058824, alpha: 1) }
    /// 赫赤
    class var hex_C91F37: UIColor { #colorLiteral(red: 0.7882352941, green: 0.1215686275, blue: 0.2156862745, alpha: 1) }
    /// 殷红
    class var hex_BE002F: UIColor { #colorLiteral(red: 0.7450980392, green: 0, blue: 0.1843137255, alpha: 1) }
    /// 枣红
    class var hex_C32136: UIColor { #colorLiteral(red: 0.7647058824, green: 0.1294117647, blue: 0.2117647059, alpha: 1) }
    
    /// 洋红
    class var hex_FF0097: UIColor { #colorLiteral(red: 1, green: 0, blue: 0.5921568627, alpha: 1) }
    /// 嫣红
    class var hex_EF7A82: UIColor { #colorLiteral(red: 0.937254902, green: 0.4784313725, blue: 0.5098039216, alpha: 1) }
    /// 檀
    class var hex_B36D61: UIColor { #colorLiteral(red: 0.7019607843, green: 0.4274509804, blue: 0.3803921569, alpha: 1) }
    /// 绾
    class var hex_A98175: UIColor { #colorLiteral(red: 0.662745098, green: 0.5058823529, blue: 0.4588235294, alpha: 1) }
    
    /// 茜色
    class var hex_CB3A56: UIColor { #colorLiteral(red: 0.7960784314, green: 0.2274509804, blue: 0.337254902, alpha: 1) }
    /// 炎
    class var hex_FF3300: UIColor { #colorLiteral(red: 1, green: 0.2, blue: 0, alpha: 1) }
    /// 酡红
    class var hex_DC3023: UIColor { #colorLiteral(red: 0.862745098, green: 0.1882352941, blue: 0.137254902, alpha: 1) }
    /// 彤
    class var hex_F35336: UIColor { #colorLiteral(red: 0.9529411765, green: 0.3254901961, blue: 0.2117647059, alpha: 1) }
    
    /// 丹
    class var hex_FF4E20: UIColor { #colorLiteral(red: 1, green: 0.3058823529, blue: 0.1254901961, alpha: 1) }
    /// 朱红
    class var hex_FF4C00: UIColor { #colorLiteral(red: 1, green: 0.2980392157, blue: 0, alpha: 1) }
    /// 绯红
    class var hex_C83C23: UIColor { #colorLiteral(red: 0.7843137255, green: 0.2352941176, blue: 0.137254902, alpha: 1) }
    
    /// 绛紫
    class var hex_8C4356: UIColor { #colorLiteral(red: 0.5490196078, green: 0.262745098, blue: 0.337254902, alpha: 1) }
    /// 石榴红
    class var hex_F20C00: UIColor { #colorLiteral(red: 0.9490196078, green: 0.04705882353, blue: 0, alpha: 1) }
    /// 大红
    class var hex_FF2121: UIColor { #colorLiteral(red: 1, green: 0.1294117647, blue: 0.1294117647, alpha: 1) }
    /// 银红
    class var hex_F05654: UIColor { #colorLiteral(red: 0.9411764706, green: 0.337254902, blue: 0.3294117647, alpha: 1) }
    
    /// 酡颜
    class var hex_F9906F: UIColor { #colorLiteral(red: 0.9764705882, green: 0.5647058824, blue: 0.4352941176, alpha: 1) }
    /// 樱桃色
    class var hex_C93756: UIColor { #colorLiteral(red: 0.7882352941, green: 0.2156862745, blue: 0.337254902, alpha: 1) }
    /// 海棠红
    class var hex_DB5A6B: UIColor { #colorLiteral(red: 0.8588235294, green: 0.3529411765, blue: 0.4196078431, alpha: 1) }
    /// 桃红
    class var hex_F47983: UIColor { #colorLiteral(red: 0.9568627451, green: 0.4745098039, blue: 0.5137254902, alpha: 1) }
    
    /// 粉红
    class var hex_FFB3A7: UIColor { #colorLiteral(red: 1, green: 0.7019607843, blue: 0.6549019608, alpha: 1) }
    /// 品红
    class var hex_F00056: UIColor { #colorLiteral(red: 0.9411764706, green: 0, blue: 0.337254902, alpha: 1) }
    /// 洋红
    class var hex_FF4777: UIColor { #colorLiteral(red: 1, green: 0.2784313725, blue: 0.4666666667, alpha: 1) }
    /// 妃色
    class var hex_ED5736: UIColor { #colorLiteral(red: 0.9294117647, green: 0.3411764706, blue: 0.2117647059, alpha: 1) }
    
    /// 朱膘
    class var hex_F36838: UIColor { #colorLiteral(red: 0.9529411765, green: 0.4078431373, blue: 0.2196078431, alpha: 1) }
    /// 火红
    class var hex_FF2D51: UIColor { #colorLiteral(red: 1, green: 0.1764705882, blue: 0.3176470588, alpha: 1) }
    /// 朱砂
    class var hex_FF461F: UIColor { #colorLiteral(red: 1, green: 0.2745098039, blue: 0.1215686275, alpha: 1) }
    /// 酒红
    class var hex_F04155: UIColor { #colorLiteral(red: 0.9411764706, green: 0.2549019608, blue: 0.3333333333, alpha: 1) }
    
    /// 黯
    class var hex_41555D: UIColor { #colorLiteral(red: 0.2549019608, green: 0.3333333333, blue: 0.3647058824, alpha: 1) }
    /// 鸦青
    class var hex_424C50: UIColor { #colorLiteral(red: 0.2588235294, green: 0.2980392157, blue: 0.3137254902, alpha: 1) }
    /// 墨色
    class var hex_50616D: UIColor { #colorLiteral(red: 0.3137254902, green: 0.3803921569, blue: 0.4274509804, alpha: 1) }
    /// 墨灰
    class var hex_758A99: UIColor { #colorLiteral(red: 0.4588235294, green: 0.5411764706, blue: 0.6, alpha: 1) }
    
    /// 竹青
    class var hex_789262: UIColor { #colorLiteral(red: 0.4705882353, green: 0.5725490196, blue: 0.3843137255, alpha: 1) }
    /// 铜绿
    class var hex_549688: UIColor { #colorLiteral(red: 0.3294117647, green: 0.5882352941, blue: 0.5333333333, alpha: 1) }
    /// 青碧
    class var hex_48C0A3: UIColor { #colorLiteral(red: 0.2823529412, green: 0.7529411765, blue: 0.6392156863, alpha: 1) }
    /// 碧色
    class var hex_1BD1A5: UIColor { #colorLiteral(red: 0.1058823529, green: 0.8196078431, blue: 0.6470588235, alpha: 1) }
    
    /// 石青
    class var hex_7BCFA6: UIColor { #colorLiteral(red: 0.4823529412, green: 0.8117647059, blue: 0.6509803922, alpha: 1) }
    /// 艾绿
    class var hex_A4E2C6: UIColor { #colorLiteral(red: 0.6431372549, green: 0.8862745098, blue: 0.7764705882, alpha: 1) }
    /// 缥
    class var hex_7FECAD: UIColor { #colorLiteral(red: 0.4980392157, green: 0.9254901961, blue: 0.6784313725, alpha: 1) }
    /// 玉色
    class var hex_2EDFA3: UIColor { #colorLiteral(red: 0.1803921569, green: 0.8745098039, blue: 0.6392156863, alpha: 1) }
    
    /// 碧绿
    class var hex_2ADD9C: UIColor { #colorLiteral(red: 0.1647058824, green: 0.8666666667, blue: 0.6117647059, alpha: 1) }
    /// 翡翠色
    class var hex_3DE1AD: UIColor { #colorLiteral(red: 0.2392156863, green: 0.8823529412, blue: 0.6784313725, alpha: 1) }
    /// 青色
    class var hex_00E09E: UIColor { #colorLiteral(red: 0, green: 0.8784313725, blue: 0.6196078431, alpha: 1) }
    /// 青翠
    class var hex_00E079: UIColor { #colorLiteral(red: 0, green: 0.8784313725, blue: 0.4745098039, alpha: 1) }
    
    /// 草绿
    class var hex_40DE5A: UIColor { #colorLiteral(red: 0.2509803922, green: 0.8705882353, blue: 0.3529411765, alpha: 1) }
    /// 绿色
    class var hex_00E500: UIColor { #colorLiteral(red: 0, green: 0.8980392157, blue: 0, alpha: 1) }
    /// 绿沈
    class var hex_0C8918: UIColor { #colorLiteral(red: 0.04705882353, green: 0.537254902, blue: 0.09411764706, alpha: 1) }
    /// 松花绿
    class var hex_057748: UIColor { #colorLiteral(red: 0.01960784314, green: 0.4666666667, blue: 0.2823529412, alpha: 1) }
    
    /// 松柏绿
    class var hex_21A675: UIColor { #colorLiteral(red: 0.1294117647, green: 0.6509803922, blue: 0.4588235294, alpha: 1) }
    /// 石绿
    class var hex_16A951: UIColor { #colorLiteral(red: 0.0862745098, green: 0.662745098, blue: 0.3176470588, alpha: 1) }
    /// 青葱
    class var hex_0AA344: UIColor { #colorLiteral(red: 0.03921568627, green: 0.6392156863, blue: 0.2666666667, alpha: 1) }
    /// 葱青
    class var hex_0EB83A: UIColor { #colorLiteral(red: 0.05490196078, green: 0.7215686275, blue: 0.2274509804, alpha: 1) }
    
    /// 葱绿
    class var hex_9ED900: UIColor { #colorLiteral(red: 0.6196078431, green: 0.8509803922, blue: 0, alpha: 1) }
    /// 油绿
    class var hex_00BC12: UIColor { #colorLiteral(red: 0, green: 0.737254902, blue: 0.07058823529, alpha: 1) }
    /// 豆青
    class var hex_96CE54: UIColor { #colorLiteral(red: 0.5882352941, green: 0.8078431373, blue: 0.3294117647, alpha: 1) }
    /// 豆绿
    class var hex_9ED048: UIColor { #colorLiteral(red: 0.6196078431, green: 0.8156862745, blue: 0.2823529412, alpha: 1) }
    
    /// 葱黄
    class var hex_A3D900: UIColor { #colorLiteral(red: 0.6392156863, green: 0.8509803922, blue: 0, alpha: 1) }
    /// 柳绿
    class var hex_AFDD22: UIColor { #colorLiteral(red: 0.6862745098, green: 0.8666666667, blue: 0.1333333333, alpha: 1) }
    /// 嫩绿
    class var hex_BDDD22: UIColor { #colorLiteral(red: 0.7411764706, green: 0.8666666667, blue: 0.1333333333, alpha: 1) }
    
    /// 嫩黄
    class var hex_C9DD22: UIColor { #colorLiteral(red: 0.7882352941, green: 0.8666666667, blue: 0.1333333333, alpha: 1) }
    /// 松花色
    class var hex_BCE672: UIColor { #colorLiteral(red: 0.737254902, green: 0.9019607843, blue: 0.4470588235, alpha: 1) }
    /// 赭石
    class var hex_845A33: UIColor { #colorLiteral(red: 0.5176470588, green: 0.3529411765, blue: 0.2, alpha: 1) }
    /// 赭色
    class var hex_955539: UIColor { #colorLiteral(red: 0.5843137255, green: 0.3333333333, blue: 0.2235294118, alpha: 1) }
    
    /// 棕黑
    class var hex_7C4B00: UIColor { #colorLiteral(red: 0.4862745098, green: 0.2941176471, blue: 0, alpha: 1) }
    /// 褐色
    class var hex_6E511E: UIColor { #colorLiteral(red: 0.431372549, green: 0.3176470588, blue: 0.1176470588, alpha: 1) }
    /// 棕绿
    class var hex_827100: UIColor { #colorLiteral(red: 0.5098039216, green: 0.4431372549, blue: 0, alpha: 1) }
    /// 秋色
    class var hex_896C39: UIColor { #colorLiteral(red: 0.537254902, green: 0.4235294118, blue: 0.2235294118, alpha: 1) }
    
    /// 驼色
    class var hex_A88462: UIColor { #colorLiteral(red: 0.6588235294, green: 0.5176470588, blue: 0.3843137255, alpha: 1) }
    /// 赭
    class var hex_9C5333: UIColor { #colorLiteral(red: 0.6117647059, green: 0.3254901961, blue: 0.2, alpha: 1) }
    /// 棕红
    class var hex_9B4400: UIColor { #colorLiteral(red: 0.6078431373, green: 0.2666666667, blue: 0, alpha: 1) }
    /// 茶色
    class var hex_B35C44: UIColor { #colorLiteral(red: 0.7019607843, green: 0.3607843137, blue: 0.2666666667, alpha: 1) }
    
    /// 棕色
    class var hex_B25D25: UIColor { #colorLiteral(red: 0.6980392157, green: 0.3647058824, blue: 0.1450980392, alpha: 1) }
    /// 琥珀
    class var hex_CA6924: UIColor { #colorLiteral(red: 0.7921568627, green: 0.4117647059, blue: 0.1411764706, alpha: 1) }
    /// 棕黄
    class var hex_AE7000: UIColor { #colorLiteral(red: 0.6823529412, green: 0.4392156863, blue: 0, alpha: 1) }
    /// 昏黄
    class var hex_C89B40: UIColor { #colorLiteral(red: 0.7843137255, green: 0.6078431373, blue: 0.2509803922, alpha: 1) }
    
    /// 乌金
    class var hex_A78E44: UIColor { #colorLiteral(red: 0.6549019608, green: 0.5568627451, blue: 0.2666666667, alpha: 1) }
    /// 黄栌
    class var hex_E29C45: UIColor { #colorLiteral(red: 0.8862745098, green: 0.6117647059, blue: 0.2705882353, alpha: 1) }
    /// 枯黄
    class var hex_D3B17D: UIColor { #colorLiteral(red: 0.8274509804, green: 0.6941176471, blue: 0.4901960784, alpha: 1) }
    /// 牙色
    class var hex_EEDEB0: UIColor { #colorLiteral(red: 0.9333333333, green: 0.8705882353, blue: 0.6901960784, alpha: 1) }
    
    /// 金色
    class var hex_EACD76: UIColor { #colorLiteral(red: 0.9176470588, green: 0.8039215686, blue: 0.462745098, alpha: 1) }
    /// 秋香色
    class var hex_D9B611: UIColor { #colorLiteral(red: 0.8509803922, green: 0.7137254902, blue: 0.06666666667, alpha: 1) }
    /// 雄黄
    class var hex_E9BB1D: UIColor { #colorLiteral(red: 0.9137254902, green: 0.7333333333, blue: 0.1137254902, alpha: 1) }
    /// 缃色
    class var hex_F0C239: UIColor { #colorLiteral(red: 0.9411764706, green: 0.7607843137, blue: 0.2235294118, alpha: 1) }
    
    /// 赤金
    class var hex_F2BE45: UIColor { #colorLiteral(red: 0.9490196078, green: 0.7450980392, blue: 0.2705882353, alpha: 1) }
    /// 雌黄
    class var hex_FFC64B: UIColor { #colorLiteral(red: 1, green: 0.7764705882, blue: 0.2941176471, alpha: 1) }
    /// 姜黄
    class var hex_FFC773: UIColor { #colorLiteral(red: 1, green: 0.7803921569, blue: 0.4509803922, alpha: 1) }
    /// 藤黄
    class var hex_FFB61E: UIColor { #colorLiteral(red: 1, green: 0.7137254902, blue: 0.1176470588, alpha: 1) }
    
    /// 橘红
    class var hex_FF7500: UIColor { #colorLiteral(red: 1, green: 0.4588235294, blue: 0, alpha: 1) }
    /// 橘黄
    class var hex_FF8936: UIColor { #colorLiteral(red: 1, green: 0.537254902, blue: 0.2117647059, alpha: 1) }
    /// 杏红
    class var hex_FF8C31: UIColor { #colorLiteral(red: 1, green: 0.5490196078, blue: 0.1921568627, alpha: 1) }
    /// 橙色
    class var hex_FA8C35: UIColor { #colorLiteral(red: 0.9803921569, green: 0.5490196078, blue: 0.2078431373, alpha: 1) }
    
    /// 橙黄
    class var hex_FFA400: UIColor { #colorLiteral(red: 1, green: 0.6431372549, blue: 0, alpha: 1) }
    /// 杏黄
    class var hex_FFA631: UIColor { #colorLiteral(red: 1, green: 0.6509803922, blue: 0.1921568627, alpha: 1) }
    /// 鸭黄
    class var hex_FAFF72: UIColor { #colorLiteral(red: 0.9803921569, green: 1, blue: 0.4470588235, alpha: 1) }
    /// 鹅黄
    class var hex_FFF143: UIColor { #colorLiteral(red: 1, green: 0.9450980392, blue: 0.262745098, alpha: 1) }
    
    /// 樱草色
    class var hex_EAFF56: UIColor { #colorLiteral(red: 0.9176470588, green: 1, blue: 0.337254902, alpha: 1) }
    /// 黑色
    class var hex_000000: UIColor { #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) }
    /// 漆黑
    class var hex_161823: UIColor { #colorLiteral(red: 0.0862745098, green: 0.09411764706, blue: 0.137254902, alpha: 1) }
    /// 煤黑
    class var hex_312520: UIColor { #colorLiteral(red: 0.1921568627, green: 0.1450980392, blue: 0.1254901961, alpha: 1) }
    
    /// 缁色
    class var hex_493131: UIColor { #colorLiteral(red: 0.2862745098, green: 0.1921568627, blue: 0.1921568627, alpha: 1) }
    /// 黝黑
    class var hex_665757: UIColor { #colorLiteral(red: 0.4, green: 0.3411764706, blue: 0.3411764706, alpha: 1) }
    /// 黧
    class var hex_5D513C: UIColor { #colorLiteral(red: 0.3647058824, green: 0.3176470588, blue: 0.2352941176, alpha: 1) }
    /// 黎
    class var hex_75664D: UIColor { #colorLiteral(red: 0.4588235294, green: 0.4, blue: 0.3019607843, alpha: 1) }
    
    /// 乌黑
    class var hex_392F41: UIColor { #colorLiteral(red: 0.2235294118, green: 0.1843137255, blue: 0.2549019608, alpha: 1) }
    /// 玄青
    class var hex_3D3B4F: UIColor { #colorLiteral(red: 0.2392156863, green: 0.231372549, blue: 0.3098039216, alpha: 1) }
    /// 乌色
    class var hex_725E82: UIColor { #colorLiteral(red: 0.4470588235, green: 0.368627451, blue: 0.5098039216, alpha: 1) }
    /// 黝
    class var hex_6D6882: UIColor { #colorLiteral(red: 0.4274509804, green: 0.4078431373, blue: 0.5098039216, alpha: 1) }
    
    /// 水色
    class var hex_88ADA6: UIColor { #colorLiteral(red: 0.5333333333, green: 0.6784313725, blue: 0.6509803922, alpha: 1) }
    /// 苍色
    class var hex_75878A: UIColor { #colorLiteral(red: 0.4588235294, green: 0.5294117647, blue: 0.5411764706, alpha: 1) }
    /// 灰色
    class var hex_808080: UIColor { #colorLiteral(red: 0.5019607843, green: 0.5019607843, blue: 0.5019607843, alpha: 1) }
    /// 老银
    class var hex_BACAC6: UIColor { #colorLiteral(red: 0.7294117647, green: 0.7921568627, blue: 0.7764705882, alpha: 1) }
    
    /// 花白
    class var hex_C2CCD0: UIColor { #colorLiteral(red: 0.7607843137, green: 0.8, blue: 0.8156862745, alpha: 1) }
    /// 蟹壳青
    class var hex_BBCDC5: UIColor { #colorLiteral(red: 0.7333333333, green: 0.8039215686, blue: 0.7725490196, alpha: 1) }
    /// 青白
    class var hex_C0EBD7: UIColor { #colorLiteral(red: 0.7529411765, green: 0.9215686275, blue: 0.8431372549, alpha: 1) }
    /// 素
    class var hex_E0F0E9: UIColor { #colorLiteral(red: 0.8784313725, green: 0.9411764706, blue: 0.9137254902, alpha: 1) }
    
    /// 鸭卵青
    class var hex_E0EEE8: UIColor { #colorLiteral(red: 0.8784313725, green: 0.9333333333, blue: 0.9098039216, alpha: 1) }
    /// 茶白
    class var hex_F3F9F1: UIColor { #colorLiteral(red: 0.9529411765, green: 0.9764705882, blue: 0.9450980392, alpha: 1) }
    /// 藕荷色
    class var hex_E4C6D0: UIColor { #colorLiteral(red: 0.8941176471, green: 0.7764705882, blue: 0.8156862745, alpha: 1) }
    /// 藕色
    class var hex_EDD1D8: UIColor { #colorLiteral(red: 0.9294117647, green: 0.8196078431, blue: 0.8470588235, alpha: 1) }
    
    /// 白粉
    class var hex_FFF2DF: UIColor { #colorLiteral(red: 1, green: 0.9490196078, blue: 0.8745098039, alpha: 1) }
    /// 鱼肚白
    class var hex_FCEFE8: UIColor { #colorLiteral(red: 0.9882352941, green: 0.937254902, blue: 0.9098039216, alpha: 1) }
    /// 缟
    class var hex_F2ECDE: UIColor { #colorLiteral(red: 0.9490196078, green: 0.9254901961, blue: 0.8705882353, alpha: 1) }
    /// 象牙白
    class var hex_FFFBF0: UIColor { #colorLiteral(red: 1, green: 0.9843137255, blue: 0.9411764706, alpha: 1) }
    
    /// 月白
    class var hex_D6ECF0: UIColor { #colorLiteral(red: 0.8392156863, green: 0.9254901961, blue: 0.9411764706, alpha: 1) }
    /// 莹白
    class var hex_E3F9FD: UIColor { #colorLiteral(red: 0.8901960784, green: 0.9764705882, blue: 0.9921568627, alpha: 1) }
    /// 雪白
    class var hex_F0FCFF: UIColor { #colorLiteral(red: 0.9411764706, green: 0.9882352941, blue: 1, alpha: 1) }
    /// 霜色
    class var hex_E9F1F6: UIColor { #colorLiteral(red: 0.9137254902, green: 0.9450980392, blue: 0.9647058824, alpha: 1) }
    
    /// 铅白
    class var hex_F0F0F4: UIColor { #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9568627451, alpha: 1) }
    /// 银白
    class var hex_E9E7EF: UIColor { #colorLiteral(red: 0.9137254902, green: 0.9058823529, blue: 0.937254902, alpha: 1) }
    /// 精白
    class var hex_FFFFFF: UIColor { #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) }
    
}

// MARK: - 潘通年度色
public extension UIColor {
    /// 2024 - 柔和桃
    class var hex_PT_FFBE98: UIColor { #colorLiteral(red: 1, green: 0.7450980392, blue: 0.5960784314, alpha: 1) }
    /// 2023 - 非凡洋红
    class var hex_PT_BE3455: UIColor { #colorLiteral(red: 0.7450980392, green: 0.2039215686, blue: 0.3333333333, alpha: 1) }
    /// 2022 - 长春花蓝
    class var hex_PT_6667AB: UIColor { #colorLiteral(red: 0.4, green: 0.4039215686, blue: 0.6705882353, alpha: 1) }
    /// 2021 - 明亮黄
    class var hex_PT_F5DF4D: UIColor { #colorLiteral(red: 0.9607843137, green: 0.8745098039, blue: 0.3019607843, alpha: 1) }
    
    /// 2021 - 极致灰
    class var hex_PT_939597: UIColor { #colorLiteral(red: 0.5764705882, green: 0.5843137255, blue: 0.5921568627, alpha: 1) }
    /// 2020 - 经典蓝
    class var hex_PT_0F4C81: UIColor { #colorLiteral(red: 0.05882352941, green: 0.2980392157, blue: 0.5058823529, alpha: 1) }
    /// 2019 - 珊瑚橙
    class var hex_PT_FF6F61: UIColor { #colorLiteral(red: 1, green: 0.4352941176, blue: 0.3803921569, alpha: 1) }
    /// 2018 - 紫外光
    class var hex_PT_5F4B8B: UIColor { #colorLiteral(red: 0.3725490196, green: 0.2941176471, blue: 0.5450980392, alpha: 1) }
    
    /// 2017 - 草木绿
    class var hex_PT_88B04B: UIColor { #colorLiteral(red: 0.5333333333, green: 0.6901960784, blue: 0.2941176471, alpha: 1) }
    /// 2016 - 水晶粉
    class var hex_PT_F7CAC9: UIColor { #colorLiteral(red: 0.968627451, green: 0.7921568627, blue: 0.7882352941, alpha: 1) }
    /// 2016 - 宁静蓝
    class var hex_PT_92A8D1: UIColor { #colorLiteral(red: 0.5725490196, green: 0.6588235294, blue: 0.8196078431, alpha: 1) }
    /// 2015 - 玛萨拉酒红
    class var hex_PT_955251: UIColor { #colorLiteral(red: 0.5843137255, green: 0.3215686275, blue: 0.3176470588, alpha: 1) }
    
    /// 2014 - 璀璨紫兰花
    class var hex_PT_B565A7: UIColor { #colorLiteral(red: 0.7098039216, green: 0.3960784314, blue: 0.6549019608, alpha: 1) }
    /// 2013 - 翡翠绿
    class var hex_PT_009B77: UIColor { #colorLiteral(red: 0, green: 0.6078431373, blue: 0.4666666667, alpha: 1) }
    /// 2012 - 探戈橘
    class var hex_PT_E2492F: UIColor { #colorLiteral(red: 0.8862745098, green: 0.2862745098, blue: 0.1843137255, alpha: 1) }
    /// 2011 - 忍冬红
    class var hex_PT_CB6586: UIColor { #colorLiteral(red: 0.7960784314, green: 0.3960784314, blue: 0.5254901961, alpha: 1) }
    
    /// 2010 - 松石绿
    class var hex_PT_45B5AA: UIColor { #colorLiteral(red: 0.2705882353, green: 0.7098039216, blue: 0.6666666667, alpha: 1) }
    /// 2009 - 含羞草黄
    class var hex_PT_F0C05A: UIColor { #colorLiteral(red: 0.9411764706, green: 0.7529411765, blue: 0.3529411765, alpha: 1) }
    /// 2008 - 鸢尾蓝
    class var hex_PT_5A5B9F: UIColor { #colorLiteral(red: 0.3529411765, green: 0.3568627451, blue: 0.6235294118, alpha: 1) }
    /// 2007 - 辣椒红
    class var hex_PT_9B1B30: UIColor { #colorLiteral(red: 0.6078431373, green: 0.1058823529, blue: 0.1882352941, alpha: 1) }
    
    /// 2006 - 沙色金
    class var hex_PT_DECDBE: UIColor { #colorLiteral(red: 0.8705882353, green: 0.8039215686, blue: 0.7450980392, alpha: 1) }
    /// 2005 - 虎皮百合
    class var hex_PT_53B0AE: UIColor { #colorLiteral(red: 0.3254901961, green: 0.6901960784, blue: 0.6823529412, alpha: 1) }
    /// 2004 - 蓝色绿松石
    class var hex_PT_E2583E: UIColor { #colorLiteral(red: 0.8862745098, green: 0.3450980392, blue: 0.2431372549, alpha: 1) }
    /// 2003 - 水色天空
    class var hex_PT_7BC4C4: UIColor { #colorLiteral(red: 0.4823529412, green: 0.768627451, blue: 0.768627451, alpha: 1) }
    
    /// 2002 - 真实红
    class var hex_PT_BF1932: UIColor { #colorLiteral(red: 0.7490196078, green: 0.09803921569, blue: 0.1960784314, alpha: 1) }
    /// 2001 - 桃色玫瑰色
    class var hex_PT_C74375: UIColor { #colorLiteral(red: 0.7803921569, green: 0.262745098, blue: 0.4588235294, alpha: 1) }
    /// 2000 - 蔚蓝
    class var hex_PT_98B2D1: UIColor { #colorLiteral(red: 0.5960784314, green: 0.6980392157, blue: 0.8196078431, alpha: 1) }
}


#endif
