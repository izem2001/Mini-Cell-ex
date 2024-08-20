//
//  ViewController.swift
//  Test
//
//  Created by İzem Özer on 26.07.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    let myData = ["first","second","third","four","five"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell",
                                                
                                                 for: indexPath) as! DemoTableViewCell
        cell.myLabel.text = myData[indexPath.row]
        cell.imageView?.backgroundColor = .red
        cell.textLabel?.text = myData[indexPath.row]
        return cell
    }


}

