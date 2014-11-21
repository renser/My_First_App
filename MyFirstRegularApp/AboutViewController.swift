//
//  AboutViewController.swift
//  MyFirstRegularApp
//
//  Created by Alex Zhu on 14/11/20.
//  Copyright (c) 2014年 Alex Zhu. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.view.backgroundColor = UIColor.whiteColor()
        var webView = UIWebView()
        webView.frame = CGRectMake(10, 10, 550, 250)
        webView.backgroundColor = UIColor.brownColor()
        
        
        self.view.addSubview(webView)
        
        
        
        let backButton = UIButton()
        backButton.frame = CGRectMake(234, 270, 100, 40)
        backButton.setTitle("关闭", forState: UIControlState.Normal)
        //backButton.backgroundColor = UIColor.blueColor()
        backButton.setBackgroundImage(UIImage(named: "Button-Normal"), forState: UIControlState.Normal)
        backButton.setBackgroundImage(UIImage(named: "Button-Highlighted"), forState: UIControlState.Highlighted)
        backButton.setTitleColor(UIColor(red: 90/255, green: 31/255, blue: 10/255, alpha: 1), forState: UIControlState.Normal)
        
        backButton.addTarget(self, action: "back", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(backButton)
        
        
//        
//        if let htmlFile = NSBundle.mainBundle().pathForResource("BullsEye", ofType: "html"){
//            
//            let htmlData = NSData(contentsOfFile: htmlFile)
//            let baseURL = NSURL.fileURLWithPath(NSBundle.mainBundle().bundlePath)
//            
//            webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
        
        //let url = NSURL.fileURLWithPath("http://www.apple.com.cn")
        
        
       let url = NSURL(string: "http://www.apple.com.cn")
       var request = NSURLRequest(URL: url!)
       webView.loadRequest(request)
        
        
        
        }


        // Do any additional setup after loading the view.

    
    func back(){
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
