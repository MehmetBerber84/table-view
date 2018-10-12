//
//  ViewController.swift
//  table-view
//
//  Created by Mehmet on 12.10.2018.
//  Copyright © 2018 Mehmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arabalar = ["Bmv","Mercedes","Ford", "Skoda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //TableView Methodları
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arabalar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = arabalar[indexPath.row]
        return cell
    }


}

