//
//  UIView++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(UIKit)

import UIKit

// MARK: get/set
public extension UIView {
    
    /// self.frame.size
    var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            self.frame.size.width = newValue.width
            self.frame.size.height = newValue.height
        }
    }
    
    /// size.width
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            self.frame.size.width = newValue
        }
    }
    
    /// size.height
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            self.frame.size.height = newValue
        }
    }
    
    /// origin.x
    var x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var tempFrame: CGRect = self.frame
            tempFrame.origin.x = newValue
            self.frame = tempFrame
        }
    }
    
    /// origin.y
    var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var tempFrame: CGRect = self.frame
            tempFrame.origin.y = newValue
            self.frame = tempFrame
        }
    }
    
    /// center.x
    var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            var tempCenter: CGPoint = self.center
            tempCenter.x = newValue
            self.center = tempCenter
        }
    }
    
    /// center.y
    var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            var tempCenter: CGPoint = self.center
            tempCenter.y = newValue
            self.center = tempCenter
        }
    }
    
    /// origin
    var origin: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            var tempFrame: CGRect = self.frame
            tempFrame.origin = newValue
            self.frame = tempFrame
        }
    }
    
    /// origin.x
    var minX: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var tempFrame: CGRect = self.frame
            tempFrame.origin.x = newValue
            self.frame = tempFrame
        }
    }
    
    /// minX + size.width
    var maxX: CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set {
            var tempFrame: CGRect = self.frame
            tempFrame.origin.x = newValue - tempFrame.size.width
            self.frame = tempFrame
        }
    }
    
    /// origin.y
    var minY: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var tempFrame: CGRect = self.frame
            tempFrame.origin.y = newValue
            self.frame = tempFrame
        }
    }
    
    /// minY + size.height
    var maxY: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set {
            var tempFrame: CGRect = self.frame
            tempFrame.origin.y = newValue - self.frame.size.height
            self.frame = tempFrame
        }
    }
    
}

// MARK: New properties
public extension UIView {
    
    /// reuseIdentifier
    var reuseIdentifier: String {
        return String(describing: Self.self)
    }
    
    /// frame on screen, not on superView
    var frameOnScreen: CGRect {
        var keyWindow: UIWindow?
        if #available(iOS 13.0, *) {
            if let window = UIApplication.shared.delegate?.window {
                keyWindow = window
            } else {
                let sence = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene
                let window = sence?.windows.first(where: { $0.isKeyWindow })
                keyWindow = window ?? UIWindow()
            }
        } else {
            keyWindow = UIApplication.shared.keyWindow
        }
        let rect = self.convert(self.bounds, to: keyWindow)
        return rect
    }
    
    /// superVC
    var superVC: UIViewController? {
        for view in sequence(first: self.superview, next: { $0?.superview }) {
            if let responder = view?.next {
                if responder.isKind(of: UIViewController.self) {
                    return responder as? UIViewController
                }
            }
        }
        return nil
    }
}

// MARK: New methods
public extension UIView {

    /// Get superView(获取父视图)
    /// - Parameter of: Type of superView
    /// - Returns: superView of self
    func superView<T: UIView>(of: T.Type) -> T? {
        for view in sequence(first: self.superview, next: { $0?.superview }) {
            if let father = view as? T {
                return father
            }
        }
        return nil
    }
    
    /// LoadNib
    func loadNib() -> Self? {
        let moduleName = Self.description().components(separatedBy: ".").first ?? ""
        let bundle = Bundle.loadBundle(byResource: moduleName, cls: Self.self) ?? Bundle.main
        return (bundle.loadNibNamed("\(Self.self)", owner: nil, options: nil)?.first as? Self)
    }
    
    /// AddSubview(添加子视图)
    /// - Parameter view: subview
    func addSubview(_ view: UIView?) {
        guard let view = view else { return }
        switch self {
        case let v as UIStackView:
            v.addArrangedSubview(view)
        default:
            self.addSubview(view)
        }
    }
    
    /// Remove all subviews(删除所有子视图)
    func removeAllSubviews() {
        while self.subviews.count > 0 {
            self.subviews.last?.removeFromSuperview()
        }
    }
    
    /// AddTarget(添加目标和操作事件)
    /// - Parameters:
    ///   - target: Any?
    ///   - action: Selector?
    func addTarget(_ target: Any?, action: Selector?) {
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(UITapGestureRecognizer(target: target, action: action))
    }
    
    /// AddTapAction(添加点击事件)
    /// - Parameters:
    ///   - tapsRequired: tapsRequired
    ///   - handler: closure
    func addTapAction(_ tapsRequired: Int = 1, handler: ((_ view: UIView?) -> Void)?) {
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(UITapGestureRecognizer.init(target: self, tapRequired: tapsRequired) { tap in
            handler?(tap.view)
        })
    }
    
