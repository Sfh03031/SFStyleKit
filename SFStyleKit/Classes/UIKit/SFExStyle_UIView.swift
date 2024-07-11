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
        base.bringSubviewToFront(view)
        return self
    }

    @discardableResult
    func sendSubviewToBack(_ view: UIView) -> SFExStyle {
        base.sendSubviewToBack(view)
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

//MARK: - 扩展

public extension SFExStyle where Base: UIView {
    
    /// 字符串标识
    static var reuseIdentifier: String {
        return String(describing: Base.self)
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
    
#if canImport(RxSwift) && canImport(RxCocoa)
    var tap: ControlEvent<UITapGestureRecognizer> {
        base.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer()
        base.addGestureRecognizer(tap)
        return tap.rx.event
    }
#endif
    
    /// 返回该视图所在的父视图
    /// - Parameter of: 父视图Type
    /// - Returns: self
    func superView<T: UIView>(of: T.Type) -> T? {
        for view in sequence(first: base.superview, next: { $0?.superview }) {
            if let father = view as? T {
                return father
            }
        }
        return nil
    }
    
    /// 从xib加载视图
    @discardableResult
    static func loadNib() -> SFExStyle? {
        let moduleName = Base.description().components(separatedBy: ".").first ?? ""
        let bundle = Bundle.sf.moduleBundle(Base.self, moduleName) ?? Bundle.main
        return (bundle.loadNibNamed("\(Base.self)", owner: nil, options: nil)?.first as? Base)?.sf
    }
    
    /// 添加子视图
    /// - Parameter view: 子视图
    /// - Returns: self
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
    
    /// 删除所有的子视图
    @discardableResult
    func removeAllSubviews() -> SFExStyle {
        while base.subviews.count > 0 {
            base.subviews.last?.removeFromSuperview()
        }
        return self
    }
    
    /// 添加点击事件
    /// - Parameters:
    ///   - target: 添加的对象
    ///   - action: 事件
    /// - Returns: self
    @discardableResult
    func addTarget(_ target: Any?, action: Selector?) -> SFExStyle {
        base.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: target, action: action)
        base.addGestureRecognizer(tap)
        return self
    }

    /// 添加点击事件回调
    /// - Parameter handler: 回调
    /// - Returns: self
    @discardableResult
    func addTapAction(handler: ((_ view: UIView?) -> Void)?) -> SFExStyle {
        base.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer.init(target: base) { tap in
            handler?(tap.view)
        }
        base.addGestureRecognizer(tap)
        return self
    }
    
    /// 设置阴影
    /// - Parameters:
    ///   - cornerRadius: 圆角，default = 5.0
    ///   - color: 颜色，default = UIColor(red: 0, green: 0, blue: 0, alpha: 0.21)
    ///   - offset: 偏移量，default = 0
    ///   - opacity: 不透明度，default = 1
    /// - Returns: self
    @discardableResult
    func makeShadow(_ cornerRadius: CGFloat = 5.0,
                    color: UIColor? = UIColor(red: 0, green: 0, blue: 0, alpha: 0.21),
                    offset: CGSize = CGSize.zero,
                    opacity: Float = 1) -> SFExStyle {
        base.layer.cornerRadius = cornerRadius
        base.layer.shadowColor = color?.cgColor
        base.layer.shadowOffset = offset
        base.layer.shadowOpacity = opacity
        base.layer.shadowRadius = cornerRadius
        return self
    }
    
    /// 设置颜色渐变
    /// - Parameters:
    ///   - colors: 颜色组，最少两种
    ///   - locations: 渲染区间范围，必须是递增的，数字区间[0, 1]
    ///   - startPoint: 渲染起点
    ///   - endPoint: 渲染终点
    /// - Returns: self
    @discardableResult
    func makeGradient(_ colors: [CGColor],
                      locations: [NSNumber],
                      startPoint: CGPoint,
                      endPoint: CGPoint) -> SFExStyle {
        let bgLayer = CAGradientLayer()
        bgLayer.colors = colors
        bgLayer.locations = locations
        bgLayer.frame = base.bounds
        bgLayer.startPoint = startPoint
        bgLayer.endPoint = endPoint
        if let first = base.layer.sublayers?.first, first.isKind(of: CAGradientLayer.classForCoder()) {
            base.layer.replaceSublayer(first, with: bgLayer)
        } else {
            base.layer.insertSublayer(bgLayer, at: 0)
        }
        return self
    }
    
    /// 设置某几个位置的圆角
    /// - Parameters:
    ///   - corners: 哪几个角
    ///   - radius: 角度值
    /// - Returns: self
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
    /// - Parameter radius: 角度值
    /// - Returns: self
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
    
    /// 将当前视图转为图片
    func asImage() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = UIScreen.main.scale
        let renderer = UIGraphicsImageRenderer(bounds: base.bounds, format: format)
        return renderer.image { rendererContext in
            base.layer.render(in: rendererContext.cgContext)
        }
    }
}


