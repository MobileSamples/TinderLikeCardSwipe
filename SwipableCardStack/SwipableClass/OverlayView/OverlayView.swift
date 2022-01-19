//
//  OverlayView.swift
//  SwipableCardStack
//
//  Created by Nishee S on 07/12/21.
//

import UIKit

open class OverlayView: UIView {
    
    open var overlayState: SwipeResultDirection?
    
    open func update(progress: CGFloat) {
        alpha = progress
    }

}
