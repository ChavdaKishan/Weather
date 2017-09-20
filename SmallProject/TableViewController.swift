//
//  TableViewController.swift
//  SmallProject
//
//  Created by iFlame on 9/18/17.
//  Copyright © 2017 iflame. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    
    @IBOutlet weak var TableView: UITableView!
    
    var arr1 = ["Botad"]
    var arr2 = ["35"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool)
    {
        var dataget = UserDefaults.standard.value(forKey: "ABC") as! Dictionary<String,String>
        arr1.append(dataget["City"]!)
        arr2.append(dataget["Temprature"]!)
        TableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "") as! MyCell
        cell.Lbl1.text = arr1[indexPath.row]
        cell.Lbl2.text = arr2[indexPath.row]
        self.TableView.backgroundColor = .clear
        cell.backgroundColor = .clear
        return cell
    }
    
    @IBAction func AddClick(_ sender: Any)
    {
        let next = storyboard?.instantiateViewController(withIdentifier: "AddData") as! AddDataViewController
        self.navigationController?.pushViewController(next, animated: true)
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
