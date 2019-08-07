//
//  SecondViewController.swift
//  UserList
//
//  Created by 田内　翔太郎 on 2019/08/06.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    /// 遷移元からタグ情報の値を受け取る
    var receiveTag: Int = 0
    
    // 遷移元から名前の情報を受け取る
    var receiveName: String = ""
    
    // 名前を表示するラベル
    @IBOutlet weak var nameLabel: UILabel!
    
    // 趣味を表示するラベル
    @IBOutlet weak var hobbyLabel: UILabel!
    
    // ユーザーリストの情報の辞書
    let hobbyList: [String: String] = [
        "永井 優": "音楽が好き。ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。\n最近の趣味はバイクに乗ることとキックボクシング。",
        "小野 勇輔": "スポーツをすることと釣りが好き\nサッカーと水泳をやっていた。",
        "豊岡 正紘": "バックカントリースキーしてみたい！美味しいものたくさん食べたい！スキューバダイビングしたい！深夜特急読みながら同じところ旅したい！",
        "分目 祐太": "卓球とランニングが好き。\n世界のいろいろな国に行ってみたいです。最近は、フィリピンに行って大好きになった。",
        "金田 祐作": "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしている。\n最近はキックボクシングジムに通い始めたが、細身になりたいので筋トレはあまりしないようにしている。\nライブハウスに音楽を聞きに行くことが好きで、5個上の兄と一緒にライブやフェスに行くことがある。",
        "甲斐崎 香": "あだ名はかおりん。18歳 女\n好きなことは旅行と遊び\n友達と遊ぶことが好き。\nカラオケとかめっちゃいくらしい...",
        "志賀 大河": "バレーボール、サッカー、バスケと運動が全般的に好き。海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたい。あと料理も好き。",
        "津國 由莉子": "あだ名はゆりちゃん。\n22歳女。\n好きなことはピアノと麻雀とバレエ。\n基本的にインドアで引きこもって家でゲームをしていることが多い。\n夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。\n次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです。",
        "中村　泰輔": "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでもいい。\nポンコツという自負を持っている",
        "堀田 真": "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。初めはASIAN KUNG - FU GENERATIONや東京事変などを好みとしていた。大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group や スナーキー・パピーが好き。",
        "田内　翔太郎": "普段は、読書か散歩かアニメを見て過ごしている超インドア。最近は筋トレにもハマりかけている",
        "福沢　貴一": "サッカー好きの脳筋です。\n今の趣味はバイトすること週6でみんな大好きcoffee mafiaで働いてますよ!\nいつでもおいで:mafia:",
        "平田　奈那": "あだなは、はち(本名:なな)で、東京にくるたびにハチ公に挨拶している。\n弾丸ひとり旅など、突然思い立ったことをやるのが好き。\n「東京生活わくわくしています〜」とのこと",
        "吉澤　優衣": "ゲームが大好き。\n特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。\n他にもピアノや海外旅行や読書など様々な趣味がある。"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンのタグを元に表示する情報を分ける
        setInfo(at: receiveTag)
        
    }
    
    // ラベルにそれぞれ名前と趣味を追加する関数
    func setInfo(at infoNum: Int) {
        print("OK")
        // 名前の表示
        nameLabel.text = receiveName // 遷移元からもらった名前
        // 趣味の表示　& 辞書外参照の防止
        if let hobby: String = hobbyList[receiveName] { // 遷移元からもらった名前をキーに趣味を埋める
            hobbyLabel.text = hobby
            print(hobby)
        }
    }

}
