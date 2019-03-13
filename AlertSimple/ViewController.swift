//
//  ViewController.swift
//  AlertSimple
//
//  Created by Admin on 13/3/2562 BE.
//  Copyright © 2562 Admin. All rights reserved.
//

import UIKit
import SimpleAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func simple(_ sender: Any) {
        let alert = AlertController(title: "Title", message: "Message", style: .alert)
        
        alert.addTextField()
        alert.addAction(AlertAction(title: "Cancel", style: .cancel))
        alert.addAction(AlertAction(title: "OK", style: .ok))
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func AlertBtn(_ sender: Any) {
        let alert = AlertController(view: UIView(), style: .alert)
        alert.contentWidth = 144
        alert.contentCornerRadius = 72
        alert.contentColor = .white
        let action = AlertAction(title: "?", style: .cancel) { action in
        }
        
        alert.addAction(action)
        action.button.frame.size.height = 144
        action.button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 96)
        action.button.setTitleColor(UIColor.red, for: .normal)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
}

