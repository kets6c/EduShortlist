//
//  LoginViewController.swift
//  EduShortlist
//
//  Created by apple on 21/06/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class LoginViewController: BaseTableViewController {

    @IBOutlet weak var bgView: RoundedView!
    @IBOutlet weak var txtUsername: RTTextFeild!
    @IBOutlet weak var txtPassword: RTTextFeild!
    @IBOutlet weak var btnForgotPw: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.backgroundView = UIImageView(image:#imageLiteral(resourceName: "bg"))
         self.navigationController?.setNavProperty()
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func btnForgotPwTapped(_ sender: UIButton) {
       /* let selectedLanguage:Languages = sender.tag == 1 ? .en : .zhHans
        
        // change the language
        LanguageManger.shared.setLanguage(language: selectedLanguage)
        
        // return to root view contoller and reload it
        UIApplication.topViewController!.dismiss(animated: true) {
            let delegate = UIApplication.shared.delegate as! AppDelegate
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            delegate.window?.rootViewController = storyboard.instantiateInitialViewController()
        }*/
    }
    
    @IBAction func btnRegisterTapped(_ sender: UIButton) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc : RegisterSelectionViewController = storyBoard.instantiateViewController(withIdentifier: "RegisterSelectionViewController") as! RegisterSelectionViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnLoginTapped(_ sender: UIButton) {
        self.view.endEditing(true)
        guard !(txtUsername.text?.isEmpty)! else {
            self.showSnackBar(message:NSLocalizedString("UsernameMessage", comment: ""))
            return
        }
        
        guard appDelegate.validateEmail(enteredEmail: txtUsername.text!) else {
            self.showSnackBar(message: NSLocalizedString("EmailValidation", comment: ""))
             return
        }
        
        guard !(txtPassword.text?.isEmpty)! else {
            self.showSnackBar(message:NSLocalizedString("PasswordValidation", comment: ""))
            return
        }
        
        // web API Call
    }
    
    /* // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
