//
//  MyHelperCompatible.swift
//  LGSwiftExtensionDemo
//
//  Created by liangang zhan on 2024/4/14.
//

import Foundation

public protocol MyHelperCompatible {
    associatedtype someType
    static var my: someType.Type { get }
    var my: someType { get }
}

public extension MyHelperCompatible {
    static var my: MyHelper<Self>.Type {
        get {
            MyHelper<Self>.self
        }
    }
    
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

