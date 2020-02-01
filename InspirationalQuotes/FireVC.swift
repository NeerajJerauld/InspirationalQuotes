//
//  FireVC.swift
//  InspirationalQuotes
//
//  Created by macpro on 25/01/2020.
//  Copyright © 2020 groundZero. All rights reserved.
//

import UIKit

class FireVC: UIViewController {
    @IBOutlet weak var fireBGView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstPersonIV: UIImageView!
    @IBOutlet weak var secondPersonIV: UIImageView!
    @IBOutlet weak var secondLikeIV: UIImageView!
    @IBOutlet weak var firstLikeIV: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Changing the color of the view background for testing
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        secondView.isUserInteractionEnabled = false
        firstView.isUserInteractionEnabled = true
    }
    

    @IBAction func panFirstImageView(_ sender: UIPanGestureRecognizer) {
        //print("\(String(describing: sender.view?.tag))")
        let card = sender.view!
        let fingerPoint =  sender.translation(in: fireBGView)
        card.center = CGPoint(x: fireBGView.center.x + fingerPoint.x, y: fireBGView.center.y + fingerPoint.y)
        secondView.alpha = 1
        cardFading(card: card)
        likeAndDislikeShowing(reaction: firstLikeIV, card: card)
        if sender.state == UIGestureRecognizer.State.ended{
        resetingToCenter(card: card)
        }
        
    }
       
    
    @IBAction func panSecondImageView(_ sender: UIPanGestureRecognizer) {
       // print("\(String(describing: sender.view?.tag))")
        let card = sender.view!
        let fingerPoint =  sender.translation(in: fireBGView)
        card.center = CGPoint(x: fireBGView.center.x + fingerPoint.x, y: fireBGView.center.y + fingerPoint.y)
        firstView.alpha = 1
        cardFading(card: card)
        likeAndDislikeShowing(reaction: secondLikeIV, card: card)
        if sender.state == UIGestureRecognizer.State.ended{
        resetingToCenter(card: card)
        }

    }
    
    func likeAndDislikeShowing(reaction : UIImageView, card: UIView){
        let horizontalMovementCard = card.center.x - view.center.x
        if horizontalMovementCard > 0{
            reaction.image = UIImage(named: "likelike")
            reaction.tintColor = UIColor.green
        } else {
            
            reaction.image = UIImage(named: "dislike")
            reaction.tintColor = UIColor.red
            
        }
        reaction.alpha = abs(horizontalMovementCard)/fireBGView.center.x
        
        
    }
    
    func cardFading( card:UIView){
        if card.center.x < 75{
            //move to left side
            UIView.animate(withDuration: 0.2, animations: {
                card.center = CGPoint(x: card.center.x - 200, y: card.center.y-75)
                card.alpha = 0
            })
            viewCenteringAndSubviewToFront(card: card)
            return
        } else if card.center.x > (self.view.frame.width - 75){
            // move to the  right side
            UIView.animate(withDuration: 0.2, animations: {
                card.center = CGPoint(x: card.center.x + 200, y: card.center.y+75)
                card.alpha = 0
            })
            viewCenteringAndSubviewToFront(card: card)
            return
        }
    }

    func viewCenteringAndSubviewToFront(card : UIView){
        card.center = CGPoint(x: self.fireBGView.bounds.width/2, y: self.fireBGView.bounds.height/2)
        if card.tag == 2{
            fireBGView.bringSubviewToFront(firstView)
            secondView.isUserInteractionEnabled = false
            firstView.isUserInteractionEnabled = true
        } else if card.tag == 1{
            fireBGView.bringSubviewToFront(secondView)
            secondView.isUserInteractionEnabled = true
            firstView.isUserInteractionEnabled = false
        }
    }
    
    func resetingToCenter(card: UIView) {
        UIView.animate(withDuration: 0.2, animations: {
            card.center = CGPoint(x: self.fireBGView.bounds.width/2, y: self.fireBGView.bounds.height/2)
            //self.thumbImageView.alpha = 0
        })
        if card.tag == 1{
            firstLikeIV.alpha = 0
        }else {
            secondLikeIV.alpha = 0
        }
        
    }
}
//THe things under first panning view
/*print("SecondViewPanning herer")
 let card = sender.view!
 let fingerPoint =  sender.translation(in: fireBGView)
 let horizontalMovementCard = card.center.x - view.center.x
 card.center = CGPoint(x: fireBGView.center.x + fingerPoint.x, y: fireBGView.center.y + fingerPoint.y)
 if horizontalMovementCard > 0{
 secondLikeImage.image = UIImage(named: "likelike")
 secondLikeImage.tintColor = UIColor.green
 } else {
 secondLikeImage.image = UIImage(named: "dislike")
 secondLikeImage.tintColor = UIColor.red
 
 }
 secondLikeImage.alpha = abs(horizontalMovementCard)/fireBGView.center.x
 if sender.state == UIGestureRecognizer.State.ended{
 
 if card.center.x < 75{
 //move to left side
 UIView.animate(withDuration: 0.2, animations: {
 card.center = CGPoint(x: card.center.x - 200, y: card.center.y+75)
 card.alpha = 0
 })
 
 return
 } else if card.center.x > (self.view.frame.width - 75){
 // move to the  right side
 UIView.animate(withDuration: 0.3, animations: {
 card.center = CGPoint(x: card.center.x + 200, y: card.center.y+75)
 card.alpha = 0
 })
 
 return
 }
 UIView.animate(withDuration: 0.3, animations: {
 card.center = CGPoint(x: self.fireBGView.bounds.width/2, y: self.fireBGView.bounds.height/2)
 self.thumbImageView.alpha = 0
 self.secondLikeImage.alpha = 0
 }
 )*/

