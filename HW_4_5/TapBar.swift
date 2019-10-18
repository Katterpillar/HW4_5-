//
//  TapBar.swift
//  HW_4_5
//
//  Created by Katherine on 17/10/2019.
//  Copyright © 2019 Katherine123. All rights reserved.
//

import UIKit



class TapBar : UITabBarController {
    
    let Delegate = DelegateClass()
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(true)
     
        
        let firstNC = UINavigationController(rootViewController: ViewController())
        firstNC.tabBarItem = UITabBarItem.init(tabBarSystemItem: .contacts, tag: 1)
        firstNC.delegate = Delegate

        
        let secondNC = UINavigationController(rootViewController: SecondViewController())
        secondNC.tabBarItem = UITabBarItem.init(tabBarSystemItem: .favorites, tag: 2)
        secondNC.delegate = Delegate
        
        
        self.viewControllers = [firstNC, secondNC]
    }
    
}
