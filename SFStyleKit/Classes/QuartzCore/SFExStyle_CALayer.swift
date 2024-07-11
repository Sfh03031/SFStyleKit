//
//  SFExStyle_CALayer.swift
//  SFStyleKit
//
//  Created by sfh on 2024/4/12.
//

import QuartzCore

//MARK: - 系统Api支持

public extension SFExStyle where Base: CALayer {
    
    @discardableResult
    func bounds(_ bounds: CGRect) -> SFExStyle {
        base.bounds = bounds
        return self
    }

    @discardableResult 
    func position(_ position: CGPoint) -> SFExStyle {
        base.position = position
        return self
    }

    @discardableResult 
    func zPosition(_ zPosition: CGFloat) -> SFExStyle {
        base.zPosition = zPosition
        return self
    }

    @discardableResult 
    func anchorPoint(_ anchorPoint: CGPoint) -> SFExStyle {
        base.anchorPoint = anchorPoint
        return self
    }

    @discardableResult 
    func anchorPointZ(_ anchorPointZ: CGFloat) -> SFExStyle {
        base.anchorPointZ = anchorPointZ
        return self
    }

    @discardableResult 
    func transform(_ transform: CATransform3D) -> SFExStyle {
        base.transform = transform
        return self
    }

    @discardableResult 
    func setAffineTransform(_ affineTransform: CGAffineTransform) -> SFExStyle {
        base.setAffineTransform(affineTransform)
        return self
    }

    @discardableResult 
    func frame(_ frame: CGRect) -> SFExStyle {
        base.frame = frame
        return self
    }

    @discardableResult 
    func isHidden(_ isHidden: Bool) -> SFExStyle {
        base.isHidden = isHidden
        return self
    }

    @discardableResult 
    func isDoubleSided(_ isDoubleSided: Bool) -> SFExStyle {
        base.isDoubleSided = isDoubleSided
        return self
    }

    @discardableResult 
    func isGeometryFlipped(_ isGeometryFlipped: Bool) -> SFExStyle {
        base.isGeometryFlipped = isGeometryFlipped
        return self
    }

    @discardableResult 
    func removeFromSuperlayer() -> SFExStyle {
        base.removeFromSuperlayer()
        return self
    }

    @discardableResult 
    func sublayers(_ sublayers: [CALayer]?) -> SFExStyle {
        base.sublayers = sublayers
        return self
    }

    @discardableResult 
    func addSublayer(_ layer: CALayer) -> SFExStyle {
        base.addSublayer(layer)
        return self
    }

    @discardableResult 
    func insertSublayer(_ layer: CALayer, at idx: UInt32) -> SFExStyle {
        base.insertSublayer(layer, at: idx)
        return self
    }

    @discardableResult 
    func insertSublayer(_ layer: CALayer, below sibling: CALayer?) -> SFExStyle {
        base.insertSublayer(layer, below: sibling)
        return self
    }

    @discardableResult 
    func insertSublayer(_ layer: CALayer, above sibling: CALayer?) -> SFExStyle {
        base.insertSublayer(layer, above: sibling)
        return self
    }

    @discardableResult 
    func replaceSublayer(_ oldLayer: CALayer, with newLayer: CALayer) -> SFExStyle {
        base.replaceSublayer(oldLayer, with: newLayer)
        return self
    }

    @discardableResult 
    func sublayerTransform(_ sublayerTransform: CATransform3D) -> SFExStyle {
        base.sublayerTransform = sublayerTransform
        return self
    }

    @discardableResult 
    func mask(_ mask: CALayer?) -> SFExStyle {
        base.mask = mask
        return self
    }

    @discardableResult 
    func masksToBounds(_ masksToBounds: Bool) -> SFExStyle {
        base.masksToBounds = masksToBounds
        return self
    }

    @discardableResult 
    func contents(_ contents: Any?) -> SFExStyle {
        base.contents = contents
        return self
    }

    @discardableResult 
    func contentsRect(_ contentsRect: CGRect) -> SFExStyle {
        base.contentsRect = contentsRect
        return self
    }

    @discardableResult 
    func contentsGravity(_ contentsGravity: CALayerContentsGravity) -> SFExStyle {
        base.contentsGravity = contentsGravity
        return self
    }

    @discardableResult 
    func contentsScale(_ contentsScale: CGFloat) -> SFExStyle {
        base.contentsScale = contentsScale
        return self
    }

