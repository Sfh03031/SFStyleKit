//
//  SFExStyle_UIView.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

#if canImport(RxSwift) && canImport(RxCocoa)
import RxCocoa
import RxSwift
#endif

//MARK: -  系统Api支持

public extension SFExStyle where Base: UIView {
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> SFExStyle {
        base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    func tag(_ tag: Int) -> SFExStyle {
        base.tag = tag
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func focusGroupIdentifier(_ focusGroupIdentifier: String?) -> SFExStyle {
        base.focusGroupIdentifier = focusGroupIdentifier
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func focusGroupPriority(_ focusGroupPriority: UIFocusGroupPriority) -> SFExStyle {
        base.focusGroupPriority = focusGroupPriority
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func focusEffect(_ focusEffect: UIFocusEffect?) -> SFExStyle {
        base.focusEffect = focusEffect
        return self
    }

    @discardableResult
    func semanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute) -> SFExStyle {
        base.semanticContentAttribute = semanticContentAttribute
        return self
    }

    @discardableResult
    func frame(_ frame: CGRect) -> SFExStyle {
        base.frame = frame
        return self
    }

    @discardableResult
    func bounds(_ bounds: CGRect) -> SFExStyle {
        base.bounds = bounds
        return self
    }

    @discardableResult
    func center(_ center: CGPoint) -> SFExStyle {
        base.center = center
        return self
    }
    
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> SFExStyle {
        base.transform = transform
        return self
    }

    @available(iOS 13.0, *)
    @discardableResult
    func transform3D(_ transform3D: CATransform3D) -> SFExStyle {
        base.transform3D = transform3D
        return self
    }

    @discardableResult 
    func contentScaleFactor(_ contentScaleFactor: CGFloat) -> SFExStyle {
        base.contentScaleFactor = contentScaleFactor
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult
    func anchorPoint(_ anchorPoint: CGPoint) -> SFExStyle {
        base.anchorPoint = anchorPoint
        return self
    }

    @discardableResult
    func isMultipleTouchEnabled(_ isMultipleTouchEnabled: Bool) -> SFExStyle {
        base.isMultipleTouchEnabled = isMultipleTouchEnabled
        return self
    }

    @discardableResult
    func isExclusiveTouch(_ isExclusiveTouch: Bool) -> SFExStyle {
        base.isExclusiveTouch = isExclusiveTouch
        return self
    }

    @discardableResult
    func autoresizesSubviews(_ autoresizesSubviews: Bool) -> SFExStyle {
        base.autoresizesSubviews = autoresizesSubviews
        return self
    }

    @discardableResult
    func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> SFExStyle {
        base.autoresizingMask = autoresizingMask
        return self
    }

    @discardableResult
    func sizeToFit() -> SFExStyle {
        base.sizeToFit()
        return self
    }
    
    @discardableResult
    func removeFromSuperview() -> SFExStyle {
        base.removeFromSuperview()
        return self
    }

    @discardableResult
    func insertSubview(_ view: UIView, at index: Int) -> SFExStyle {
        base.insertSubview(view, at: index)
        return self
    }

    @discardableResult
    func exchangeSubview(at index1: Int, withSubviewAt index2: Int) -> SFExStyle {
        base.exchangeSubview(at: index1, withSubviewAt: index2)
        return self
    }

    @discardableResult
    func addSubview(_ view: UIView) -> SFExStyle {
        base.addSubview(view)
        return self
    }

    @discardableResult
    func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) -> SFExStyle {
        base.insertSubview(view, belowSubview: siblingSubview)
        return self
    }

    @discardableResult
    func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) -> SFExStyle {
        base.insertSubview(view, aboveSubview: siblingSubview)
        return self
    }

    @discardableResult
    func bringSubviewToFront(_ view: UIView) -> SFExStyle {
        base.bringSubview(toFront: view)
        return self
    }

    @discardableResult
    func sendSubviewToBack(_ view: UIView) -> SFExStyle {
        base.sendSubview(toBack: view)
        return self
    }
    
    @discardableResult
    func didAddSubview(_ subview: UIView) -> SFExStyle {
        base.didAddSubview(subview)
        return self
    }

    @discardableResult
    func willRemoveSubview(_ subview: UIView) -> SFExStyle {
        base.willRemoveSubview(subview)
        return self
    }

    @discardableResult
    func willMove(toSuperview newSuperview: UIView?) -> SFExStyle {
        base.willMove(toSuperview: newSuperview)
        return self
    }

    @discardableResult
    func didMoveToSuperview() -> SFExStyle {
        base.didMoveToSuperview()
        return self
    }

    @discardableResult
    func willMove(toWindow newWindow: UIWindow?) -> SFExStyle {
        base.willMove(toWindow: newWindow)
        return self
    }

    @discardableResult
    func didMoveToWindow() -> SFExStyle {
        base.didMoveToWindow()
        return self
    }

    @discardableResult
    func setNeedsLayout() -> SFExStyle {
        base.setNeedsLayout()
        return self
    }

    @discardableResult
    func layoutIfNeeded() -> SFExStyle {
        base.layoutIfNeeded()
        return self
    }

    @discardableResult 
    func layoutSubviews() -> SFExStyle {
        base.layoutSubviews()
        return self
    }

    @discardableResult
    func layoutMargins(_ edgeInsets: UIEdgeInsets) -> SFExStyle {
        base.layoutMargins = edgeInsets
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func directionalLayoutMargins(_ edgeInsets: NSDirectionalEdgeInsets) -> SFExStyle {
        base.directionalLayoutMargins = edgeInsets
        return self
    }

    @discardableResult
    func preservesSuperviewLayoutMargins(_ enabled: Bool) -> SFExStyle {
        base.preservesSuperviewLayoutMargins = enabled
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func insetsLayoutMarginsFromSafeArea(_ enabled: Bool) -> SFExStyle {
        base.insetsLayoutMarginsFromSafeArea = enabled
        return self
    }

    @discardableResult
    func layoutMarginsDidChange() -> SFExStyle {
        base.layoutMarginsDidChange()
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func safeAreaInsetsDidChange() -> SFExStyle {
        base.safeAreaInsetsDidChange()
        return self
    }

    @discardableResult
    func draw(_ rect: CGRect) -> SFExStyle {
        base.draw(rect)
        return self
    }

    @discardableResult
    func setNeedsDisplay() -> SFExStyle {
        base.setNeedsDisplay()
        return self
    }

    @discardableResult
    func setNeedsDisplay(_ rect: CGRect) -> SFExStyle {
        base.setNeedsDisplay(rect)
        return self
    }

    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> SFExStyle {
        base.clipsToBounds = clipsToBounds
        return self
    }

    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor?) -> SFExStyle {
        base.backgroundColor = backgroundColor
        return self
    }

    @discardableResult
    func alpha(_ alpha: CGFloat) -> SFExStyle {
        base.alpha = alpha
        return self
    }

    @discardableResult
    func isOpaque(_ isOpaque: Bool) -> SFExStyle {
        base.isOpaque = isOpaque
        return self
    }
    
    @discardableResult
    func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> SFExStyle {
        base.clearsContextBeforeDrawing = clearsContextBeforeDrawing
        return self
    }

    @discardableResult
    func isHidden(_ isHidden: Bool) -> SFExStyle {
        base.isHidden = isHidden
        return self
    }

    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> SFExStyle {
        base.contentMode = contentMode
        return self
    }

    @discardableResult
    func mask(_ mask: UIView?) -> SFExStyle {
        base.mask = mask
        return self
    }

    @discardableResult
    func tintColor(_ tintColor: UIColor!) -> SFExStyle {
        base.tintColor = tintColor
        return self
    }

    @discardableResult
    func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> SFExStyle {
        base.tintAdjustmentMode = tintAdjustmentMode
        return self
    }
    
    @discardableResult
    func tintColorDidChange() -> SFExStyle {
        base.tintColorDidChange()
        return self
    }
    
    @discardableResult
    func gestureRecognizers(gestures: [UIGestureRecognizer]?) -> SFExStyle {
        base.gestureRecognizers = gestures
        return self
    }

    @discardableResult
    func addGestureRecognizer(_ gesture: UIGestureRecognizer) -> SFExStyle {
        base.addGestureRecognizer(gesture)
        return self
    }

    @discardableResult
    func removeGestureRecognizer(_ gesture: UIGestureRecognizer) -> SFExStyle {
        base.removeGestureRecognizer(gesture)
        return self
    }
    
    @discardableResult
    func addMotionEffect(_ effect: UIMotionEffect) -> SFExStyle {
        base.addMotionEffect(effect)
        return self
    }

    @discardableResult
    func removeMotionEffect(_ effect: UIMotionEffect) -> SFExStyle {
        base.removeMotionEffect(effect)
        return self
    }

    @discardableResult
    func motionEffects(_ effects: [UIMotionEffect]) -> SFExStyle {
        base.motionEffects = effects
        return self
    }

    @discardableResult
    func addLayoutGuide(_ layoutGuide: UILayoutGuide) -> SFExStyle {
        base.addLayoutGuide(layoutGuide)
        return self
    }

    @discardableResult
    func removeLayoutGuide(_ layoutGuide: UILayoutGuide) -> SFExStyle {
        base.removeLayoutGuide(layoutGuide)
        return self
    }
    
    @discardableResult
    func restorationIdentifier(_ identifier: String?) -> SFExStyle {
        base.restorationIdentifier = identifier
        return self
    }

    @discardableResult
    func encodeRestorableState(with coder: NSCoder) -> SFExStyle {
        base.encodeRestorableState(with: coder)
        return self
    }

    @discardableResult
    func decodeRestorableState(with coder: NSCoder) -> SFExStyle {
        base.decodeRestorableState(with: coder)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func overrideUserInterfaceStyle(style: UIUserInterfaceStyle) -> SFExStyle {
        base.overrideUserInterfaceStyle = style
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func minimumContentSizeCategory(category: UIContentSizeCategory?) -> SFExStyle {
        base.minimumContentSizeCategory = category
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func maximumContentSizeCategory(category: UIContentSizeCategory?) -> SFExStyle {
        base.maximumContentSizeCategory = category
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult
    func updateTraitsIfNeeded() -> SFExStyle {
        base.updateTraitsIfNeeded()
        return self
    }
}

//MARK: -  扩展

/// 边框结构体
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

/// 摇动视图的方向
public enum ShakeDirection {
    /// 水平
    case horizontal
    /// 垂直
    case vertical
}

/// 摇动动画类型
public enum ShakeAnimationType {
    /// 线性动画
    case linear
    /// 缓入动画
    case easeIn
    /// 缓出动画
    case easeOut
    /// 缓入缓出动画
    case easeInOut
}

public extension SFExStyle where Base: UIView {
    
    @discardableResult
    func add(subview view: UIView?) -> SFExStyle {
        guard let view = view else { return self }
        switch base {
        case let v as UIStackView:
            v.addArrangedSubview(view)
        default:
            base.addSubview(view)
        }
        return self
    }
    
    /// 在屏幕上的位置,相对于屏幕,不是相对于SuperView
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
        let rect = base.convert(base.bounds, to: keyWindow)
        return rect
    }
    
    /// 从xib加载view
    @discardableResult
    static func loadNib() -> SFExStyle? {
        let moduleName = Base.description().components(separatedBy: ".").first ?? ""
        let bundle = Bundle.sf.moduleBundle(Base.self, moduleName) ?? Bundle.main
        return (bundle.loadNibNamed("\(Base.self)", owner: nil, options: nil)?.first as? Base)?.sf
    }
    
    /// 返回该view所在VC
    var superVC: UIViewController? {
        for view in sequence(first: base.superview, next: { $0?.superview }) {
            if let responder = view?.next {
                if responder.isKind(of: UIViewController.self) {
                    return responder as? UIViewController
                }
            }
        }
        return nil
    }
    
    /// 返回该view所在的父view
    func superView<T: UIView>(of: T.Type) -> T? {
        for view in sequence(first: base.superview, next: { $0?.superview }) {
            if let father = view as? T {
                return father
            }
        }
        return nil
    }
    
    /// 删除所有的子视图
    @discardableResult
    func removeAllSubviews() -> SFExStyle {
        while base.subviews.count > 0 {
            base.subviews.last?.removeFromSuperview()
        }
        return self
    }
    
    /// 添加点击事件
    @discardableResult
    func addTarget(_ target: Any?, action: Selector?) -> SFExStyle {
        base.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: target, action: action)
        base.addGestureRecognizer(tap)
        return self
    }
    
    @discardableResult
    func addTapAction(handler: ((_ view: UIView?) -> Void)?) -> SFExStyle {
        base.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer.init(target: base) { tap in
            handler?(tap.view)
        }
        base.addGestureRecognizer(tap)
        return self
    }
    
    #if canImport(RxSwift) && canImport(RxCocoa)
    var tap: ControlEvent<UITapGestureRecognizer> {
        base.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer()
        base.addGestureRecognizer(tap)
        return tap.rx.event
    }
    #endif
    
    /// 设置阴影
    @discardableResult
    func makeShadow(_ cornerRadius: CGFloat = 5,
                    color: UIColor? = UIColor(red: 0, green: 0, blue: 0, alpha: 0.21),
                    offset: CGSize = CGSize.zero,
                    opacity: Float = 1) -> SFExStyle
    {
        base.layer.cornerRadius = cornerRadius
        base.layer.shadowColor = color?.cgColor
        base.layer.shadowOffset = offset
        base.layer.shadowOpacity = opacity
        base.layer.shadowRadius = cornerRadius
        return self
    }
    
    /// 设置颜色渐变
    @discardableResult
    func makeGradient(_ colors: [CGColor], locations: [NSNumber], startPoint: CGPoint, endPoint: CGPoint) -> SFExStyle {
        let bgLayer = CAGradientLayer()
        bgLayer.colors = colors
        bgLayer.locations = locations
        bgLayer.frame = base.bounds
        bgLayer.startPoint = startPoint
        bgLayer.endPoint = endPoint
//        base.layer.addSublayer(bgLayer)
        if let first = base.layer.sublayers?.first,
           first.isKind(of: CAGradientLayer.classForCoder()) {
            base.layer.replaceSublayer(first, with: bgLayer)
        } else {
            base.layer.insertSublayer(bgLayer, at: 0)
        }
        return self
    }
    
    /// 设置某几个位置的圆角
    @discardableResult
    func makeCornerRadius(corners: UIRectCorner, radius: CGFloat) -> SFExStyle {
        let cornerSize = CGSize(width: radius, height: radius)
        let maskPath = UIBezierPath(roundedRect: base.bounds, byRoundingCorners: corners, cornerRadii: cornerSize)
        let maskLayer = CAShapeLayer()
        maskLayer.frame = base.bounds
        maskLayer.path = maskPath.cgPath
        base.layer.addSublayer(maskLayer)
        base.layer.mask = maskLayer
        return self
    }
    
    /// 设置统一圆角
    @discardableResult
    func makeRadius(_ radius: CGFloat) -> SFExStyle {
        base.layer.cornerRadius = radius
        base.layer.masksToBounds = radius > 0
        return self
    }
    
    /// 显示右上角小红点
    @discardableResult
    func showBadgePoint() -> SFExStyle {
        let badge = UIView(frame: CGRect(x: base.frame.size.width - 8, y: 0, width: 8, height: 8))
        badge.backgroundColor = UIColor.sf.hexColor(hex: "#FF3030")
        badge.layer.cornerRadius = 4.0
        badge.layer.masksToBounds = true
        badge.tag = 1023
        base.addSubview(badge)
        return self
    }
    
    /// 隐藏右上角小红点
    @discardableResult
    func hiddenBadgePoint() -> SFExStyle {
        if let badge = base.viewWithTag(1023) {
            badge.removeFromSuperview()
        }
        return self
    }
    
    /// 截图
    func screenShot() -> UIImage? {
        guard base.frame.size.height > 0 && base.frame.size.width > 0 else {
            return nil
        }
        UIGraphicsBeginImageContextWithOptions(base.frame.size, false, 0)
        base.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    /// 画带圆角的边框 - 并不会切圆角
    /// - Parameters:
    ///   - fillColor: 填充色
    ///   - strokeColor: 描边色
    ///   - lineWith: 线宽
    ///   - lineLength: 虚线单位长度
    ///   - lineSpacing: 虚线单位间距
    ///   - side: 要画线的边
    ///   - topLeft: 左上圆角
    ///   - topRight: 右上圆角
    ///   - bottomLeft: 左下圆角
    ///   - bottomRight: 右下圆角
    ///   - isDash: true虚线 false实线
    @discardableResult
    func drawLineWithRadius(fillColor: UIColor,
                            strokeColor: UIColor,
                            lineWith: CGFloat = 1,
                            lineLength: Int = 10,
                            lineSpacing: Int = 5,
                            rectSide: UIRectSide,
                            topLeft: CGFloat = 0.0,
                            topRight: CGFloat = 0.0,
                            bottomLeft: CGFloat = 0.0,
                            bottomRight: CGFloat = 0.0,
                            isDash: Bool = false) -> SFExStyle
    {
        let shapeLayer = CAShapeLayer()
        shapeLayer.bounds = base.bounds
        shapeLayer.anchorPoint = CGPoint(x: 0, y: 0)
        shapeLayer.fillColor = fillColor.cgColor
        shapeLayer.strokeColor = strokeColor.cgColor
        shapeLayer.lineWidth = lineWith
        shapeLayer.lineJoin = kCALineJoinRound
        // 每一段虚线长度和每两段虚线之间的间隔
        if isDash {
            shapeLayer.lineDashPattern = [NSNumber(value: lineLength), NSNumber(value: lineSpacing)]
        }
        
        let minX = CGRectGetMinX(base.bounds)
        let minY = CGRectGetMinY(base.bounds)
        let maxX = CGRectGetMaxX(base.bounds)
        let maxY = CGRectGetMaxY(base.bounds)
        
        let path = CGMutablePath()
        if rectSide.contains(.left) {
            path.move(to: CGPointMake(minX, maxY - bottomLeft))
            path.addLine(to: CGPointMake(minX, topLeft))
            path.addQuadCurve(to: CGPointMake(topLeft, minY), control: CGPointMake(minX, minY))
        }
        if rectSide.contains(.top) {
            path.move(to: CGPointMake(topLeft, minY))
            path.addLine(to: CGPointMake(maxX - topRight, minY))
            path.addQuadCurve(to: CGPointMake(maxX, topRight), control: CGPointMake(maxX, minY))
        }
        if rectSide.contains(.right) {
            path.move(to: CGPointMake(maxX, topRight))
            path.addLine(to: CGPointMake(maxX, maxY - bottomRight))
            path.addQuadCurve(to: CGPointMake(maxX - bottomRight, maxY), control: CGPointMake(maxX, maxY))
        }
        if rectSide.contains(.bottom) {
            path.move(to: CGPointMake(maxX - bottomRight, maxY))
            path.addLine(to: CGPointMake(bottomLeft, maxY))
            path.addQuadCurve(to: CGPointMake(minX, maxY - bottomLeft), control: CGPointMake(minX, maxY))
        }
        
        shapeLayer.path = path
        base.layer.addSublayer(shapeLayer)
        return self
    }
    
    /// 字符串标识
    static var reuseIdentifier: String {
        return String(describing: Base.self)
    }
    
    /// 摇动视图
    ///
    /// - Parameters:
    ///   - direction: 摇动方向（水平或垂直），（默认为 .horizontal）
    ///   - duration: 以秒为单位的动画持续时间（默认为 1 秒）。
    ///   - animationType: 摇动动画类型（默认为 .easeOut）。
    ///   - completion: 在动画完成时运行的可选完成处理程序（默认值为 nil）。
    @discardableResult
    func shake(direction: ShakeDirection = .horizontal, duration: TimeInterval = 0.6, animationType: ShakeAnimationType = .easeOut, completion: (() -> Void)? = nil) -> SFExStyle? {
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
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        case .easeIn:
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        case .easeOut:
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        case .easeInOut:
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        }
        CATransaction.setCompletionBlock(completion)
        animation.duration = duration
        animation.values = [-15.0, 12.0, -8.0, 8.0, -3.0, 3.0, 0.0]
        base.layer.add(animation, forKey: "shake")
        CATransaction.commit()
        return self
    }
}

//MARK: -  get/set
public extension SFExStyle where Base: UIView {
    var size: CGSize {
        get {
            return base.frame.size
        }
        set {
            base.frame.size.width = newValue.width
            base.frame.size.height = newValue.height
        }
    }
    
    var width: CGFloat {
        get {
            return base.frame.size.width
        }
        set {
            base.frame.size.width = newValue
        }
    }
    
    var height: CGFloat {
        get {
            return base.frame.size.height
        }
        set {
            base.frame.size.height = newValue
        }
    }
    
    var x: CGFloat {
        get {
            return base.frame.origin.x
        }
        set {
            var tempFrame: CGRect = base.frame
            tempFrame.origin.x = newValue
            base.frame = tempFrame
        }
    }
    
    var y: CGFloat {
        get {
            return base.frame.origin.y
        }
        set {
            var tempFrame: CGRect = base.frame
            tempFrame.origin.y = newValue
            base.frame = tempFrame
        }
    }
    
    var centerX: CGFloat {
        get {
            return base.center.x
        }
        set {
            var tempCenter: CGPoint = base.center
            tempCenter.x = newValue
            base.center = tempCenter
        }
    }
    
    var centerY: CGFloat {
        get {
            return base.center.y
        }
        set {
            var tempCenter: CGPoint = base.center
            tempCenter.y = newValue
            base.center = tempCenter
        }
    }
    
    var origin: CGPoint {
        get {
            return base.frame.origin
        }
        set {
            var tempFrame: CGRect = base.frame
            tempFrame.origin = newValue
            base.frame = tempFrame
        }
    }
    
    var left: CGFloat {
        get {
            return base.frame.origin.x
        }
        set {
            var tempFrame: CGRect = base.frame
            tempFrame.origin.x = newValue
            base.frame = tempFrame
        }
    }
    
    var right: CGFloat {
        get {
            return base.frame.origin.x + base.frame.size.width
        }
        set {
            var tempFrame: CGRect = base.frame
            tempFrame.origin.x = newValue - tempFrame.size.width
            base.frame = tempFrame
        }
    }
    
    var top: CGFloat {
        get {
            return base.frame.origin.y
        }
        set {
            var tempFrame: CGRect = base.frame
            tempFrame.origin.y = newValue
            base.frame = tempFrame
        }
    }
    
    var bottom: CGFloat {
        get {
            return base.frame.origin.y + base.frame.size.height
        }
        set {
            var tempFrame: CGRect = base.frame
            tempFrame.origin.y = newValue - base.frame.size.height
            base.frame = tempFrame
        }
    }
}

//MARK: - 扩展UITapGestureRecognizer，添加回调
public extension UITapGestureRecognizer {
    
    convenience init(target: Any?, handler: ((_ tap: UITapGestureRecognizer) -> Void)?) {
        self.init(target: nil, action: nil)
        self.addTarget(self, action: #selector(didTaped))
        self.sf_tapHandler = handler
    }
    
    @objc private func didTaped() {
        self.sf_tapHandler?(self)
    }
    
    class SFTapGesBlock {
        var closure: ((_ tap: UITapGestureRecognizer) -> Void)?
        
        init(_ closure: ((_: UITapGestureRecognizer) -> Void)?) {
            self.closure = closure
        }
    }
    
    private static let tapHandlerKey = UnsafeRawPointer(bitPattern: "tapHandlerKey".hashValue)!
    
    private var sf_tapHandler: ((_ tap: UITapGestureRecognizer) -> ())? {
        get {
            var obj = objc_getAssociatedObject(self, Self.tapHandlerKey) as? SFTapGesBlock
            if obj == nil {
                obj = SFTapGesBlock(nil)
                objc_setAssociatedObject(self, Self.tapHandlerKey, obj, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
            return obj!.closure
        }
        
        set {
            objc_setAssociatedObject(self, Self.tapHandlerKey, SFTapGesBlock(newValue), .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}
