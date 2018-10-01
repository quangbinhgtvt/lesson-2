//
//  ViewController.swift
//  lesson 2
//
//  Created by BinhPQ on 10/1/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    
    //Outlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //tạo dữ liệu đăng nhập, mật khẩu
    let database : Dictionary<String, String> = ["username": "phanquangbinh", "password": "1234"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Actions
    
    @IBAction func clickLoginButton(_ sender: Any) {
        //kiem tra du lieu trung khop
        // lay du lieu username
        let username = self.usernameTextField.text
        
        let localUserName = self.database["username"]
        
        // lay dư lieu mat khau
        let password = self.passwordTextField.text
        let localPassWord = self.database["password"]
        // kiem tra
        if (username?.isEmpty)! || (password?.isEmpty)! {
        print("Mat khau hay ten dang nhap con trong")
            return
        }
        else {
            guard username == localUserName else {
                print("ten dang nhập không đung")
                return
            }
            guard password == localPassWord else {
                print("mật khẩu không đúng")
                return
            }
        }
        
        // nếu đúng mật khẩu, tên đăng nhập chuyển sang màn hình chính
        self.performSegue(withIdentifier: "showMain", sender: self)
        
    }
}

