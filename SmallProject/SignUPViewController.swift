//
//  SignUPViewController.swift
//  SmallProject
//
//  Created by iFlame on 9/18/17.
//  Copyright © 2017 iflame. All rights reserved.
//

import UIKit

class SignUPViewController: UIViewController
{
    @IBOutlet weak var FullnameTxt: UITextField!
    @IBOutlet weak var UsernameTxt: UITextField!
    @IBOutlet weak var PasswordTxt: UITextField!
    @IBOutlet weak var ConfirmPasswordTxt: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        FullnameTxt.attributedPlaceholder = NSAttributedString(string: "Full Name :", attributes: [NSForegroundColorAttributeName: UIColor.yellow])
        UsernameTxt.attributedPlaceholder = NSAttributedString(string: "User Name :", attributes: [NSForegroundColorAttributeName: UIColor.yellow])
        PasswordTxt.attributedPlaceholder = NSAttributedString(string: "Password :", attributes: [NSForegroundColorAttributeName: UIColor.yellow])
        ConfirmPasswordTxt.attributedPlaceholder = NSAttributedString(string: "Confirm Password :", attributes: [NSForegroundColorAttributeName: UIColor.yellow])
    }
    
    @IBAction func SignUpClick(_ sender: Any)
    {
        if UsernameTxt.text == "" || PasswordTxt.text == "" || ConfirmPasswordTxt.text == ""
        {
            AlertMessage(usermessage: "Please Enter All Field ")
        }
        
        if PasswordTxt.text != ConfirmPasswordTxt.text
        {
            AlertMessage(usermessage: "Please Enter Password OR Confirm Password Must Be Equal ")
        }
        
        UserDefaults.standard.set(UsernameTxt.text, forKey: "username")
        UserDefaults.standard.set(PasswordTxt.text, forKey: "password")
        UserDefaults.standard.synchronize()
        
        let alert = UIAlertController(title: "Alert", message: "Register Is Successfull", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.navigationController?.popViewController(animated: true)
        })
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func AlertMessage(usermessage: String)
    {
        let alert = UIAlertController(title: "Alert", message: usermessage, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
}
