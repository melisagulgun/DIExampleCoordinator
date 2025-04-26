//
//  AppDependenciesManager.swift
//  DIExampleCoordinator
//
//  Created by Melisa Gülgün on 26.04.2025.
//

import Foundation
import UIKit

class AppDependenciesManager {
    
    init() {
        let container = DependencyContainer.shared
        
        container.register(AlertUtilsProtocol.self, instance: AlertUtils())
        
    }
    
}
