//
//  ViewController.swift
//  UserList
//
//  Created by 田内　翔太郎 on 2019/08/06.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// 遷移先に渡すタグの値
    var giveTag: Int = 0
    
    /// 遷移先に渡す名前
    var giveName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    // ユーザーリストのボタンを押した時の処理
    @IBAction func showDetails(_ sender: UIButton) {
        
        /// 押されたボタンを格納
        let button: UIButton = sender
        
        // 押されたボタンのタグ情報を格納
        giveTag = button.tag
        
        // 押されたボタンのタイトルを格納
        giveName = button.currentTitle!
        
        // 画面遷移を行う
        performSegue(withIdentifier: "showDetails", sender: nil)
        
    }
    
    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueの行き先が正しいかどうかと行き先が存在するかを確認している
        guard segue.identifier == "showDetails", let vc = segue.destination as? SecondViewController else {
            return
        }
        // 値の受け渡し
        vc.receiveTag = giveTag
        vc.receiveName = giveName
    }
    

}

