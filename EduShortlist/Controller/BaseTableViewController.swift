//
//  BaseTableViewController.swift
//  TeamVerify
//
//  Created by Rultech Solutions on 06/04/18.
//  Copyright © 2018 Rultech Solutions. All rights reserved.
//

import UIKit
import TTGSnackbar
class BaseTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UINavigationBar.appearance().isTranslucent = false
       /* let imageView = UIImageView(image:#imageLiteral(resourceName: "navigation_logo"))
        imageView.contentMode = .center
        self.navigationItem.titleView = imageView
        
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for:.default)*/
    }
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     }

    public func showSnackBar(message : String){
        
        let snackbar = TTGSnackbar(message: message, duration: .middle)
        snackbar.messageTextColor = UIColor.white
        snackbar.backgroundColor = UIColor.gray
        snackbar.animationType = .slideFromBottomToTop
                if UIScreen.main.bounds.height == 812 {
                    snackbar.topMargin = 35
                }
        snackbar.show()
    }

}
