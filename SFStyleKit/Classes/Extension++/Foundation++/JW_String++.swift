//
//  JW_String++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(UIKit)

import UIKit

// MARK: Whether it is an id number
public extension String {
    
    /// 判断字符串是否是身份证
    var isID: Bool {
        // 判断位数
        if self.count != 15 && self.count != 18 { return false }
        var carid = self
        var lSumQT = 0
        // 加权因子
        let R = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]
        // 校验码
        let sChecker: [Int8] = [49, 48, 88, 57, 56, 55, 54, 53, 52, 51, 50]
        // 将15位身份证号转换成18位
        let mString = NSMutableString(string: self)
        if self.count == 15 {
            mString.insert("19", at: 6)
            var p = 0
            let pid = mString.utf8String
            for i in 0...16 {
                let t = Int(pid![i])
                p += (t - 48) * R[i]
            }
            let o = p % 11
            let stringContent = NSString(format: "%c", sChecker[o])
            mString.insert(stringContent as String, at: mString.length)
            carid = mString as String
        }
        
        let cStartIndex = carid.startIndex
//        let cEndIndex = carid.endIndex
        let index = carid.index(cStartIndex, offsetBy: 2)
        // 判断地区码
        let sProvince = String(carid[cStartIndex..<index])
        if !self.areaCodeAt(sProvince) {
            return false
        }
        // 判断年月日是否有效
        // 年份
        let yStartIndex = carid.index(cStartIndex, offsetBy: 6)
        let yEndIndex = carid.index(yStartIndex, offsetBy: 4)
        let strYear = Int(carid[yStartIndex..<yEndIndex])
        
        // 月份
        let mStartIndex = carid.index(yEndIndex, offsetBy: 0)
        let mEndIndex = carid.index(mStartIndex, offsetBy: 2)
        let strMonth = Int(carid[mStartIndex..<mEndIndex])
        
        // 日
        let dStartIndex = carid.index(mEndIndex, offsetBy: 0)
        let dEndIndex = carid.index(dStartIndex, offsetBy: 2)
        let strDay = Int(carid[dStartIndex..<dEndIndex])
        
        let localZone = NSTimeZone.local
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.timeZone = localZone
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let date = dateFormatter.date(from: "\(String(format: "%02d", strYear!))-\(String(format: "%02d", strMonth!))-\(String(format: "%02d", strDay!)) 12:01:01")
        
        if date == nil {
            return false
        }
        let paperId = carid.utf8CString
        // 检验长度
        if carid.count != 18 {
            return false
        }
        // 校验数字
        func isDigit(c: Int) -> Bool {
            return c >= 0 && c <= 9
        }
        
        for i in 0...18 {
            let id = Int(paperId[i])
            if isDigit(c: id) && !(id == 88 || id == 120) && i == 17 {
                return false
            }
        }
        // 验证最末的校验码
        for i in 0...16 {
            let v = Int(paperId[i])
            lSumQT += (v - 48) * R[i]
        }
        if sChecker[lSumQT % 11] != paperId[17] {
            return false
        }
        return true
    }
    
    /// 判断地区码对应的地区是否存在
    func areaCodeAt(_ code: String) -> Bool {
        var dic: [String: String] = [:]
        dic["11"] = "北京"
        dic["12"] = "天津"
        dic["13"] = "河北"
        dic["14"] = "山西"
        dic["15"] = "内蒙古"
        dic["21"] = "辽宁"
        dic["22"] = "吉林"
        dic["23"] = "黑龙江"
        dic["31"] = "上海"
        dic["32"] = "江苏"
        dic["33"] = "浙江"
        dic["34"] = "安徽"
        dic["35"] = "福建"
        dic["36"] = "江西"
        dic["37"] = "山东"
        dic["41"] = "河南"
        dic["42"] = "湖北"
        dic["43"] = "湖南"
        dic["44"] = "广东"
        dic["45"] = "广西"
        dic["46"] = "海南"
        dic["50"] = "重庆"
        dic["51"] = "四川"
        dic["52"] = "贵州"
        dic["53"] = "云南"
        dic["54"] = "西藏"
        dic["61"] = "陕西"
        dic["62"] = "甘肃"
        dic["63"] = "青海"
        dic["64"] = "宁夏"
        dic["65"] = "新疆"
        dic["71"] = "台湾"
        dic["81"] = "香港"
        dic["82"] = "澳门"
        dic["91"] = "国外"
        if dic[code] == nil {
            return false
        }
        return true
    }
    
}

