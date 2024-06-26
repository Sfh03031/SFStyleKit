//
//  SFExStyle_UIImageView.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

public extension SFExStyle where Base: UIImageView {
    
    @discardableResult
    func image(_ image: UIImage?) -> SFExStyle {
        base.image = image
        return self
    }
    
    @discardableResult
    func contentMode(_ mode: UIView.ContentMode) -> SFExStyle {
        base.contentMode = mode
        return self
    }
    
    @discardableResult
    func highlightedImage(_ highlightedImage: UIImage?) -> SFExStyle {
        base.highlightedImage = highlightedImage
        return self
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> SFExStyle {
        base.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> SFExStyle {
        base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func animationImages(_ animationImages: [UIImage]?) -> SFExStyle {
        base.animationImages = animationImages
        return self
    }
    
    @discardableResult
    func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> SFExStyle {
        base.highlightedAnimationImages = highlightedAnimationImages
        return self
    }
    
    @discardableResult
    func animationDuration(_ animationDuration: TimeInterval) -> SFExStyle {
        base.animationDuration = animationDuration
        return self
    }
    
    @discardableResult
    func animationRepeatCount(_ animationRepeatCount: Int) -> SFExStyle {
        base.animationRepeatCount = animationRepeatCount
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor!) -> SFExStyle {
        base.tintColor = tintColor
        return self
    }
    
#if canImport(JXPhotoBrowser) && canImport(Kingfisher)
    @discardableResult
    func browseEnable(_ a: Bool) -> SFExStyle {
        base.sf_browseEnable = a
        return self
    }
    
    @discardableResult
    func show() -> SFExStyle {
        base.sf_show()
        return self
    }
#endif
}

//MARK: - 扩展

public extension UIImageView {
    
    /// 通过Data加载gif
    func loadGif(data: Data) {
        DispatchQueue.global().async {
            let image = UIImage.gif(data: data)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// 通过URL加载gif
    func loadGif(url: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(url: url)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// 通过NSDataAsset加载gif
    func loadGif(asset: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(asset: asset)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// 通过name加载gif
    func loadGif(name: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(name: name)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}

#if canImport(JXPhotoBrowser) && canImport(Kingfisher)
public extension UIImageView {
    private static let browseEnableKey = UnsafeRawPointer(bitPattern:"browseEnableKey".hashValue)!
    private static let browseTapKey = UnsafeRawPointer(bitPattern:"browseTapKey".hashValue)!

    var sf_browseEnable: Bool {
        get {
            return objc_getAssociatedObject(self, UIImageView.browseEnableKey) as? Bool ?? false
        }
        set {
            objc_setAssociatedObject(self, UIImageView.browseEnableKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if newValue {
                isUserInteractionEnabled = true
                let tap = browseTap ?? UITapGestureRecognizer(target: self, action: #selector(sf_show))
                addGestureRecognizer(tap)
                browseTap = tap
            } else if let tap = browseTap {
                removeGestureRecognizer(tap)
            }
        }
    }
    
    private var browseTap: UITapGestureRecognizer? {
        get {
            return objc_getAssociatedObject(self, UIImageView.browseTapKey) as? UITapGestureRecognizer
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, UIImageView.browseTapKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    @IBInspectable
    var browse: Bool {
        set {
            sf_browseEnable = newValue
        }
        get {
            return sf_browseEnable
        }
    }
    
    @objc fileprivate func sf_show() {
        if let image = image {
            SFImageBrower.browser([image], transView: { [weak self] _ in
                self
            }).show()
        }
    }
}

public class SFImageBrower {
    
    public static func browser(_ images: [String], index: Int = 0, isSave: Bool = true, transView: ((Int) -> UIView?)? = nil) -> JXPhotoBrowser {
        let browser = JXPhotoBrowser()
        browser.numberOfItems = { images.count }
        browser.cellClassAtIndex = { _ in
            LoadingImageCell.self
        }
        browser.reloadCellAtIndex = { context in
            let browserCell = context.cell as? LoadingImageCell
            browserCell?.reloadData(placeholder: nil, urlString: images[context.index])
            if isSave {
                browserCell?.longPressedAction = { cell, _ in
                    save(cell)
                }
            }
        }
        browser.pageIndex = index
        if let transView = transView {
            browser.transitionAnimator = JXPhotoBrowserZoomAnimator(previousView: transView)
        }
        return browser
    }
    
    public static func browser(_ images: [UIImage], index: Int = 0, isSave: Bool = true, transView: ((Int) -> UIView?)? = nil) -> JXPhotoBrowser {
        let browser = JXPhotoBrowser()
        browser.numberOfItems = { images.count }
        browser.reloadCellAtIndex = { context in
            let browserCell = context.cell as? JXPhotoBrowserImageCell
            browserCell?.imageView.image = images[context.index]
            if isSave {
                browserCell?.longPressedAction = { cell, _ in
                    save(cell)
                }
            }
        }
        browser.pageIndex = index
        if let transView = transView {
            browser.transitionAnimator = JXPhotoBrowserZoomAnimator(previousView: transView)
        }
        return browser
    }
    
    private static func save(_ cell: JXPhotoBrowserImageCell) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "保存", style: .default, handler: { _ in
            cell.imageView.image?.sl.save2PhotoAlbum()
        }))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        cell.photoBrowser?.present(alert, animated: true, completion: nil)
    }
}


/// 加上进度环的Cell
class LoadingImageCell: JXPhotoBrowserImageCell {
    /// 进度环
    let progressView = JXPhotoBrowserProgressView()
    
    override func setup() {
        super.setup()
        addSubview(progressView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        progressView.center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
    }
    
    func reloadData(placeholder: UIImage?, urlString: String?) {
        progressView.progress = 0
        let url = urlString.flatMap { URL(string: $0) }
        imageView.kf.setImage(with: url, placeholder: placeholder, options: nil) { [weak self] (received, total) in
            if total > 0 {
                self?.progressView.progress = CGFloat(received) / CGFloat(total)
            }
        } completionHandler: { [weak self] (result) in
            switch result {
            case .success:
                self?.progressView.progress = 1.0
            case .failure:
                self?.progressView.progress = 0
            }
            self?.setNeedsLayout()
        }
    }
}

/// 加载进度环
open class JXPhotoBrowserProgressView: UIView {
    
    /// 进度
    open var progress: CGFloat = 0 {
        didSet {
            DispatchQueue.main.async {
                self.fanshapedLayer.path = self.makeProgressPath(self.progress).cgPath
                if self.progress >= 1.0 || self.progress < 0.01 {
                    self.isHidden = true
                } else {
                    self.isHidden = false
                }
            }
        }
    }
    
    /// 外边界
    private var circleLayer: CAShapeLayer!
    
    /// 扇形区
    private var fanshapedLayer: CAShapeLayer!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        if self.frame.size.equalTo(.zero) {
            self.frame.size = CGSize(width: 50, height: 50)
        }
        setupUI()
        progress = 0
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = UIColor.clear
        let strokeColor = UIColor(white: 1, alpha: 0.8).cgColor
        
        circleLayer = CAShapeLayer()
        circleLayer.strokeColor = strokeColor
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.path = makeCirclePath().cgPath
        layer.addSublayer(circleLayer)
        
        fanshapedLayer = CAShapeLayer()
        fanshapedLayer.fillColor = strokeColor
        layer.addSublayer(fanshapedLayer)
    }
    
    private func makeCirclePath() -> UIBezierPath {
        let arcCenter = CGPoint(x: bounds.midX, y: bounds.midY)
        let path = UIBezierPath(arcCenter: arcCenter, radius: 25, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        path.lineWidth = 2
        return path
    }
    
    private func makeProgressPath(_ progress: CGFloat) -> UIBezierPath {
        let center = CGPoint(x: bounds.midX, y: bounds.midY)
        let radius = bounds.midY - 2.5
        let path = UIBezierPath()
        path.move(to: center)
        path.addLine(to: CGPoint(x: bounds.midX, y: center.y - radius))
        path.addArc(withCenter: center, radius: radius, startAngle: -CGFloat.pi / 2, endAngle: -CGFloat.pi / 2 + CGFloat.pi * 2 * progress, clockwise: true)
        path.close()
        path.lineWidth = 1
        return path
    }
}
#endif
