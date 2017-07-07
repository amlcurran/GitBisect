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
    let fruits = [
        Fruit(name: "Banana", price: 30, color: "Yellow", weight: nil),
        Fruit(name: "Apple", price: 10, color: "Green", weight: nil),
        Fruit(name: "Apple", price: 13, color: "Red", weight: nil),
        Fruit(name: "Watermelon", price: 130, color: "Green", weight: nil)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(BasicCell.self, forCellReuseIdentifier: "Foo")
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
        cell.textLabel?.text = "\(fruit.name)"
        return cell
    }

}

class BasicCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
