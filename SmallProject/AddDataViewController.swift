//
//  AddDataViewController.swift
//  SmallProject
//
//  Created by iFlame on 9/18/17.
//  Copyright © 2017 iflame. All rights reserved.
//

import UIKit

class AddDataViewController: UIViewController
{
    @IBOutlet weak var CityTxt: UITextField!
    @IBOutlet weak var TempratureTxt: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BtnClick(_ sender: Any)
    {
        if CityTxt.text == "" || TempratureTxt.text == ""
        {
            let alert = UIAlertController(title: "City Or Temprature", message: "Please Enter City Or Temprature", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: {
                action in
                alert.dismiss(animated: true, completion: nil)
            })
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            var datastore = Dictionary<String,String>()
            datastore["City"] = CityTxt.text
            datastore["Temprature"] = TempratureTxt.text
            UserDefaults.standard.set(datastore, forKey: "ABC")
            
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
