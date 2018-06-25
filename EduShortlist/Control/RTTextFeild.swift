//
//  RTButton.swift
//  TravelNurseHousing
//
//  Created by Mitul Nakum on 01/02/18.
//  Copyright © 2018 Trimantra Software Solution LLP. All rights reserved.
//

import UIKit
//import Material

class RTTextFeild:UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //borderStyle = UITextBorderStyle.roundedRect
//        backgroundColor =  ColorConstants.TEXT_FIELD_BACKGROUND
//        layer.cornerRadius = ViewConstants.TEXTFIELD_CORNER_RADIUS
//        layer.borderWidth = 1.0
//        layer.borderColor = ColorConstants.TEXTFIELD_BORDER.cgColor
//        textColor = ColorConstants.TEXTFIELD_TEXT
        font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightRegular)
        
         let frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1.0)
        let underLineV = UIView.init(frame: frame)
        underLineV.backgroundColor = UIColor.black
        self.addSubview(underLineV)
       // self.autocapitalizationType = UITextAutocapitalizationType.words
        self.autocorrectionType = .no
        
     }

    @IBInspectable var padding: CGFloat = 0
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
}
