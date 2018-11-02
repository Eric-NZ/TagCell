//
//  DemoViewController.swift
//  TagCell_Example
//
//  Created by Eric Ho on 3/11/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class DemoViewController: UITableViewController {
    let mockPlaceHolder = ["Tap Me", "Hello Tag", "Tap to see what happens"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockPlaceHolder.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "democell") {
            
            return cell
        } else {
            return UITableViewCell(style: .default, reuseIdentifier: "democell")
        }
    }

}
