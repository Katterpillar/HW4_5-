//
//  ViewController.swift
//  HW_4_5
//
//  Created by Katherine on 17/10/2019.
//  Copyright © 2019 Katherine123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.96, green: 0.92, blue: 0.96, alpha: 1.0)
        
        
        let label3 = UILabel(frame: CGRect(x: 70, y: 200, width: 200, height: 50))
        label3.text = "Первая страница"
        label3.font = UIFont.boldSystemFont(ofSize: 12)
        view.addSubview(label3)
        
        let buttonVC : UIButton = {
            
       let buttonVC = UIButton(frame: CGRect(x: 50, y: 100, width: 100, height: 50))
        buttonVC.backgroundColor = .purple
        buttonVC.setTitle("ЖМЯК!", for:  UIControl.State.normal)
        buttonVC.center = view.center
            
        buttonVC.addTarget(self, action: #selector(tapButVC), for: .touchDown)
        return buttonVC
    }()
         view.addSubview(buttonVC)

        
}
@objc func tapButVC () {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
}

