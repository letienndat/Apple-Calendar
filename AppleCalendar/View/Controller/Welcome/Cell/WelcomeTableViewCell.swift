//
//  WelcomeTableViewCell.swift
//  AppleCalendar
//
//  Created by Lê Tiến Đạt on 23/3/25.
//

import UIKit

class WelcomeTableViewCell: UITableViewCell {
    @IBOutlet private weak var imageIcon: UIImageView!
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelContent: UILabel!
    
    //    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    func setupData(itemWhatNew: ItemWhatNew?) {
        self.imageIcon.image = UIImage(named: itemWhatNew?.iconString ?? "")
        self.labelTitle.text = itemWhatNew?.title
        self.labelContent.text = itemWhatNew?.content
    }
    
}