    @discardableResult 
    func contentsCenter(_ contentsCenter: CGRect) -> SFExStyle {
        base.contentsCenter = contentsCenter
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult 
    func contentsFormat(_ contentsFormat: CALayerContentsFormat) -> SFExStyle {
        base.contentsFormat = contentsFormat
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult
    func wantsExtendedDynamicRangeContent(_ extended: Bool) -> SFExStyle {
        base.wantsExtendedDynamicRangeContent = extended
        return self
    }

    @discardableResult 
    func minificationFilter(_ minificationFilter: CALayerContentsFilter) -> SFExStyle {
        base.minificationFilter = minificationFilter
        return self
    }

    @discardableResult 
    func magnificationFilter(_ magnificationFilter: CALayerContentsFilter) -> SFExStyle {
        base.magnificationFilter = magnificationFilter
        return self
    }

    @discardableResult 
    func minificationFilterBias(_ minificationFilterBias: Float) -> SFExStyle {
        base.minificationFilterBias = minificationFilterBias
        return self
    }

    @discardableResult 
    func isOpaque(_ isOpaque: Bool) -> SFExStyle {
        base.isOpaque = isOpaque
        return self
    }

    @discardableResult 
    func display() -> SFExStyle {
        base.display()
        return self
    }

    @discardableResult 
    func setNeedsDisplay() -> SFExStyle {
        base.setNeedsDisplay()
        return self
    }

    @discardableResult 
    func setNeedsDisplay(_ r: CGRect) -> SFExStyle {
        base.setNeedsDisplay(r)
        return self
    }

    @discardableResult 
    func displayIfNeeded() -> SFExStyle {
        base.displayIfNeeded()
        return self
    }

    @discardableResult 
    func needsDisplayOnBoundsChange(_ needsDisplayOnBoundsChange: Bool) -> SFExStyle {
        base.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange
        return self
    }

    @discardableResult 
    func drawsAsynchronously(_ drawsAsynchronously: Bool) -> SFExStyle {
        base.drawsAsynchronously = drawsAsynchronously
        return self
    }

    @discardableResult 
    func draw(in ctx: CGContext) -> SFExStyle {
        base.draw(in: ctx)
        return self
    }

    @discardableResult 
    func render(in ctx: CGContext) -> SFExStyle {
        base.render(in: ctx)
        return self
    }

    @discardableResult 
    func edgeAntialiasingMask(_  edgeAntialiasingMask: CAEdgeAntialiasingMask) -> SFExStyle {
        base.edgeAntialiasingMask = edgeAntialiasingMask
        return self
    }

    @discardableResult 
    func allowsEdgeAntialiasing(_ allowsEdgeAntialiasing: Bool) -> SFExStyle {
        base.allowsEdgeAntialiasing = allowsEdgeAntialiasing
        return self
    }

    @discardableResult 
    func backgroundColor(_ backgroundColor: CGColor?) -> SFExStyle {
        base.backgroundColor = backgroundColor
        return self
    }

    @discardableResult 
    func cornerRadius(_ cornerRadius: CGFloat) -> SFExStyle {
        base.cornerRadius = cornerRadius
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult 
    func maskedCorners(_ maskedCorners: CACornerMask) -> SFExStyle {
        base.maskedCorners = maskedCorners
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func cornerCurve(_ curve: CALayerCornerCurve) -> SFExStyle {
        base.cornerCurve = curve
        return self
    }

    @discardableResult 
    func borderWidth(_ borderWidth: CGFloat) -> SFExStyle {
        base.borderWidth = borderWidth
        return self
    }

    @discardableResult 
    func borderColor(_ borderColor: CGColor?) -> SFExStyle {
        base.borderColor = borderColor
        return self
    }

    @discardableResult 
    func opacity(_ opacity: Float) -> SFExStyle {
        base.opacity = opacity
        return self
    }

    @discardableResult 
    func allowsGroupOpacity(_ allowsGroupOpacity: Bool) -> SFExStyle {
        base.allowsGroupOpacity = allowsGroupOpacity
        return self
    }

    @discardableResult 
    func compositingFilter(_ compositingFilter: Any?) -> SFExStyle {
        base.compositingFilter = compositingFilter
        return self
    }

    @discardableResult 
    func filters(_ filters: [Any]?) -> SFExStyle {
        base.filters = filters
        return self
    }

    @discardableResult 
    func backgroundFilters(_ backgroundFilters: [Any]?) -> SFExStyle {
        base.backgroundFilters = backgroundFilters
        return self
    }

    @discardableResult 
    func shouldRasterize(_ shouldRasterize: Bool) -> SFExStyle {
        base.shouldRasterize = shouldRasterize
        return self
    }

    @discardableResult 
    func rasterizationScale(_ rasterizationScale: CGFloat) -> SFExStyle {
        base.rasterizationScale = rasterizationScale
        return self
    }
    
    @discardableResult 
    func shadowColor(_ shadowColor: CGColor) -> SFExStyle {
        base.shadowColor = shadowColor
        return self
    }

    @discardableResult
    func shadowOpacity(_ shadowOpacity: Float) -> SFExStyle {
        base.shadowOpacity = shadowOpacity
        return self
    }

    @discardableResult 
    func shadowOffset(_ shadowOffset: CGSize) -> SFExStyle {
        base.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult 
    func shadowRadius(_ shadowRadius: CGFloat) -> SFExStyle {
        base.shadowRadius = shadowRadius
        return self
    }

    @discardableResult 
    func shadowPath(_ shadowPath: CGPath?) -> SFExStyle {
        base.shadowPath = shadowPath
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
    func layoutSublayers() -> SFExStyle {
        base.layoutSublayers()
        return self
    }

    @discardableResult 
    func actions(_ actions: [String : CAAction]?) -> SFExStyle {
        base.actions = actions
        return self
    }

    @discardableResult 
    func add(_ anim: CAAnimation, forKey key: String?) -> SFExStyle {
        base.add(anim, forKey: key)
        return self
    }

    @discardableResult 
    func removeAllAnimations() -> SFExStyle {
        base.removeAllAnimations()
        return self
    }

    @discardableResult 
    func removeAnimation(forKey key: String) -> SFExStyle {
        base.removeAnimation(forKey: key)
        return self
    }

    @discardableResult 
    func name(_ name: String?) -> SFExStyle {
        base.name = name
        return self
    }

    @discardableResult 
    func delegate(_ delegate: CALayerDelegate?) -> SFExStyle {
        base.delegate = delegate
        return self
    }

    @discardableResult
    func style(_ style: [AnyHashable : Any]?) -> SFExStyle {
        base.style = style
        return self
    }
}
