//
//  DependencyContainer.swift
//  DIExampleCoordinator
//
//  Created by Melisa Gülgün on 21.04.2025.
//

import Foundation
class DependencyContainer {
    
    static let shared = DependencyContainer()
    
    private var registry = [String: () -> Any]()

    func register<T>(_ type: T.Type, instance: T) {
        let key = String(describing: type)
        registry[key] = { instance }
    }
    
    func resolve<T>(_ type: T.Type) -> T {
        let key = String(describing: type)
        guard let factory = registry[key] else {
            fatalError("No registered entry for \(T.self)")
        }
        return factory() as! T
    }
    
    func isRegistered<T>(_ type: T.Type) -> Bool {
          return registry["\(type)"] != nil
      }
}
