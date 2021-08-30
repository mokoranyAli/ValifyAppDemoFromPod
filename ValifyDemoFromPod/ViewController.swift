//
//  ViewController.swift
//  ValifyDemoFromPod
//
//  Created by Mohamed Korany on 30/08/2021.
//

import UIKit
import ValifySelfie

// MARK: - ViewController
//
class ViewController: UIViewController {
  
  // MARK: - IBOutlets
  
  @IBOutlet weak var imageView: UIImageView!
  
  // MARK: - IBActions
  
  @IBAction func showValifyTapped(_ sender: Any) {
    showValify(from: self, with: .present)
  }
}

// MARK: - ValifyDelegate
//
extension ViewController: ValifySelfieDelegate {
  
  func didFinishScan(from viewController: UIViewController, with result: Result<UIImage, Error>) {
    viewController.dismiss(animated: true)
    let image = try? result.get()
    self.imageView.image = image?.withHorizontallyFlippedOrientation()
  }
}
