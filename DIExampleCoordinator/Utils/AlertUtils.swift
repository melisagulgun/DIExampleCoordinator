//
//  AlertUtils.swift
//  DIExampleCoordinator
//
//  Created by Melisa Gülgün on 26.04.2025.
//

import Foundation
import UIKit

protocol AlertUtilsProtocol {
    func showBasicAlert(title: String, message: String)
}

class AlertUtils: AlertUtilsProtocol {
    required init() { }
    
    func showBasicAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in }
        alertController.addAction(okAction)
        if let window = UIApplication.shared.connectedScenes.compactMap({ ($0 as? UIWindowScene)?.keyWindow }).last {
            window.rootViewController?.present(alertController, animated: true)
        }
            
            
    }
}
