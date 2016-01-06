//
//  CollectCell.swift
//  SwiftProject
//
//  Created by warren on 16/1/5.
//  Copyright © 2016年 warren. All rights reserved.
//

import UIKit

class CollectCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.greenColor()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
