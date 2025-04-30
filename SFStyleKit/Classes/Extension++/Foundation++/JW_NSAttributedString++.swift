//
//  JW_NSAttributedString++.swift
//  Pods
//
//  Created by sfh on 2025/4/29.
//

#if canImport(Foundation)

import Foundation

public extension NSAttributedString {
    
    /// Make html string to attributed
    /// - Parameters:
    ///   - htmlString: html string
    ///   - font: default = `14.0`
    ///   - textColor: default = `hex_222222`
    ///   - lineHeight: default = `21.0`
    /// - Returns: NSAttributedString
    @objc static func createHTMLAttributedString(from htmlString: String,
                                                 font: UIFont = .systemFont(ofSize: 14.0),
                                                 textColor: UIColor = .hex_222222,
                                                 lineHeight: CGFloat = 21.0) -> NSAttributedString {
        // 1. 检查输入
        guard !htmlString.isEmpty else {
            return NSAttributedString()
        }
        
        // 2. 预处理 HTML 内容
        let processedHTML = htmlString
            .replacingOccurrences(of: "<br/>", with: "<br>")
            .replacingOccurrences(of: "&nbsp;", with: " ")
        
        // 3. 构建完整的 HTML 文档
        let htmlTemplate = """
            <!DOCTYPE html>
            <html>
            <head>
            <meta charset='UTF-8'>
            <style>
            body {
                font-family: '-apple-system';
                font-size: \(font.pointSize)px;
                line-height: \(lineHeight)px;
                color: \(textColor.hex);
            }
            b { font-weight: bold; }
            i { font-style: italic; }
            u { text-decoration: underline; }
            s { text-decoration: line-through; }
            br { 
                display: block;
                margin-top: 8px;
                content: "";
            }
            </style>
            </head>
            <body>
            \(processedHTML)
            </body>
            </html>
            """
        
        // 4. 转换为数据
        guard let data = htmlTemplate.data(using: .utf8) else {
            return NSAttributedString(string: htmlString)
        }
        
        do {
            // 5. 创建富文本
            let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
                .documentType: NSAttributedString.DocumentType.html,
                .characterEncoding: String.Encoding.utf8.rawValue
            ]
            
            let attributedString = try NSMutableAttributedString(
                data: data,
                options: options,
                documentAttributes: nil
            )
            
            // 6. 遍历属性并保持格式
            attributedString.enumerateAttributes(
                in: NSRange(location: 0, length: attributedString.length),
                options: []
            ) { attributes, range, _ in
                var newAttributes: [NSAttributedString.Key: Any] = [
                    .foregroundColor: textColor
                ]
                
                // 处理字体
                if let originalFont = attributes[.font] as? UIFont {
                    let descriptor = originalFont.fontDescriptor
                    var symbolicTraits = descriptor.symbolicTraits
                    
                    let isBold = symbolicTraits.contains(.traitBold)
                    let isItalic = symbolicTraits.contains(.traitItalic)
                    
                    if isBold && isItalic {
                        newAttributes[.font] = font.bold().italic()
                    } else if isBold {
                        newAttributes[.font] = font.bold()
                    } else if isItalic {
                        newAttributes[.font] = font.italic()
                    } else {
                        newAttributes[.font] = font
                    }
                } else {
                    newAttributes[.font] = font
                }
                
                // 保持下划线和删除线
                if let strikethrough = attributes[.strikethroughStyle] as? NSNumber {
                    newAttributes[.strikethroughStyle] = strikethrough
                    newAttributes[.strikethroughColor] = textColor
                }
                
                if let underline = attributes[.underlineStyle] as? NSNumber {
                    newAttributes[.underlineStyle] = underline
                    newAttributes[.underlineColor] = textColor
                }
                
                // 设置段落样式
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineSpacing = lineHeight - font.lineHeight
                newAttributes[.paragraphStyle] = paragraphStyle
                
                // 应用属性
                attributedString.addAttributes(newAttributes, range: range)
            }
            
            return attributedString
            
        } catch {
            #if DEBUG
            print("HTML conversion error: \(error.localizedDescription)")
            #endif
            return NSAttributedString(string: htmlString)
        }
    }
    
}

#endif