//MARK: - 扩展，视图摇晃动画

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
    
    /// 摇动视图
    ///
    /// - Parameters:
    ///   - direction: 摇动方向，default = .horizontal
    ///   - duration: 以秒为单位的动画持续时间，default = 0.6
    ///   - animationType: 摇动动画类型，default = .easeOut
    ///   - completion: 在动画完成时的回调，default = nil
    /// - Returns: self
    @discardableResult
    func shake(direction: ShakeDirection = .horizontal, 
               duration: TimeInterval = 0.6,
               animationType: ShakeAnimationType = .easeOut,
               completion: (() -> Void)? = nil) -> SFExStyle? {
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
        CATransaction.setCompletionBlock(completion)
        animation.duration = duration
        animation.values = [-15.0, 12.0, -8.0, 8.0, -3.0, 3.0, 0.0]
        base.layer.add(animation, forKey: "shake")
        CATransaction.commit()
        return self
    }
    
}

//MARK: - 扩展，视图边框

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

public extension SFExStyle where Base: UIView {

    /// 设置border
    /// - Parameters:
    ///   - color: 颜色
    ///   - with: 线宽
    /// - Returns: self
    @discardableResult
    func makeBorder(color: UIColor, with: CGFloat) -> SFExStyle {
        base.layer.borderColor = color.cgColor
        base.layer.borderWidth = with
        return self
    }

    
    /// 画边框，支持画一条或多条、支持带圆角边框、支持虚实线
    /// 需要注意：1.画曲线边框并不会切圆角 2.如果视图切圆角了设置 isSuperClip = true
    /// - Parameters:
    ///   - color: 线色，default = .lightGray
    ///   - with: 线宽，default = 1
    ///   - dashLength: 虚线单位长度，default = 10
    ///   - dashSpacing: 虚线单位间距，default = 5
    ///   - rectSide: 要画线的边，default = .all
    ///   - topLeft: 左上圆角，default = 0
    ///   - topRight: 右上圆角，default = 0
    ///   - bottomLeft: 左下圆角，default = 0
    ///   - bottomRight: 右下圆角，default = 0
    ///   - isSuperClip: 视图是否切圆角了
    ///   - isDash: true虚线 false实线
    /// - Returns: self
    @discardableResult
    func makeCustomizeBorder(color: UIColor = .lightGray,
                             with: CGFloat = 1,
                             dashLength: Int = 10,
                             dashSpacing: Int = 5,
                             rectSide: UIRectSide = .all,
                             topLeft: CGFloat = 0.0,
                             topRight: CGFloat = 0.0,
                             bottomLeft: CGFloat = 0.0,
                             bottomRight: CGFloat = 0.0,
                             isSuperClip: Bool = false,
                             isDash: Bool = false) -> SFExStyle {
        let shapeLayer = CAShapeLayer()
        shapeLayer.bounds = base.bounds
        shapeLayer.anchorPoint = CGPoint(x: 0, y: 0)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = color.cgColor
        shapeLayer.lineWidth = with
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        
        // 每一段虚线长度和每两段虚线之间的间隔
        if isDash {
            shapeLayer.lineDashPattern = [NSNumber(value: dashLength), NSNumber(value: dashSpacing)]
        }
        
        let minX = CGRectGetMinX(base.bounds)
        let minY = CGRectGetMinY(base.bounds)
        let maxX = CGRectGetMaxX(base.bounds)
        let maxY = CGRectGetMaxY(base.bounds)
        
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
        base.layer.addSublayer(shapeLayer)
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
