//
//  ExtensionScrollArea.swift
//  ExtensionScrollAreaExample
//
//  Created by Di Chen on 6/19/15.
//  Copyright (c) 2015 Di Chen. All rights reserved.
//

import Foundation
import UIKit

protocol ExtensionScrollAreaDelegate {
    func extensionScrollAreaTargetView(scrollArea: ExtensionScrollArea) -> UIView?
}

class ExtensionScrollArea: UIView {
    
    var delegate: ExtensionScrollAreaDelegate?
    
    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        var view = super.hitTest(point, withEvent:event);
        
        if view == self && delegate != nil {
            return  delegate?.extensionScrollAreaTargetView(self);
        }
        
        return view;
    }

}

