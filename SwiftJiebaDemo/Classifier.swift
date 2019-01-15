//
//  Classifier.swift
//  SwiftJiebaDemo
//
//  Created by Qiwihui on 1/15/19.
//  Copyright © 2019 Qiwihui. All rights reserved.
//

import Foundation
import CoreML

class Classifier {
    
    init() {
        let dictPath = Bundle.main.resourcePath!+"/iosjieba.bundle/dict/jieba.dict.small.utf8"
        let hmmPath = Bundle.main.resourcePath!+"/iosjieba.bundle/dict/hmm_model.utf8"
        let userDictPath = Bundle.main.resourcePath!+"/iosjieba.bundle/dict/user.dict.utf8"
        
        JiebaWrapper().objcJiebaInit(dictPath, forPath: hmmPath, forDictPath: userDictPath);
    }
    
    func tokenize(_ message:String) -> [String] {
        print("tokenize...")
        let words = NSMutableArray()
        JiebaWrapper().objcJiebaCut(message, toWords: words)
        return words as! [String]
    }
}
