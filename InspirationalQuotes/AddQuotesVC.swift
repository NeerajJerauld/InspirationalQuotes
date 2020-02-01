//
//  AddQuotesVC.swift
//  InspirationalQuotes
//
//  Created by macpro on 25/01/2020.
//  Copyright © 2020 groundZero. All rights reserved.
//

import UIKit

class AddQuotesVC: UIViewController, UITextViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var quoteEditorTestView: UITextView!
    var quote = ""
    var author = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        authorTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        if quoteEditorTestView.text == "What's your quote?"{
        quoteEditorTestView.text = ""
        }
        quoteEditorTestView.backgroundColor = UIColor.lightGray
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        quoteEditorTestView.backgroundColor = UIColor.white
    }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let charCount = (quoteEditorTestView.text as NSString).replacingCharacters(in: range, with: text)
        return charCount.count < 150
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField == authorTextField){
            let strlength = textField.text?.count ?? 0
            let lengthToAdd = string.count
            let charCount = strlength + lengthToAdd
            if charCount < 20{
                return true
            }
        }
        return false
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "quotePassingSegue"
        {
            if let destinationVC = segue.destination as? ImageEditorVC {
                destinationVC.authorIE = authorTextField.text ?? ""
                destinationVC.quoteIE = quoteEditorTestView.text
            }
        }
    }
    //    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in (touches) {
//          quoteEditorTestView.isEditable = false
//          let location = touch.location(in: self.view)
//            if quoteEditorTestView.frame.contains(location){
//                quoteEditorTestView.center = location
//            }
//        }
//    }
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in (touches) {
//        let location = touch.location(in: self.view)
//        if quoteEditorTestView.frame.contains(location){
//            quoteEditorTestView.center = location
//        }
//        }
//    }
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        quoteEditorTestView.center = self.view.center
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
