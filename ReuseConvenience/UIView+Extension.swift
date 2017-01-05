//
//  UIView+Extension.swift
//  Shortcuts
//

import Foundation
import UIKit

extension UIView {
    
    class func lg_loadFromNib() -> UIView {
        let nibName = String(describing: self)
        return self.lg_loadFromNib(name: nibName)
    }
    
    class func lg_loadFromNib(name: String) -> UIView {
        let nibObjects = UINib(nibName: name, bundle: nil).instantiate(withOwner: nil, options: nil)
        
        for object in nibObjects {
            if type(of: object) == self {
                return object as! UIView
            }
        }
        
        abort()
    }
    
    class func lg_nib() -> UINib {
        let nibName = String(describing: self)
        return self.lg_nib(nibName: nibName)
    }

    class func lg_nib(nibName: String) -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
    
}
