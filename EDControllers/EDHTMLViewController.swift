//
//  EDHTMLViewController.swift
//  EDControllers
//
//  Created by Eugene Kalyada on 07.09.17.
//  Copyright © 2017 Eugene Kalyada. All rights reserved.
//

import UIKit

class EDHTMLViewController: EDViewController {

	@IBOutlet open weak var navigationBar: UINavigationBar!
	@IBOutlet open weak var webView: UIWebView!
	@IBOutlet open weak var cancelButton: UIBarButtonItem!

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setup()
	}

	func setup() {
		if let view = Bundle.main.loadNibNamed("EDHTMLViewController", owner: self, options: nil)?.first as? UIView {
			self.view = view
		}
	}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func cancelAction(_ sender: Any) {
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
