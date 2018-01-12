//
//  AddCardViewController.swift
//  BenefitDetail
//
//  Created by sutie on 2018. 1. 12..
//  Copyright © 2018년 jeeah. All rights reserved.
//

import UIKit
import WebKit

class DetailBenefitsViewController: UIViewController, WKUIDelegate{

    @IBOutlet weak var benefitsWebView: WKWebView!

    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        benefitsWebView = WKWebView(frame: .zero, configuration: webConfiguration)
        benefitsWebView.uiDelegate = self
        view = benefitsWebView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view Loading")
        
        if let webUrl = URL(string: "https://m.shinhancard.com"){
            print("url")
            //url 로드
            benefitsWebView.load(URLRequest(url: webUrl))
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
