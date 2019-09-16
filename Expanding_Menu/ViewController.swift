//
//  ViewController.swift
//  Expanding_Menu
//
//  Created by Isaac Samuel on 9/16/19.
//  Copyright © 2019 Isaac Samuel. All rights reserved.
//

import UIKit
import ExpandingMenu

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let menuButtonSize: CGSize = CGSize(width: 64.0, height: 64.0)
        
 //       let menuButton = ExpandingMenuButton(frame: CGRect(origin: CGPoint.zero, size: menuButtonSize), centerImage: UIImage(named: "chooser-button-tab")!, centerHighlightedImage: UIImage(named: "chooser-button-tab-highlighted")!)
        let menuButton = ExpandingMenuButton(frame: CGRect(origin: CGPoint.zero, size: menuButtonSize), centerImage: UIImage(named: "iconfinder_share_64x45")!, centerHighlightedImage: UIImage(named: "iconfinder_sharing_64")!)
        
        
        
        menuButton.center = CGPoint(x: self.view.bounds.width - 32.0, y: self.view.bounds.height - 72.0)
        view.addSubview(menuButton)
        
        let item1 = ExpandingMenuItem(size: menuButtonSize, title: "Music", image: UIImage(named: "iconfinder_share_64x45")!, highlightedImage: UIImage(named: "iconfinder_sharing_64")!, backgroundImage: UIImage(named: "iconfinder_share_64x45"), backgroundHighlightedImage: UIImage(named: "iconfinder_sharing_64")) { () -> Void in
            // Do some action
        }
        
        let item2 = ExpandingMenuItem(size: menuButtonSize, title: "Movies", image: UIImage(named: "iconfinder_share_64x45")!, highlightedImage: UIImage(named: "iconfinder_sharing_64")!, backgroundImage: UIImage(named: "iconfinder_share_64x45"), backgroundHighlightedImage: UIImage(named: "iconfinder_sharing_64")) { () -> Void in
            // Do some action
        }
        
        let item3 = ExpandingMenuItem(size: menuButtonSize, title: "Videos", image: UIImage(named: "iconfinder_share_64x45")!, highlightedImage: UIImage(named: "iconfinder_sharing_64")!, backgroundImage: UIImage(named: "iconfinder_share_64x45"), backgroundHighlightedImage: UIImage(named: "iconfinder_sharing_64")) { () -> Void in
            // Do some action
        }
        
        menuButton.addMenuItems([item1, item2, item3])
        
        
        ///////////////////// ExpandingMenu
        
        // Bottom dim view
        menuButton.bottomViewColor = UIColor.red
        menuButton.bottomViewAlpha = 0.2
        
        // Whether the tapped action fires when title are tapped
        menuButton.titleTappedActionEnabled = false
        
        // Menu item direction
        menuButton.expandingDirection = .top
        menuButton.menuTitleDirection = .left
        
        // The action when the menu appears/disappears
        menuButton.willPresentMenuItems = { (menu) -> Void in
            print("MenuItems will present.")
        }
        
        menuButton.didPresentMenuItems = { (menu) -> Void in
            print("MenuItems will present.")
        }
        
        menuButton.willDismissMenuItems = { (menu) -> Void in
            print("MenuItems dismissed.")
        }
        
        menuButton.didDismissMenuItems = { (menu) -> Void in
            print("MenuItems will present.")
        }
        
        // Expanding Animation
   //     menuButton.expandingAnimations = [] // No animation
        menuButton.enabledExpandingAnimations = []
        
  //      menuButton.expandingAnimations = CustomAnimationOptions.all.symmetricDifference(.menuButtonRotate)
  //      menuButton.enabledExpandingAnimations.symmetricDifference(.MenuButtonRotation)
        
        // Folding Animation
 //       menuButton.foldingAnimations = .all
        menuButton.enabledFoldingAnimations = .All
        
  //      menuButton.foldingAnimations = [.MenuItemMoving, .MenuItemFade, .MenuButtonRotation]
        menuButton.enabledFoldingAnimations = [.MenuItemMoving, .MenuItemFade, .MenuButtonRotation]
        
        //////
        
        ///////////////////// ExpandingMenuItem
        
        // Title
    
        item1.title = "Music"
        item1.titleColor = UIColor.black
        // Title margin to menu item
        item1.titleMargin = 4
        
        item2.title = "Movies"
        item2.titleColor = UIColor.black
        // Title margin to menu item
        item2.titleMargin = 4
        
        item3.title = "Videos"
        item3.titleColor = UIColor.black
        // Title margin to menu item
        item3.titleMargin = 4
        

        
        //////
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

