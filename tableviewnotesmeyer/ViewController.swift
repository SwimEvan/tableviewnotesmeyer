//
//  ViewController.swift
//  tableviewnotesmeyer
//
//  Created by EVAN MEYER on 10/8/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var textfield: UITextField!
    
    
    var cart = ["Apple","banana","kiwi" ]
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        cell.textLabel?.text = cart[indexPath.row]
        cell.detailTextLabel?.text = "hi"
               return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(cart[indexPath.row])
    }
    
    @IBAction func goAction(_ sender: UIButton) {
        var blah = textfield.text!
        cart.append(blah)
        tableViewOutlet.reloadData()
    }
    
}

