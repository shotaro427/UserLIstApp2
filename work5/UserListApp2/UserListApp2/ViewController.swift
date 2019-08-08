//
//  ViewController.swift
//  UserListApp2
//
//  Created by 田内　翔太郎 on 2019/08/08.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 遷移元から受け取る値
    // 遷移元から受け取る名前
    var receiveName: String = String()
    // 遷移元から受け取る趣味
    var receiveHobby: String = String()
    
    // 名前を表示させるラベル
    @IBOutlet weak var nameLabel: UILabel!
    // 趣味を表示させるラベル
    @IBOutlet weak var hobbyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ラベルに名前を表示させる
        nameLabel.text = receiveName
        // ラベルに趣味を表示させる
        hobbyLabel.text = receiveHobby
    }


}

