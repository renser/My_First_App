//
//  ViewController.swift
//  MyFirstRegularApp
//
//  Created by Alex Zhu on 14/11/20.
//  Copyright (c) 2014年 Alex Zhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    var slider = UISlider()
    var lableTargetScore = UILabel()
    var lableTotalScore = UILabel()
    var lableRoundNumber = UILabel()
    
    var totalScore = 0
    var thisRoundScore = 0
    var roundNumber = 1
    var targetScore = Int(arc4random_uniform(100)+1)
    var sliderValue = 50
   // var targetScore = arc4random()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background.png")!)
        
        let lableTips = UILabel()
        lableTips.frame = CGRectMake(25, 10, 470, 40)
        lableTips.text = "请将下面的滑动条滑动到与右边目标数值尽可能匹配得地方："
        lableTips.textColor = UIColor.whiteColor()
        lableTips.adjustsFontSizeToFitWidth = true
        lableTips.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        lableTips.shadowOffset = CGSize(width: 0, height: 1)
        
        self.view.addSubview(lableTips)
        
        
        
        let lableTargetScore = UILabel()
        lableTargetScore.frame = CGRectMake(485, 10, 60, 40)
        lableTargetScore.text = String(targetScore)
        lableTargetScore.textColor = UIColor.whiteColor()
        lableTargetScore.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        lableTargetScore.shadowOffset = CGSize(width: 0, height: 1)
        
        self.view.addSubview(lableTargetScore)
        
        
        
        
        
        let lable1 = UILabel()
        lable1.frame = CGRectMake(25, 70, 40, 40)
        lable1.text = "1"
        
        lable1.textColor = UIColor.whiteColor()
        lable1.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        lable1.shadowOffset = CGSize(width: 0, height: 1)


        
        self.view.addSubview(lable1)
        
        
        
        let lable100 = UILabel()
        lable100.frame = CGRectMake(500, 70, 40, 40)
        lable100.text = "100"
        
        lable100.textColor = UIColor.whiteColor()
        lable100.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        lable100.shadowOffset = CGSize(width: 0, height: 1)
        
        self.view.addSubview(lable100)
        
        
        //Create a Slider
        let slider = UISlider()
        slider.frame = CGRectMake(55, 70, 430, 40)
        slider.value = Float(sliderValue)/100
        slider.addTarget(self, action: "sliderValueChanged", forControlEvents: UIControlEvents.ValueChanged)
        
        slider.setThumbImage(UIImage(named: "SliderThumb-Normal"), forState: UIControlState.Normal)
        slider.setThumbImage(UIImage(named: "SliderThumb-Highlighted"), forState: UIControlState.Highlighted)
        
        let trackLeftImage = UIImage(named: "SliderTrackLeft")
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        let trackLeftResizable = trackLeftImage!.resizableImageWithCapInsets(insets)
        
        
        slider.setMinimumTrackImage(trackLeftResizable, forState: UIControlState.Normal)
        
        
        let trackRightImage = UIImage(named: "SliderTrackRight")
      //  let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        let trackRightResizable = trackRightImage!.resizableImageWithCapInsets(insets)
        
        
        slider.setMaximumTrackImage(trackRightResizable, forState: UIControlState.Normal)

        
        
        self.view.addSubview(slider)
        
        
        
        
        let buttonSubmit = UIButton()
        buttonSubmit.frame = CGRectMake(234, 140, 100, 40)
        buttonSubmit.setTitle("提交", forState: UIControlState.Normal)
        //buttonSubmit.backgroundColor = UIColor.blueColor()
        buttonSubmit.setBackgroundImage(UIImage(named: "Button-Normal"), forState: UIControlState.Normal)
        buttonSubmit.setBackgroundImage(UIImage(named: "Button-Highlighted"), forState: UIControlState.Highlighted)
       // buttonSubmit.setTitleColor(UIColor(red: 90, green: 31, blue: 255, alpha: 1.0), forState: UIControlState.Normal)
        buttonSubmit.setTitleColor(UIColor(red: 90/255, green: 31/255, blue: 10/255, alpha: 1), forState: UIControlState.Normal)
        
        buttonSubmit.addTarget(self, action: "tap", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(buttonSubmit)
        
        
        let buttonReStart = UIButton()
        buttonReStart.frame = CGRectMake(60, 190, 40, 40)
        //buttonReStart.setTitle("Restart", forState: UIControlState.Normal)
        //buttonReStart.backgroundColor = UIColor.blueColor()
        
        buttonReStart.setBackgroundImage(UIImage(named: "SmallButton"), forState: UIControlState.Normal)
        buttonReStart.setImage(UIImage(named: "StartOverIcon"), forState: UIControlState.Normal)
        
        buttonReStart.addTarget(self, action: "reStart", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(buttonReStart)
        
        let buttonInfo = UIButton()
        buttonInfo.frame = CGRectMake(465, 190, 40, 40)
        //buttonInfo.setTitle("Info", forState: UIControlState.Normal)
        //buttonInfo.backgroundColor = UIColor.blueColor()
        
        buttonInfo.setBackgroundImage(UIImage(named: "SmallButton"), forState: UIControlState.Normal)
        buttonInfo.setImage(UIImage(named: "InfoButton"), forState: UIControlState.Normal)

        
        buttonInfo.addTarget(self, action: "info", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(buttonInfo)
        
        let lableScoreUI = UILabel()
        lableScoreUI.frame = CGRectMake(160, 190, 60, 40)
        lableScoreUI.text = "总分数"
        
        lableScoreUI.textColor = UIColor.whiteColor()
        lableScoreUI.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        lableScoreUI.shadowOffset = CGSize(width: 0, height: 1)
        
        self.view.addSubview(lableScoreUI)
        
        
        let lableTotalScore = UILabel()
        lableTotalScore.frame = CGRectMake(230, 190, 60, 40)
        lableTotalScore.text = String(totalScore)
        
        lableTotalScore.textColor = UIColor.whiteColor()
        lableTotalScore.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        lableTotalScore.shadowOffset = CGSize(width: 0, height: 1)
        
        self.view.addSubview(lableTotalScore)
        
        
        let lableRoundUI = UILabel()
        lableRoundUI.frame = CGRectMake(320, 190, 100, 40)
        lableRoundUI.text = "第          轮"
        
        lableRoundUI.textColor = UIColor.whiteColor()
        lableRoundUI.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        lableRoundUI.shadowOffset = CGSize(width: 0, height: 1)
        
        self.view.addSubview(lableRoundUI)
        
        
        let lableRoundNumber = UILabel()
        lableRoundNumber.frame = CGRectMake(356, 190, 60, 40)
        lableRoundNumber.text = String(roundNumber)
        
        lableRoundNumber.textColor = UIColor.whiteColor()
        lableRoundNumber.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        lableRoundNumber.shadowOffset = CGSize(width: 0, height: 1)

        
        self.view.addSubview(lableRoundNumber)
        
        self.slider = slider
        self.lableTargetScore = lableTargetScore
        self.lableTotalScore = lableTotalScore
        self.lableRoundNumber = lableRoundNumber
        
        
    }
    
    
    func tap(){
        
        thisRoundScore = 100-2*abs(sliderValue - targetScore)
        
        if thisRoundScore<0{
            thisRoundScore = 0
        }
        
        
        var message = ""
        
        switch thisRoundScore{
        case 100:
            thisRoundScore += 100
            message = "神级表现！！牛逼Sky！！奖励100分！\n"
        case 96...99:
            thisRoundScore += 50
            message = "太棒了，表现出色额外奖励50分！\n"
        case 88...95:
            thisRoundScore += 20
            message = "表现不错，额外奖励20分！\n"
        default:
            message = "表现凑合，需要加油啊！\n"
        }
        
        
        message = message+"你的分数是\(thisRoundScore)分"
        let alert = UIAlertController(title: "匹配结果", message: message, preferredStyle: UIAlertControllerStyle.Alert)
      //  alert.title = "太棒了！"
       // alert.message = message
     //   alert.preferredStyle = UIAlertControllerStyle.Alert
        
        
        let action = UIAlertAction(title: "牛逼", style: UIAlertActionStyle.Default, handler: {action in self.startNewRound()})
        //let action = UIAlertAction(title: <#String#>, style: <#UIAlertActionStyle#>, handler: <#((UIAlertAction!) -> Void)!##(UIAlertAction!) -> Void#>)
     //   action.title = "牛逼"
    //    action.style = UIAlertActionStyle.Default
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
        
        
        
    }
    
    
    func startNewRound(){
        totalScore += thisRoundScore
        roundNumber++
        targetScore = Int(arc4random_uniform(100)+1)
        
        lableTargetScore.text = String(targetScore)
        lableTotalScore.text = String(totalScore)
        lableRoundNumber.text = String(roundNumber)
        
        
        slider.value = 0.5
        
    }
    
    
    func reStart(){
        totalScore = 0
        roundNumber = 1
        targetScore = Int(arc4random_uniform(100)+1)
        
        lableTargetScore.text = String(targetScore)
        lableTotalScore.text = String(totalScore)
        lableRoundNumber.text = String(roundNumber)
        
        
        slider.value = 0.5
        
    }
    
    
    func info(){
        let aboutViewController = AboutViewController()
        aboutViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        self.presentViewController(aboutViewController, animated: true, completion: nil)
        
    }
    
    func sliderValueChanged(){
        //println("\(slider.value)")
        sliderValue = lroundf(slider.value*100)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

