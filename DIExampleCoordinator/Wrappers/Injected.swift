//
//  Injected.swift
//  DIExampleCoordinator
//
//  Created by Melisa Gülgün on 21.04.2025.
//

import Foundation

@propertyWrapper
struct Injected<T: DefaultConstructorProtocol> {
    private var value: T
    
    var wrappedValue: T { value }
    
    init() {
        let container = DependencyContainer.shared
        
        if !container.isRegistered(T.self) {
            container.register(T.self, instance: T())
        }
        
        self.value = container.resolve(T.self)
    }
}

protocol DefaultConstructorProtocol {
    init()
}
