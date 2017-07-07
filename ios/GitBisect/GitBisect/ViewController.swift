//
//  ViewController.swift
//  GitBisect
//
//  Created by Alex on 07/07/2017.
//  Copyright © 2017 AutoScout24 GmbH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let fruits = ["Banana", "Apple", "Grapes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Foo")
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Foo", for: indexPath)
        let fruit = fruits[indexPath.row]
        cell.textLabel?.text = "\(fruit)"
        return cell
    }

}
