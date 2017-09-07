//
//  EDHTMLViewController.swift
//  EDControllers
//
//  Created by Eugene Kalyada on 07.09.17.
//  Copyright © 2017 Eugene Kalyada. All rights reserved.
//

import UIKit

open class EDHTMLViewController: EDViewController {

	@IBOutlet open weak var navigationBar: UINavigationBar!
	@IBOutlet open weak var webView: UIWebView!
	@IBOutlet open weak var cancelButton: UIBarButtonItem!


	open override func loadView() {

		if let view = Bundle(for: EDHTMLViewController.self).loadNibNamed("EDHTMLViewController", owner: self, options: nil)?.first as? UIView {
			self.view = view
		}
	}
    override open func viewDidLoad() {
        super.viewDidLoad()

		print("wwwo \(self.webView)")
        // Do any additional setup after loading the view.
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction open func cancelAction(_ sender: Any) {
		dismiss(animated: true, completion: nil)
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
