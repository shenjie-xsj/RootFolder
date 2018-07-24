//
//  LoginViewController.swift
//  Std1_Music
//
//  Created by EU_ShenJie on 2018/7/10.
//  Copyright © 2018年 EU_ShenJie. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setView() {
        loginButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2*3)
        signUpButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2*3)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
