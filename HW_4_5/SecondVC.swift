//
//  SecondVC.swift
//  HW_4_5
//
//  Created by Katherine on 17/10/2019.
//  Copyright © 2019 Katherine123. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        view.backgroundColor = UIColor(red: 0.93, green: 0.98, blue: 0.89, alpha: 1.0)
        
        let label2 = UILabel(frame: CGRect(x: 70, y: 100, width: 200, height: 50))
        label2.text = "Вторая страница"
        label2.font = UIFont.boldSystemFont(ofSize: 18)
        
        
        view.addSubview(label2)
        
        let button2 : UIButton = {
            let button = UIButton(frame: CGRect(x: 250, y: 250, width: 250, height: 250));
            button.center = view.center
            button.layer.cornerRadius = 125
            button.setTitleColor(UIColor(red: 0.4, green: 0.24, blue: 0.7, alpha: 1.0), for: .normal)  
            button.backgroundColor = .yellow
            button.setTitle("Tap!", for: .normal)
            button.addTarget(self, action: #selector(tapBut), for: .touchDown)
            return button
            
        }()
        view.addSubview(button2)
    }
    

    
    @objc func tapBut () {
        
        navigationController?.pushViewController(ViewController(), animated: true)
    }

    
}
