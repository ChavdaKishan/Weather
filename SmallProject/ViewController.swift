//
//  ViewController.swift
//  SmallProject
//
//  Created by iFlame on 9/15/17.
//  Copyright © 2017 iflame. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func SignUpClick(_ sender: Any)
    {
        let register = storyboard?.instantiateViewController(withIdentifier: "SignUP") as! SignUPViewController
        self.navigationController?.pushViewController(register, animated: true)
    }
    
    @IBAction func LoginClick(_ sender: Any)
    {
        let login = storyboard?.instantiateViewController(withIdentifier: "SignIN") as! SignINViewController
        self.navigationController?.pushViewController(login, animated: true)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
