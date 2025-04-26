//
//  BackgroundService.swift
//  DIExampleCoordinator
//
//  Created by Melisa Gülgün on 21.04.2025.
//

import Foundation
import UIKit

class BackgroundUtils: BaseService {
    
    required init() { }
    
    func changeBgColor(view: UIView) {
        view.backgroundColor = .systemBlue
    }
    
}

