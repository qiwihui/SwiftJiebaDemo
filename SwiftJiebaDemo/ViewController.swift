//
//  ViewController.swift
//  SwiftJiebaDemo
//
//  Created by Qiwihui on 1/15/19.
//  Copyright © 2019 Qiwihui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var idf = [Double]()
    var vocabulary = [String:Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let classfier = Classifier()
        let words = classfier.tokenize("小明硕士毕业于中国科学院计算所，后在日本京都大学深造")
        print(words)
        // words
        // ["小明", "硕士", "毕业", "于", "中国科学院", "计算所", "，", "后", "在", "日本", "京都大学", "深造"]
    }
}

