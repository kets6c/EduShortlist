//
//  RoundedView.swift
//  EduShortlist
//
//  Created by apple on 22/06/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class RoundedView: UIView {

    override func layoutSubviews() {
        
        self.layer.cornerRadius = 8.0
        self.layer.masksToBounds = true
        
    }

}
