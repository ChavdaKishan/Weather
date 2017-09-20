//
//  SignINViewController.swift
//  SmallProject
//
//  Created by iFlame on 9/18/17.
//  Copyright © 2017 iflame. All rights reserved.
//

import UIKit

class SignINViewController: UIViewController
{
    @IBOutlet weak var UsernameTxt: UITextField!
    @IBOutlet weak var PasswordTxt: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        UsernameTxt.attributedPlaceholder = NSAttributedString(string: "User Name :", attributes: [NSForegroundColorAttributeName: UIColor.yellow])
        PasswordTxt.attributedPlaceholder = NSAttributedString(string: "Password :", attributes: [NSForegroundColorAttributeName: UIColor.yellow])
    }
    
    @IBAction func LoginClick(_ sender: Any)
    {
        let usernameStore = UserDefaults.standard.string(forKey: "username")
        let passwordStore = UserDefaults.standard.string(forKey: "password")
        
        if usernameStore == UsernameTxt.text || passwordStore == PasswordTxt.text
        {
            UserDefaults.standard.set(true, forKey: "is UserLoggedIn")
            UserDefaults.standard.synchronize()
            
            navigationController?.popViewController(animated: true)
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
