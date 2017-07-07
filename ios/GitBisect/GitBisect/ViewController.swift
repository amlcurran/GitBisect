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
    static let fruits = [
        Fruit(name: "Banana", price: 30, color: "Yellow", weight: nil),
        Fruit(name: "Apple", price: 10, color: "Green", weight: nil),
        Fruit(name: "Apple", price: 13, color: "Red", weight: nil),
        Fruit(name: "Watermelon", price: 130, color: "Green", weight: nil)
    ]
    let dataSource = FruitDataSource(fruits: ViewController.fruits)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(BasicCell.self, forCellReuseIdentifier: "Foo")
        tableView.dataSource = dataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
