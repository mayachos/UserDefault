//
//  UPViewController.swift
//  UserDefault
//
//  Created by maya on 2022/05/29.
//

import UIKit

class UPViewController: UIViewController {
    
    let saveData: UserDefaults = UserDefaults.standard
    
    var hp: Int = 0
    var attack: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // データを読み込む
        hp = saveData.object(forKey: "HP") as! Int
        attack = saveData.object(forKey: "ATTACK") as! Int
        
    }
    
    
    @IBAction func HPup() {
        // HPを上げる
        hp += 10
    }

    @IBAction func AttackUp() {
        // 攻撃力を上げる
        attack += 1
        
    }
    
    @IBAction func save() {
        // 書き込み
        saveData.set(hp, forKey: "HP")
        saveData.set(attack, forKey: "ATTACK")
        
        // アラートを設定する
        let alert: UIAlertController = UIAlertController(title: "保存", message: "保存しました", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                                        // 前の画面に戻る
                                        self.dismiss(animated: true, completion: nil)}))
        
        // アラートを出す
        present(alert, animated: true, completion: nil)
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