// MARK: New properties
public extension String {
    
    /// 判断字符串是否是手机号
    var isPhone: Bool {
        let regex = "^1[3|4|5|6|7|8|9][0-9]{9}$"
        let test = NSPredicate(format: "SELF MATCHES %@", regex)
        return test.evaluate(with: self)
    }
    
    /// 判断字符串是否是邮箱
    var isMail: Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let test = NSPredicate(format: "SELF MATCHES %@", regex)
        return test.evaluate(with: self)
    }
    
    /// 判断是不是车牌号
    var isCarNum: Bool {
        let regex = "^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Za-z]{1}[A-Za-z]{1}[A-Za-z0-9]{4}[A-Za-z0-9挂学警港澳]{1}$"
        let test = NSPredicate(format: "SELF MATCHES %@", regex)
        return test.evaluate(with: self)
    }
    
    /// 是否是中文
    var isChinese: Bool {
        let pred = NSPredicate(format: "SELF MATCHES %@", "(^[\u{4e00}-\u{9fa5}]+$)")
        return pred.evaluate(with: self)
    }
    
    /// 去掉空格
    var noSpace: String {
        let whitespace = CharacterSet.whitespacesAndNewlines
        return self.trimmingCharacters(in: whitespace)
    }
    
    /// 时间戳 转 0000-00-00 00:00:00
    /// - Parameter timeStamp: 时间戳
    /// - Returns: 年月日时分秒
    var timeStampToData: String {
        let timeSta: TimeInterval = (self as NSString).doubleValue
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = Date(timeIntervalSince1970: timeSta)
        return dateFormatter.string(from: date)
    }
    
    /// 月份转时间Date
    var monthToDate: Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = "yyyy-MM"
        return dateFormatter.date(from: self)
    }
    
}

// MARK: New methods
public extension String {
    
    /// Make chinese to pinyin
    /// - Parameter noSpace: whether remove space
    /// - Returns: new string
    func toPinyin(_ noSpace: Bool = false) -> String {
        let temp = NSMutableString(string: self)
        // first, convert to Pinyin with tones
        CFStringTransform(temp, nil, kCFStringTransformToLatin, false)
        // second, convert to no tone
        CFStringTransform(temp, nil, kCFStringTransformStripDiacritics, false)
        let result = String(temp)
        
        return noSpace ? result.replacingOccurrences(of: " ", with: "") : result
    }
    
    /// Make base64 string to image
    func makeBase64Image() -> UIImage? {
        var temp = self
        if temp.hasPrefix("data:image") {
            guard let newBase64String = temp.components(separatedBy: ",").last else { return nil }
            temp = newBase64String
        }
        guard let imgData = Data(base64Encoded: temp, options: Data.Base64DecodingOptions()) else { return nil }
        guard let codeImage = UIImage(data: imgData) else { return nil }
        
        return codeImage
    }
    
    /// Make string to base64 encoded(base64加密)
    func toBase64Encoded() -> String? {
        if let data = self.data(using: .utf8) {
            return data.base64EncodedString()
        }
        
        return nil
    }

    /// Make string to base64 decoded(base64解密)
    func toBase64Decoded() -> String? {
        if let data = Data(base64Encoded: self) {
            return String(data: data, encoding: .utf8)
        }
        
        return nil
    }
    
