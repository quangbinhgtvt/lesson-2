//
//  MainViewController.swift
//  lesson 2
//
//  Created by BinhPQ on 10/1/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //outlets
    
    @IBOutlet weak var wordTextField: UITextField!
    // tạo dữ liệu tra cứu
    
    let dict: Dictionary<String, String> = ["dog": "chó", "cat": "mèo", "camel": "lạc đà", "Eypt": "Ai Cập"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //action
    
    @IBAction func clickSearchButton(_ sender: Any) {
        // lấy dữ liệu từ text Field
        let wordsearch:String = wordTextField.text!
        if (wordsearch.isEmpty)
        {
            print("hãy nhập từ cần tra cứu")

        }

        else
        {
                for key in dict.keys {
                    if (wordsearch == key)
                    {
                        print ("nghĩa của từ tra cứu là:\(String(describing: dict[key]))")
                        return
                    }
                }
                print("không có từ cần tra cứu, từ điển lởm")
        }
       
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
