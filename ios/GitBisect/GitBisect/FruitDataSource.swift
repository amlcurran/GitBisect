//
//  FruitDataSource.swift
//  GitBisect
//
//  Created by Alex on 07/07/2017.
//  Copyright © 2017 AutoScout24 GmbH. All rights reserved.
//

import UIKit

class FruitDataSource: NSObject, UITableViewDataSource {

    private var fruits: [Fruit]

    init(fruits: [Fruit]) {
        self.fruits = fruits
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Foo", for: indexPath)
        let fruit = fruits[indexPath.row]
        cell.textLabel?.text = "\(fruit.name)"
        return cell
    }

    func update(with newFruits: [Fruit]) {
        self.fruits += newFruits
    }

}
