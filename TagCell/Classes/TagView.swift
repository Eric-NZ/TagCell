//
//  TagView.swift
//  Pods-TagCell_Example
//
//  Created by Eric Ho on 3/11/18.
//

import UIKit

public class TagView: UIView {
    private var tags: [Tag] = []
    
    var tagViewHeightConstraint: NSLayoutConstraint?
    
    public convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        backgroundColor = UIColor.yellow
        
        tagViewHeightConstraint = heightAnchor.constraint(equalToConstant: 0)
        tagViewHeightConstraint?.identifier = "tagViewHeightConstraint"
        self.translatesAutoresizingMaskIntoConstraints = false
        tagViewHeightConstraint?.constant += 80
        tagViewHeightConstraint?.isActive = true
//        let vHugging = self.contentHuggingPriority(for: .vertical)
//        self.setContentHuggingPriority(vHugging - 5, for: .vertical)
    }
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func addTag(tagName: String) {
        let tag = Tag(title: tagName)
        tag.tag = self.tags.count
        tags.append(tag)
        
        setNeedsLayout()
    }

    public override func layoutSubviews() {
        for subView in self.subviews {
            subView.removeFromSuperview()
        }
        
        var frontNeighbour: Tag?
        for tag in tags {
            addSubview(tag)
            tag.translatesAutoresizingMaskIntoConstraints = false
            if tag.tag == 0 {                  // the first tag
                tag.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            }
            if tag.tag == tags.count - 1 {      // the last tag
                tag.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            }
            // normal case
            tag.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            if let front = frontNeighbour {
                tag.topAnchor.constraint(equalTo: front.bottomAnchor).isActive = true
            }
            frontNeighbour = tag
        }
    }
}
