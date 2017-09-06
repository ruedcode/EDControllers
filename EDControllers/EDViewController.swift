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

public class EDViewController: UIViewController {
    

	public func alert(_ error: Error) {
		alertWithType(type: .error, message: error.localizedDescription)
	}

	public func backAction() {
		if let navController = navigationController {
			navController.popViewController(animated: true)
		}
	}

	public func progress(_ isShow: Bool){
		if isShow {
			_ = EDProgressView.show(on: self)
		}
		else {
			_ = EDProgressView.hide(on: self)
		}
	}


}
