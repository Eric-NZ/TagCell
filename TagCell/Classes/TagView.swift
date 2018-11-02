//
//  TagView.swift
//  Pods-TagCell_Example
//
//  Created by Eric Ho on 3/11/18.
//

import UIKit

public class TagView: UIView {
    
    public convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
