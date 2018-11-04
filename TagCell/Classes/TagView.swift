//
//  TagView.swift
//  Pods-TagCell_Example
//
//  Created by Eric Ho on 3/11/18.
//

import UIKit

public class TagView: UIView {
    private var tages: [UIView] = []
    
    public convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 0).isActive = true
    }
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func addTag(tagName: String) {
        let tag = UIButton(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 110, height: 110)))
        tag.backgroundColor = UIColor.blue
        tag.setTitle(tagName, for: .normal)
        addSubview(tag)
        tag.translatesAutoresizingMaskIntoConstraints = false
        tag.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        tag.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
    }
    
}
