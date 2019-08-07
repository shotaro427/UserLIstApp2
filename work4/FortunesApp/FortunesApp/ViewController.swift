//
//  ViewController.swift
//  FortunesApp
//
//  Created by 田内　翔太郎 on 2019/08/07.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 「年/月/日」を取得するDatePicker
    @IBOutlet weak var datePicker: UIDatePicker!
    // 血液型を取得
    @IBOutlet weak var bloodType: UISegmentedControl!
    // sliderを取得
    @IBOutlet weak var favoriteNum: UISlider!
    // sliderの値を表示させるラベル
    @IBOutlet weak var printSliderValue: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func moveSlider(_ sender: UISlider) {
        // ラベルにスライダーの値を表示させる
        printSliderValue.text = String(Int(ceil(sender.value))) // 1~100で表示させる
    }
    
}

