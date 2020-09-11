//
//  ViewController.swift
//  ShoRyuKenApp
//
//  Created by 天野修一 on 2020/09/08.
//  Copyright © 2020 shuichiama.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//      ①まず画像を格納する配列を空で作る
    var imageArray : Array<UIImage> = []
    
//  イメージと紐付け
    @IBOutlet var ImageView: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()        
//      ②繰り返し文で、①で作った空の配列imageArrayに、appendで画像(UIimage)を追加するループを記述
//       条件は、定数attackImage定める値が、"attak数字"という名を持つUIImage画像
//       繰り返し処理は、配列immageArrayに定数に定めた画像を格納する
        while let attackImage = UIImage(named: "attak\(imageArray.count+1)") {
        imageArray.append(attackImage)
        }
    }



    
    
//    ボタンと紐付け
    @IBAction func button(_ sender: Any) {
        
        //      アニメーションの適用コマンド
                ImageView.animationImages = imageArray
                
        //      アニメーション間隔、総時間設定コマンド(単位はsecond)
                ImageView.animationDuration = 3
                
        //      アニメーション繰り返し回数コマンド(自動で戻るのでself~はいらない)
                ImageView.animationRepeatCount = 1
                
        //      アニメーションを開始
                ImageView.startAnimating()
    }
    
    
    
    
    
}

