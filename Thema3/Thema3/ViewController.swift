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
        let signedNum1 = plusMinusSwitch1.isOn ? -num1 : num1
        let signedNum2 = plusMinusSwitch2.isOn ? -num2 : num2
        label1.text = String(signedNum1)
        label2.text = String(signedNum2)
        // 計算
        sumLabel.text = String(signedNum1 + signedNum2)
    }
}