    /// Get a string of specified position and length
    /// - Parameters:
    ///   - start: position where to start
    ///   - length: length, default is to end
    /// - Returns: String
    func subString(start: Int, length: Int = -1) -> String? {
        if self.count < start + length { return nil }
        var len = length
        if len == -1 {
            len = self.count - start
        }
        let st = self.index(self.startIndex, offsetBy: start)
        let en = self.index(st, offsetBy: len)
        let range = st..<en
        return String(self[range])
    }
    
    /// Get the string at the specified location
    /// - Parameter index: index
    /// - Returns: String
    func subString(at index: Int) -> String? {
        if self.count <= index { return nil }
        let index = self.index(self.startIndex, offsetBy: index)
        return String(self[index])
    }
    
    /// Make phone call
    func call(complete: ((Bool) -> Void)? = nil) {
        guard let url = URL(string: "tel:\(self)") else {
            fatalError("invalid phone number")
        }
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, completionHandler: complete)
        }
    }
    
    /// Calculate text height based on width
    /// - Parameters:
    ///   - font: default = `14.0`
    ///   - width: based on width
    /// - Returns: text height
    func getBoundingHeight(font: UIFont = UIFont.systemFont(ofSize: 14.0), width: CGFloat) -> CGFloat {
        let rectSize = self.boundingRect(with: CGSize(width: width, height: CGFLOAT_MAX),
                                         options: [.usesLineFragmentOrigin, .usesFontLeading],
                                         attributes: [.font: font],
                                         context: nil).size
        return ceil(rectSize.height)
    }
    
    /// Make html string to attributed
    /// - Parameters:
    ///   - font: default = `15`
    ///   - lineHeight: default = `21`
    ///   - isFit: whether display rich text according to the given font size and line height or not
    /// - Returns: NSMutableAttributedString
    func htmlAttributedString(font: UIFont = UIFont.systemFont(ofSize: 15.0),
                              lineHeight: CGFloat = 21,
                              isFit: Bool = false) -> NSMutableAttributedString? {
        guard let data = self.data(using: String.Encoding.utf8, allowLossyConversion: false) else { return nil }
        
        let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
            NSAttributedString.DocumentReadingOptionKey.characterEncoding: String.Encoding.utf8.rawValue,
            NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html,
        ]
        
        let htmlString = try? NSMutableAttributedString(data: data, options: options, documentAttributes: nil)
        
        let paraStyle = NSMutableParagraphStyle()
        paraStyle.lineBreakMode = .byWordWrapping
        paraStyle.maximumLineHeight = lineHeight
        paraStyle.minimumLineHeight = lineHeight
        if isFit {
            htmlString?.addAttributes([
                .paragraphStyle: paraStyle,
                .baselineOffset: (lineHeight - font.lineHeight) / 4,
                .font: font,
            ], range: NSMakeRange(0, htmlString?.length ?? 0))
        } else {
            htmlString?.addAttributes([
                .paragraphStyle: paraStyle,
            ], range: NSMakeRange(0, htmlString?.length ?? 0))
        }
        
        return htmlString
    }
    
    /// Make the middle number of the phone as `*`
    func maskedPhoneNumber() -> String {
        let phoneCount = self.count
        if phoneCount < 4 {
            return self
        } else {
            let startIndex = self.index(self.startIndex, offsetBy: 3)
            let endIndex = self.index(self.startIndex, offsetBy: phoneCount - 4)
            let range = startIndex..<endIndex
            return self.replacingCharacters(in: range, with: String(repeating: "*", count: phoneCount - 7))
        }
    }
    
    /// 使用正则表达式替换
    /// - Parameters:
    ///   - pattern: 正则表达式
    ///   - with: 要替换成的内容
    ///   - options: 正则类型
    /// - Returns: 新的字符串
    func regularReplace(pattern: String, with: String, options: NSRegularExpression.Options = []) -> String {
        let regex = try? NSRegularExpression(pattern: pattern, options: options)
        return regex?.stringByReplacingMatches(in: self, options: [], range: NSMakeRange(0, self.count), withTemplate: with) ?? self
    }
}

#endif
