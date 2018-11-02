//
//  TagCell.swift
//  Pods-TagCell_Example
//
//  Created by Eric Ho on 2/11/18.
//

import UIKit

public class TagCell: UITableViewCell {
    public var textField: TextField!
    public var tagView: TagView!
    
    public init(reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        // textField
        textField = TextField()
        self.contentView.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        let topPin = NSLayoutConstraint(item: textField, attribute: .top, relatedBy: .equal, toItem: self.contentView.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0)
        topPin.identifier = "textFieldTopPin"
        let trailingPin = NSLayoutConstraint(item: textField, attribute: .trailing, relatedBy: .equal, toItem: self.contentView.safeAreaLayoutGuide, attribute: .trailing, multiplier: 1, constant: 24)
        trailingPin.identifier = "textFieldTrailingPin"
        let bottomPin = NSLayoutConstraint(item: textField, attribute: .bottom, relatedBy: .equal, toItem: self.contentView.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
        bottomPin.identifier = "textFieldBottomPin"
        let leadingPin = NSLayoutConstraint(item: textField, attribute: .leading, relatedBy: .equal, toItem: self.contentView.safeAreaLayoutGuide, attribute: .leading, multiplier: 1, constant: 24)
        leadingPin.identifier = "textFieldLeadingPin"
        // height constraint
        textField.heightAnchor.constraint(equalToConstant: 96).isActive = true
        // set text field delegate
        textField.delegate = self
        
        // tagView
        
    }
    
    convenience override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.init(reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func switchHeight(editing: Bool) {
    }
}

extension TagCell: UITextFieldDelegate {
    // MARK: - UITextFieldDelegate
    public func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
    }
}
