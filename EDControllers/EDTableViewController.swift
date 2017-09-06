//
//  EDTableViewController.swift
//  EDControllers
//
//  Created by Eugene Kalyada on 06.09.17.
//  Copyright © 2017 Eugene Kalyada. All rights reserved.
//

import UIKit

public class EDTableViewController: EDViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet public weak var tableView: UITableView!

	// MARK: - UITableView
	public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return UITableViewCell()
	}

	public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 0
	}

	public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
	}

}
