//
//  ViewController.swift
//  Example
//
//  Created by gwangbeom on 2017. 11. 27..
//  Copyright © 2017년 Interactive-Studio. All rights reserved.
//

import UIKit
 

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: ISPageControl!
    var pageControl1: ISPageControl!
    var btnDone = UIButton()
    let images: [UIImage] = [#imageLiteral(resourceName: "slider1"), #imageLiteral(resourceName: "slider2"), #imageLiteral(resourceName: "slider3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        pageControl.numberOfPages = images.count
        
        let frame = CGRect(x: 0, y: self.view.frame.size.height - 200, width: UIScreen.main.bounds.width, height: 100)
        pageControl1 = ISPageControl(frame: frame, numberOfPages: images.count)
        pageControl1.radius = 8
        pageControl1.padding = 10
        pageControl1.inactiveTintColor = UIColor.white.withAlphaComponent(0.4)
        pageControl1.currentPageTintColor = UIColor.black
        pageControl1.borderWidth = 1
        pageControl1.borderColor = UIColor.black.withAlphaComponent(0.4)
        //view.addSubview(pageControl1)
        
        btnDone = UIButton.init(frame: CGRect(x:self.view.frame.size.width/2 - 50  , y: self.view.frame.size.height - 130, width: 100, height: 45))
        btnDone.backgroundColor = UIColor.orange
        btnDone.setTitleColor(UIColor.white, for: .normal)
        btnDone.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
        btnDone.setTitle("Done", for: .normal)
        btnDone.setBackgroundImage(#imageLiteral(resourceName: "button_bg"), for: .normal)
        btnDone.setTitleShadowColor(UIColor.black, for: .normal)// = UIColor.black
        btnDone.addTarget(self, action: #selector(btnDoneTapped), for: .touchUpInside)
        btnDone.layer.cornerRadius = 8.0
        btnDone.layer.masksToBounds = true
        view.addSubview(btnDone)
        
        btnDone.isHidden = true
    }
    func btnDoneTapped() {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc : LoginViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController

        self.navigationController?.pushViewController(vc, animated: true)
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCell
        cell.staImageView.image = images[indexPath.item]
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if UIScreen.main.bounds.size.height == 812 {
           return CGSize(width:self.view.frame.size.width + 5, height: 734)
        }else{
          return CGSize(width:self.view.frame.size.width + 5, height: self.view.frame.size.height)
        }
        
        
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
        pageControl1.currentPage = Int(pageNumber)
        
        if pageControl.currentPage == 2{
            btnDone.isHidden = false
        }else{
            btnDone.isHidden = true
        }
    }
}

class ImageCell: UICollectionViewCell {
    
    @IBOutlet weak var staImageView: UIImageView!
}
