//
//  Extension.swift
//  Shortcuts
//

import Foundation
import UIKit

public extension NSObject {
    
    public class func lg_loadFromNib(nibName: String? = nil) -> Self {
        let name = nibName ?? String(describing: self)
        return self.lg_loadFromNib(nibName: name, objectType: self)
    }
    
    private class func lg_loadFromNib<T>(nibName: String, objectType: T.Type) -> T {
        let nibObjects = UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil)
        
        for object in nibObjects {
            if type(of: object) == objectType {
                return object as! T
            }
        }
        
        abort()
    }
    
    class func lg_nib(nibName: String? = nil) -> UINib {
        let name = nibName ?? String(describing: self)
        return UINib(nibName: name, bundle: nil)
    }
    
}
