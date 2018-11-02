//
//  ViewController.swift
//  TagCell
//
//  Created by eric.iosfan@gmail.com on 11/02/2018.
//  Copyright (c) 2018 eric.iosfan@gmail.com. All rights reserved.
//

import UIKit
import TagCell

class ViewController: UIViewController {
    let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: .plain)
    let mockPlaceHolder = ["Tap Me", "Hello Tag", "Tap to see what happens"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set view background
        view.backgroundColor = UIColor.white
        // add tableview to view
        view.addSubview(tableView)
        // auto layout
        autoLayout()
        // register cell reusable identifier
        tableView.register(TagCell.self, forCellReuseIdentifier: "TagViewCell")
        // set data source
        tableView.dataSource = self
        // auto row height
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func autoLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: tableView, attribute: .leading, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: tableView, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: tableView, attribute: .right, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .right, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: tableView, attribute: .bottom, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
    }

}

extension ViewController: UITableViewDataSource {
    // MARK: - Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockPlaceHolder.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TagViewCell") as? TagCell {
            cell.textField.placeholder = mockPlaceHolder[indexPath.row]
            return cell
        } else {
            return TagCell(reuseIdentifier: "TagViewCell")
        }
    }
}
