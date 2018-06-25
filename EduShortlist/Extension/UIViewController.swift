//
//  UIViewControllerExtension.swift
//  SlideMenuControllerSwift
//
//  Created by Yuji Hato on 1/19/15.
//  Copyright (c) 2015 Yuji Hato. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setNavigationBarItem() {
       /* self.addLeftBarButtonWithImage(#imageLiteral(resourceName: "leftMenu"))
         self.slideMenuController()?.removeLeftGestures()
        self.slideMenuController()?.removeRightGestures()
        self.slideMenuController()?.addLeftGestures()
        self.slideMenuController()?.addRightGestures()*/
    }
    
    func removeNavigationBarItem() {
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.rightBarButtonItem = nil
       /* self.slideMenuController()?.removeLeftGestures()
        self.slideMenuController()?.removeRightGestures()*/
    }
    
    func addBackButton() {
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(named: "back"), for: .normal) // Image can be downloaded from here below link
        backButton.setTitle("", for: .normal)
        backButton.imageEdgeInsets = UIEdgeInsetsMake(0, -50.0, 0, 0)
        backButton.setTitleColor(backButton.tintColor, for: .normal) // You can change the TitleColor
        backButton.addTarget(self, action: #selector(self.backAction(_:)), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
        
       /* func setBackButton(){
           let yourBackImage =  UIImage(named: "back")?.withRenderingMode(.alwaysOriginal)
           navigationController?.navigationBar.backIndicatorImage = yourBackImage
            navigationController?.navigationBar.backIndicatorTransitionMaskImage = yourBackImage
             self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)

        }*/
        
    
}
