//
//  AlertService.swift
//  MG
//
//  Created by Grisha Pospelov on 03.02.2022.
//

import UIKit

class AlertService {
    func alertOK(_ title: String, _ message: String, _ vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        vc.present(alert, animated: true, completion: nil)
    }
    
    func alertError(_ title: String, _ message: String, _ vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        alert.addAction(action)
        vc.present(alert, animated: true, completion: nil)
    }
}