    /// MakeBorder(设置边框)
    /// - Parameters:
    ///   - color: border color
    ///   - with: border width
    func makeBorder(color: UIColor, with: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = with
    }
    
    /// MakeShadow(设置阴影)
    /// - Parameters:
    ///   - cornerRadius: default = `5.0`
    ///   - color: default = `UIColor(red: 0, green: 0, blue: 0, alpha: 0.21)`
    ///   - offset: default = `0`
    ///   - opacity: default = `1`
    func makeShadow(_ cornerRadius: CGFloat = 5.0,
                    color: UIColor? = UIColor(red: 0, green: 0, blue: 0, alpha: 0.21),
                    offset: CGSize = CGSize.zero,
                    opacity: Float = 1) {
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = color?.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius = cornerRadius
    }
    
    /// MakeGradient(设置渐变)
    /// - Parameters:
    ///   - colors: 颜色组，最少两种
    ///   - locations: 渲染区间范围，必须是递增的，数字区间[0, 1]
    ///   - startPoint: 渲染起点
    ///   - endPoint: 渲染终点
    func makeGradient(_ colors: [Any], locations: [NSNumber], start: CGPoint, end: CGPoint) {
        let gradient = CAGradientLayer()
        gradient.colors = colors
        gradient.locations = locations
        gradient.startPoint = start
        gradient.endPoint = end
        gradient.frame = self.bounds
        if let first = self.layer.sublayers?.first, first.isKind(of: CAGradientLayer.classForCoder()) {
            self.layer.replaceSublayer(first, with: gradient)
        } else {
            self.layer.insertSublayer(gradient, at: 0)
        }
    }
    
    /// MakeCornerRadius(设置某几个位置的圆角)
    /// - Parameters:
    ///   - corners: 哪几个角
    ///   - radius: 角度值
    func makeCornerRadius(corners: UIRectCorner, radius: CGFloat) {
        let cornerSize = CGSize(width: radius, height: radius)
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: cornerSize)
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.addSublayer(maskLayer)
        self.layer.mask = maskLayer
    }
    
    /// MakeRadius(设置圆角)
    /// - Parameters:
    ///   - radius: radius(角度值)
    ///   - corners: corners(角)
    func makeRadius(_ radius: CGFloat, corners: CACornerMask? = nil) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = radius > 0
        if corners != nil {
            self.layer.maskedCorners = corners!
        }
    }
    
    /// Show badge point(显示右上角小红点)
    func showBadgePoint() {
        let badge = UIView(frame: CGRect(x: self.frame.size.width - 8, y: 0, width: 8, height: 8))
        badge.backgroundColor = UIColor.sf.hexColor(hex: "#FF3030")
        badge.layer.cornerRadius = 4.0
        badge.layer.masksToBounds = true
        badge.tag = 1023
        self.addSubview(badge)
    }
    
    /// Hide badge point(隐藏右上角小红点)
    func hiddenBadgePoint() {
        if let badge = self.viewWithTag(1023) {
            badge.removeFromSuperview()
        }
    }
    
    /// ScreenShot(截图)
    func screenShot() -> UIImage? {
        guard self.frame.size.height > 0 && self.frame.size.width > 0 else {
            return nil
        }
        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, 0)
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    /// Render to image(将当前视图转为图片)
    func asImage() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = UIScreen.main.scale
        let renderer = UIGraphicsImageRenderer(bounds: self.bounds, format: format)
        return renderer.image { rendererContext in
            self.layer.render(in: rendererContext.cgContext)
        }
    }
}

//MARK: Shake animations

/// JWShakeDirectionType
public enum JWShakeDirectionType {
    case horizontal
    case vertical
}

/// JWShakeAnimationType
public enum JWShakeAnimationType {
    case linear // 线性动画
    case easeIn // 缓入动画
    case easeOut // 缓出动画
    case easeInOut // 缓入缓出动画
}

public extension UIView {
    
    /// Add shake animation
    /// - Parameters:
    ///   - direction: default = `.horizontal`
    ///   - duration: seconds, default = `0.6`
    ///   - animationType: default = `.easeOut`
    ///   - complete: closure after animation finish，default = `nil`
    func shake(direction: JWShakeDirectionType = .horizontal,
               duration: TimeInterval = 0.6,
               animationType: JWShakeAnimationType = .easeOut,
               complete: (() -> Void)? = nil) {
        CATransaction.begin()
        let animation: CAKeyframeAnimation
        switch direction {
        case .horizontal:
            animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        case .vertical:
            animation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        }
        switch animationType {
        case .linear:
            animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        case .easeIn:
            animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        case .easeOut:
            animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        case .easeInOut:
            animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        }
        CATransaction.setCompletionBlock(complete)
        animation.duration = duration
        animation.values = [-15.0, 12.0, -8.0, 8.0, -3.0, 3.0, 0.0]
        self.layer.add(animation, forKey: "shake")
        CATransaction.commit()
    }
    
}

