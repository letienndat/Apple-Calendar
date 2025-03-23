//
//  WelcomeViewController.swift
//  AppleCalendar
//
//  Created by Lê Tiến Đạt on 23/3/25.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private let welcomeViewModel = WelcomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        isModalInPresentation = true
        
        tableView.register(WelcomeTableViewCell.nib, forCellReuseIdentifier: WelcomeTableViewCell.reuseIdentifier)
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func handleTappedBtnContinue(_ sender: UIButton) {
        AppContext.shared.setIsFirstLaunch(isFirstLaunch: false)
        dismiss(animated: true)
    }
}

extension WelcomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return welcomeViewModel.listWhatNew.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WelcomeTableViewCell.reuseIdentifier, for: indexPath) as! WelcomeTableViewCell
        
        let itemWhatNew = welcomeViewModel.listWhatNew[indexPath.item]
        cell.setupData(itemWhatNew: itemWhatNew)
        
        return cell
    }
}
