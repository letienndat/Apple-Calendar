//
//  ViewController.swift
//  AppleCalendar
//
//  Created by Lê Tiến Đạt on 23/3/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if AppContext.shared.isFirstLaunch {
            let storyboard = UIStoryboard(name: "Welcome", bundle: nil)
            guard let vcWelcome = storyboard.instantiateInitialViewController() else {
                return
            }
            self.navigationController?.present(vcWelcome, animated: true)
        }
    }
}

