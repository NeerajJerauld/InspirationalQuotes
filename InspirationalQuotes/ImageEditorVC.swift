//
//  ImageEditorVC.swift
//  InspirationalQuotes
//
//  Created by macpro on 27/01/2020.
//  Copyright © 2020 groundZero. All rights reserved.
//

import UIKit

class ImageEditorVC: UIViewController {

    @IBOutlet weak var screenView: UIView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var bgImage: UIImageView!
    var quoteIE = ""
    var authorIE = ""
    @IBOutlet weak var quoteTextView: UITextView!
    
    @IBOutlet weak var myQuoteView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        quoteTextView.isEditable = false
        quoteTextView.text = quoteIE
        authorLabel.text = authorIE
        
    }
    override func viewDidLayoutSubviews() {
        UIGraphicsBeginImageContextWithOptions(screenView.bounds.size, true, UIScreen.main.scale)
        screenView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
    }
    
    @IBAction func moveTextPanAction(_ sender: UIPanGestureRecognizer) {
        let moveTextView = sender.view!
        let fingerPoint = sender.translation(in: screenView)
        if screenView.bounds.contains(moveTextView.bounds){
            UIView.animate(withDuration: 0.3, animations: {
                moveTextView.center = CGPoint(x: self.screenView.center.x + fingerPoint.x, y: self.screenView.center.y+fingerPoint.y)
                moveTextView.superview?.clipsToBounds = true
                
            })}
        
        
        
        
        
        
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


