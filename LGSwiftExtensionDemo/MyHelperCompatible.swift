//
//  MyHelperCompatible.swift
//  LGSwiftExtensionDemo
//
//  Created by liangang zhan on 2024/4/14.
//

import Foundation

public protocol MyHelperCompatible {
    associatedtype someType
    var my: someType { get }
}

public extension MyHelperCompatible {
    var my: MyHelper<Self> {
        get {
            let a = MyHelper(self)
            print("aaa = \(a)")
            return a }
    }
}

public struct MyHelper<Base> {
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

