//
//  ViewController.swift
//  Thema3
//
//  Created by 佐藤響 on 2021/08/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var plusMinusSwitch1: UISwitch!
    @IBOutlet private weak var plusMinusSwitch2: UISwitch!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var sumLabel: UILabel!
    // ボタンを押した時
    @IBAction func didPressButton(_ sender: Any) {
        // 入力
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        // 表示
        let num3 = plusMinusSwitch1.isOn ? -num1 : num1
        let num4 = plusMinusSwitch2.isOn ? -num2 : num2
        label1.text = String(num3)
        label2.text = String(num4)
        // 計算
        let resultText:String
        resultText = String(num3 + num4)
        sumLabel.text = resultText
    }
}
