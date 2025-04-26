//
//  Inject.swift
//  DIExampleCoordinator
//
//  Created by Melisa Gülgün on 21.04.2025.
//

import Foundation

@propertyWrapper
struct Injected<T> {
    private var value: T
    
    var wrappedValue: T { value }
    
    init() {
        let container = DependencyContainer.shared
        if !container.isRegistered(T.self) {
            guard let type = T.self as? AnyObject.Type else {
                fatalError("Type \(T.self) must be a class with a default initializer")
            }
            let instance = type.init()
            container.register(T.self, instance: instance as! T)
        }
        self.value = container.resolve(T.self)
    }
}
