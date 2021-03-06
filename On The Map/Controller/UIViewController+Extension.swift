//
//  UIViewController+Extension.swift
//  On The Map
//
//  Created by Jimit Raval on 23/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import UIKit

extension UIViewController {
    
    
    @IBAction func addLocation(sender: UIBarButtonItem) {
        performSegue(withIdentifier: "addLocation", sender: sender)
    }
    
    func buttonEnabled(_ enabled: Bool, button: UIButton) {
        button.isEnabled = enabled
        button.alpha = enabled ? 1.0 : 0.5
    }
    
    func showAlert(message: String, title: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertVC, animated: true)
    }
    
    func openLink(_ url: String) {
        guard let url = URL(string: url), UIApplication.shared.canOpenURL(url) else {
            showAlert(message: "Cannot open link.", title: "Invalid Link")
            return
        }
        UIApplication.shared.open(url, options: [:])
    }

}

