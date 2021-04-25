//
//  ViewController.swift
//  A425HelloUIView
//
//  Created by 申潤五 on 2021/4/25.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0.0
    var timer:Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let newView = UIView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        newView.backgroundColor = UIColor.red
        
        self.view.addSubview(newView)
        
        
        
        
    }


}

