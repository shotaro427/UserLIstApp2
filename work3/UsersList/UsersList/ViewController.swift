//
//  ViewController.swift
//  UsersList
//
//  Created by 田内　翔太郎 on 2019/08/08.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// 遷移先画面に渡す情報（ボタンに書かれている名前）
    var giveName: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// ユーザーリストのボタンを押した時の処理
    @IBAction func pushButton(_ sender: UIButton) {
        
        // ユーザーリスト画面で押されたボタンに書かれている名前を取得
        giveName = sender.currentTitle!
        
        // Segue Identifierが"showDetails"のSegueを通って画面遷移
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    /// Segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueのidentifierが"showDetails"かどうかの確認＋segueの画面遷移先がSecondViewController型かのViewControllerかどうかの確認
        guard segue.identifier == "showDetails", let nextVC = segue.destination as? SecondViewController else {
            return
        }
        // 遷移先の変数に、渡したい値(ここではボタンに書かれている名前)を代入
        nextVC.receiveName = giveName
    }
    


}

