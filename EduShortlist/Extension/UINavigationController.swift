//
//  UINavigationController.swift
//  IndianPostInfo
//
//  Created by Rultech Solutions on 26/10/17.
//  Copyright © 2017 RulTech Solutions Private Limited. All rights reserved.
//

import UIKit

extension  UINavigationController
{
    func setNavProperty()  {
         
        self.navigationBar.barTintColor = ColorConstants.NAVIGATION_BAR_TINT
        self.navigationBar.isTranslucent = false
        self.navigationBar.tintColor = ColorConstants.NAVIGATION_TINT
        
    }
}
