//
//  HelloViewController.swift
//  SwiftUI-SwiftUIHostingUIKit
//
//  Created by Russell Archer on 21/08/2019.
//  Copyright © 2019 Russell Archer. All rights reserved.
//

import UIKit
import SwiftUI

final class HelloViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sayHelloTapped(_ sender: Any) {
        helloLabel.text = "Hello 👋"
    }
}

extension HelloViewController: UIViewControllerRepresentable {
    public func makeUIViewController(context: UIViewControllerRepresentableContext<HelloViewController>) -> HelloViewController {
        // Get a ref to a view controller using its Interface Builder Storyboard ID
        let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)  // Get ref to the storyboard
        return storyboard.instantiateViewController(withIdentifier: "HelloViewController") as! HelloViewController
    }
    
    func updateUIViewController(
        _ uiViewController: HelloViewController,
        context: UIViewControllerRepresentableContext<HelloViewController>) { }
}
