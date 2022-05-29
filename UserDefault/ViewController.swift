//
//  ViewController.swift
//  UserDefault
//
//  Created by maya on 2022/05/29.
//

import UIKit

class ViewController: UIViewController {
    
    var hp = 0
    var attack = 0
    
    @IBOutlet var hpLabel: UILabel!
    @IBOutlet var attackLabel: UILabel!
    
    let saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // saveDataの中に何も入ってなかったら
        if saveData.object(forKey: "HP") == nil || saveData.object(forKey: "ATTACK") == nil{
            // 書き込み
            saveData.set(hp, forKey: "HP")
            saveData.set(attack, forKey: "ATTACK")
            
        } else { // saveDataの中に値が入っていたら
        // データを読み込む
        hp = saveData.object(forKey: "HP") as! Int
        attack = saveData.object(forKey: "ATTACK") as! Int
        }
        // 表示
        hpLabel.text = String(hp)
        attackLabel.text = String(attack)
    }
    
    @IBAction func update() {
        // データを読み込む
        hp = saveData.object(forKey: "HP") as! Int
        attack = saveData.object(forKey: "ATTACK") as! Int
        // 表示
        hpLabel.text = String(hp)
        attackLabel.text = String(attack)
    }


}

