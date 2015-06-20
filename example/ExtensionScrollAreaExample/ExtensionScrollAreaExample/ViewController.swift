//
//  ViewController.swift
//  ExtensionScrollAreaExample
//
//  Created by Di Chen on 6/19/15.
//  Copyright (c) 2015 Di Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ExtensionScrollAreaDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var extensionScrollArea: ExtensionScrollArea!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        extensionScrollArea.delegate = self
        
        scrollView.pagingEnabled = true
        scrollView.clipsToBounds = false
        
        let frame = scrollView.frame
        let width = frame.width
        let height = frame.height
        
        var layer = scrollView.layer
        layer.borderColor = UIColor.blackColor().CGColor
        layer.borderWidth = 1.0
        layer.cornerRadius = width/2
        
        let pageCount = 5
        scrollView.contentSize = CGSizeMake(width * CGFloat(pageCount), height)
        for i in 0..<pageCount {
            var label = UILabel(frame: CGRectMake(width * CGFloat(i), 0, width, height))
            label.text = String(i)
            label.textColor = UIColor.blueColor()
            label.textAlignment = .Center
            label.font = UIFont.systemFontOfSize(30)
            scrollView.addSubview(label)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func extensionScrollAreaTargetView(scrollArea: ExtensionScrollArea) -> UIView? {
        return scrollView;
    }
}

