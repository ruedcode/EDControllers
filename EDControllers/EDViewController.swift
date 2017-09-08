//
//  EDViewController.swift
//  EDControllers
//
//  Created by Eugene Kalyada on 06.09.17.
//  Copyright © 2017 Eugene Kalyada. All rights reserved.
//

import UIKit
import EDAlertController
import EDProgressView

open class EDViewController: UIViewController {
    

	open func alert(_ error: Error) {
		alertWithType(type: .error, message: error.localizedDescription)
	}

	open func backAction() {
		if let navController = navigationController {
			if let index = navController.viewControllers.index(of: self), index == 0 {
				if navController.presentingViewController != nil {
					navController.dismiss(animated: true, completion: nil)
				}
			}
			else {
				navController.popViewController(animated: true)
			}
		}
		else if presentingViewController != nil {
			dismiss(animated: true, completion: nil)
		}
	}

	open func progress(_ isShow: Bool){
		if isShow {
			_ = EDProgressView.show(on: self)
		}
		else {
			_ = EDProgressView.hide(on: self)
		}
	}


}
