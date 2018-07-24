//
//  ViewController.swift
//  Std1_Music
//
//  Created by EU_ShenJie on 2018/7/10.
//  Copyright © 2018年 EU_ShenJie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    private func setView() {
        //默认会还原初始值，手动设置到结束
        signUpButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2*3)
        logInButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2*3)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

