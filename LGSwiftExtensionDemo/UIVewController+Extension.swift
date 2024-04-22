//
//  UIVewController+Extension.swift
//  LGSwiftExtensionDemo
//
//  Created by Cb on 2024/4/22.
//

import UIKit

extension UIViewController: MyHelperCompatible {}

extension MyHelper where Base: UIViewController {
    
    @discardableResult
    func toImage() -> UIImage {
        UIImage()
    }
    
    static var descript: String {
        String(describing: Self.self)
    }
}
