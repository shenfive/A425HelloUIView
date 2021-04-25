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
        newView.center = self.view.center
        newView.transform = CGAffineTransform(rotationAngle: 0)
        
        newView.clipsToBounds = true
        newView.layer.cornerRadius = 15
        
        
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (timer) in
            self.rotate(theView: newView)
        })
        self.view.addSubview(newView)
        
    }

    func rotate(theView:UIView){
        let angle =  counter * Double.pi / 180
        theView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        counter += 1
        
        
        
    }

}

