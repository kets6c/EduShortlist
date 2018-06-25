//
//  LaunchScreenController.swift
//  TeamVerify
//
//  Created by Rultech Solutions on 06/04/18.
//  Copyright © 2018 Rultech Solutions. All rights reserved.
//

import UIKit
import SwiftyGif
class LaunchScreenController: UIViewController {

    @IBOutlet weak var imgVSplash: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let gif = UIImage(gifName: "launch3time.gif")
         imgVSplash = UIImageView(gifImage: gif, loopCount: 1) // Use -1 for infinite loop
        
        if UIScreen.main.bounds.size.height == 812 {
            imgVSplash.frame = CGRect(x: 0, y: 44, width: UIScreen.main.bounds.width, height: 734)
        }else{
            imgVSplash.frame = view.frame
        }
        
        imgVSplash.contentMode = .scaleToFill
        self.view.addSubview(imgVSplash)
        
        /************************ Load GIF image Using Name ********************/
      
        _ = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.gotoHomeScreen), userInfo: nil, repeats: false)

        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @objc func gotoHomeScreen() {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc : ViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: false)
       // self.present(vc, animated: true, completion: nil)
    }
    

}
