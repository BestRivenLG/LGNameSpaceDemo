//
//  MyWrappable.swift
//  LGSwiftExtensionDemo
//
//  Created by liangang zhan on 2024/4/15.
//

import Foundation
import UIKit

public protocol MyWrappable {
    associatedtype WrappableType
    var my: WrappableType { get }
}

public extension MyWrappable {
    var my: MyWrap<Self> {
        get { MyWrap(self) }
    }
}

public struct MyWrap<Base> {
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

extension UIViewController: MyWrappable {}

extension MyWrap where Base: UIViewController {
    
    @discardableResult
    func toImage() -> UIImage {
        UIImage()
    }
    
}
