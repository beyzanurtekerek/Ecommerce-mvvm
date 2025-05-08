//
//  PopupShowable.swift
//  Ecommerce-mvvm
//
//  Created by Beyza Nur Tekerek on 8.05.2025.
//

import UIKit

protocol PopupShowable where Self: UIViewController {
    func showPopup(title: String, message: String)
}

extension PopupShowable {
    func showPopup(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default Action"), style: .default, handler: { _ in
            NSLog("The \"ok\" alert occured")
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
