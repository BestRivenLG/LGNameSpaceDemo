//
//  UIColor+Extension.swift
//  LGSwiftExtensionDemo
//
//  Created by liangang zhan on 2024/4/14.
//

import Foundation
import UIKit

extension UIColor {
    
    @discardableResult
    static func my_image() -> UIImage {
        return UIImage()
    }
    
    @discardableResult
    func my_toImage() -> UIImage {
        return UIImage()
    }
    
}

extension UIColor: MyHelperCompatible { }

extension MyHelper where Base: UIColor {
    
    @discardableResult
    func toImage() -> UIImage {
        return UIImage()
    }
}
