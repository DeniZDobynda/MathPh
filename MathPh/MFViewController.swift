//
//  MFViewController.swift
//  MathPh
//
//  Created by Denis Dobynda on 12/16/16.
//  Copyright © 2016 Denis Dobynda. All rights reserved.
//

import UIKit

class MFViewController: UIViewController {
    
    private struct Storyboard {
        static let ShowImageSegue = "Show Image"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.ShowImageSegue {
            if let ivc = segue.destination.contentViewController as? ImageViewController {
                let imageName = (sender as? UIButton)?.currentTitle
                ivc.imageURL = DemoURL.pathForImage(imageName)
                ivc.title = imageName
            }
        }
    }

    override func viewDidLoad() {
        self.splitViewController?.preferredDisplayMode = UISplitViewControllerDisplayMode.primaryOverlay
    }
}


extension UIViewController {
    var contentViewController: UIViewController {
        get {
            if let navcon = self as? UINavigationController {
                return navcon.visibleViewController ?? self
            } else {
                return self
            }
            
        }
    }
}