//HERe is the first panning view
/* let card = sender.view!
 print("\(card.tag)")
 //        if card.tag == 1{
 //            fireImageView.center = CGPoint(x: self.fireBGView.bounds.width/2, y: self.fireBGView.bounds.height/2)
 //            fireImageView.alpha = 1
 ////            fireBGView.sendSubviewToBack(fireImageView)
 ////            view.addSubview(fireImageView)
 //
 //        }
 //        else if card.tag == 0 {
 ////            print("what the fuck")
 ////            fireBGView.addSubview(fireImageView)
 ////            secondBackgroundView.center = CGPoint(x: self.fireBGView.bounds.width/2, y: self.fireBGView.bounds.height/2)
 ////            secondBackgroundView.alpha = 1
 ////            fireBGView.sendSubviewToBack(secondBackgroundView)
 //
 //
 //        }
 let fingerPoint =  sender.translation(in: fireBGView)
 let horizontalMovementCard = card.center.x - view.center.x
 card.center = CGPoint(x: fireBGView.center.x + fingerPoint.x, y: fireBGView.center.y + fingerPoint.y)
 
 if horizontalMovementCard > 0{
 thumbImageView.image = UIImage(named: "likelike")
 thumbImageView.tintColor = UIColor.green
 } else {
 thumbImageView.image = UIImage(named: "dislike")
 thumbImageView.tintColor = UIColor.red
 }
 thumbImageView.alpha = abs(horizontalMovementCard)/fireBGView.center.x
 
 
 if sender.state == UIGestureRecognizer.State.ended{
 
 if card.center.x < 75{
 //move to left side
 UIView.animate(withDuration: 0.2, animations: {
 card.center = CGPoint(x: card.center.x - 200, y: card.center.y+75)
 card.alpha = 0
 })
 
 return
 }else if card.center.x > (self.view.frame.width - 75){
 // move to the  right side
 UIView.animate(withDuration: 0.3, animations: {
 card.center = CGPoint(x: card.center.x + 200, y: card.center.y+75)
 card.alpha = 0
 })
 
 return
 }
 UIView.animate(withDuration: 0.3, animations: {
 card.center = CGPoint(x: self.fireBGView.bounds.width/2, y: self.fireBGView.bounds.height/2)
 self.thumbImageView.alpha = 0
 }
 )}
 }*/
