//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 白川創大 on 2023/05/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "今日"]
    let dokoArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let dareArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokoLabel.text = dokoArray[index]
        dareLabel.text = dareArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 3{
            index = 0
        } else{
            index = index + 1
        }
        
    }
        
    
    @IBAction func reset(){
        
        itsuLabel.text = "____"
        dokoLabel.text = "____"
        dareLabel.text = "____"
        doshitaLabel.text = "____"
        
        index = 0
        
    }
    
    @IBAction func rundom(){
        
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let dareIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこ: \(dokoIndex)")
        print("だれ: \(dareIndex)")
        print("どうした: \(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        dareLabel.text = dareArray[dareIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
 
    }


}

