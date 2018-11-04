//
//  TagCell.swift
//  Pods-TagCell_Example
//
//  Created by Eric Ho on 2/11/18.
//

import UIKit

public class TagCell: UITableViewCell {
    
    public var tagView = TagView()
    public var textingView: TextingView!
    public var tagDidAdded: (()->Void)?
    public var tagDidRemoved: (()->Void)?
    
    public init(reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        addTagView()
        addTextingView()
        textingView.textField.delegate = self
    }
    
    convenience override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.init(reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func addTextingView() {
        textingView = TextingView()
        self.contentView.addSubview(textingView)
        textingView.translatesAutoresizingMaskIntoConstraints = false
        textingView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor).isActive = true
        textingView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor).isActive = true
        textingView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor).isActive = true
        textingView.topAnchor.constraint(equalTo: tagView.bottomAnchor).isActive = true
    }
    
    private func addTagView() {
        self.contentView.addSubview(tagView)
        tagView.translatesAutoresizingMaskIntoConstraints = false
        tagView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tagView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tagView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor).isActive = true
    }

}

extension TagCell: UITextFieldDelegate {
    // MARK: - UITextFieldDelegate
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            if !text.isEmpty {
                tagView.addTag(tagName: text)
                textField.text = ""
                
                return true
            }
        } else {
            return false
        }
        return false
    }
}
