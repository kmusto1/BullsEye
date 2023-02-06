//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Kyle Musto on 1/22/23.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
	@IBOutlet var webView: WKWebView!
	
	// Runs when about screen is loaded.
	override func viewDidLoad() {
		super.viewDidLoad()
		if let url = Bundle.main.url(
			forResource: "BullsEye", withExtension: "html") {
			let request = URLRequest(url: url)
			webView.load(request)
		}
	}
	
	// Closes.
	@IBAction func close() {
		dismiss(animated: true, completion: nil)
	}
}
