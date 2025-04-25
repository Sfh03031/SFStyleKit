//
//  UIImageView++.swift
//  Pods
//
//  Created by sfh on 2025/4/25.
//

#if canImport(UIKit)

// MARK: load gif
public extension UIImageView {
    
    /// load gift by Data
    func loadGif(data: Data) {
        DispatchQueue.global().async {
            let image = UIImage.gif(data: data)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// load gift by URL
    func loadGif(url: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(url: url)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// load gift by NSDataAsset
    func loadGif(asset: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(asset: asset)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// load gift by image name
    func loadGif(name: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(name: name)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
}

#endif