//MARK: Make rect sides

/// UIRectSide
public struct UIRectSide: OptionSet {
    public let rawValue: Int
    
    public static let left = UIRectSide(rawValue: 1 << 0)
    
    public static let top = UIRectSide(rawValue: 1 << 1)
    
    public static let right = UIRectSide(rawValue: 1 << 2)
    
    public static let bottom = UIRectSide(rawValue: 1 << 3)
    
    public static let all: UIRectSide = [.top, .right, .left, .bottom]
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

public extension UIView {

    /// Make rect sides, support drawing one or more, support rounded borders, support virtual and real lines
    /// 需要注意：1.画曲线边框并不会切圆角 2.如果视图切圆角了设置 isSuperClip = true
    /// - Parameters:
    ///   - lineColor: default = `.lightGray`
    ///   - lineWidth: default = `1`
    ///   - dashLength: default = `10`
    ///   - dashSpacing: default = `5`
    ///   - rectSide: default = `.all`
    ///   - topLeft: default = `0`
    ///   - topRight: default = `0`
    ///   - bottomLeft: default = `0`
    ///   - bottomRight: default = `0`
    ///   - isSuperClip: default = `false`
    ///   - isDash: default = `false`
    func makeRectSide(lineColor: UIColor = .lightGray,
                      lineWidth: CGFloat = 1,
                      dashLength: Int = 10,
                      dashSpacing: Int = 5,
                      rectSide: UIRectSide = .all,
                      topLeft: CGFloat = 0.0,
                      topRight: CGFloat = 0.0,
                      bottomLeft: CGFloat = 0.0,
                      bottomRight: CGFloat = 0.0,
                      isSuperClip: Bool = false,
                      isDash: Bool = false) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.bounds = self.bounds
        shapeLayer.anchorPoint = CGPoint(x: 0, y: 0)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        
        // 每一段虚线长度和每两段虚线之间的间隔
        if isDash {
            shapeLayer.lineDashPattern = [NSNumber(value: dashLength), NSNumber(value: dashSpacing)]
        }
        
        let minX = CGRectGetMinX(self.bounds)
        let minY = CGRectGetMinY(self.bounds)
        let maxX = CGRectGetMaxX(self.bounds)
        let maxY = CGRectGetMaxY(self.bounds)
        
        //FIXME: 二次贝塞尔曲线控制点，如果视图切了圆角，在圆角部分绘制的线更细一点，线宽低的话甚至看不出来绘制的曲线
        //FIXME: 控制点坐标加减会使曲线看起来更粗一点，多次测试后加减2是个可接受的值，线宽等于1也可以看出绘制的曲线
        //FIXME: 不能加减线宽，线宽很高的话曲线会变形
        let control_minX = isSuperClip ? minX + 2 : minX
        let control_minY = isSuperClip ? minY + 2 : minY
        let control_maxX = isSuperClip ? maxX - 2 : maxX
        let control_maxY = isSuperClip ? maxY - 2 : maxY
        
        let path = CGMutablePath()
        if rectSide.contains(.left) {
            path.move(to: CGPointMake(minX, maxY - bottomLeft))
            path.addLine(to: CGPointMake(minX, topLeft))
            path.addQuadCurve(to: CGPointMake(topLeft, minY), control: CGPointMake(control_minX, control_minY))
        }
        if rectSide.contains(.top) {
            path.move(to: CGPointMake(topLeft, minY))
            path.addLine(to: CGPointMake(maxX - topRight, minY))
            path.addQuadCurve(to: CGPointMake(maxX, topRight), control: CGPointMake(control_maxX, control_minY))
        }
        if rectSide.contains(.right) {
            path.move(to: CGPointMake(maxX, topRight))
            path.addLine(to: CGPointMake(maxX, maxY - bottomRight))
            path.addQuadCurve(to: CGPointMake(maxX - bottomRight, maxY), control: CGPointMake(control_maxX, control_maxY))
        }
        if rectSide.contains(.bottom) {
            path.move(to: CGPointMake(maxX - bottomRight, maxY))
            path.addLine(to: CGPointMake(bottomLeft, maxY))
            path.addQuadCurve(to: CGPointMake(minX, maxY - bottomLeft), control: CGPointMake(control_minX, control_maxY))
        }
        
        shapeLayer.path = path
        self.layer.addSublayer(shapeLayer)
    }
    
}

#endif
