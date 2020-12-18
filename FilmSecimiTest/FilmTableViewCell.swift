//
//  FilmTableViewCell.swift
//  FilmSecimiTest
//
//  Created by Atakan Cengiz KURT on 17.12.2020.
//

import UIKit

class FilmTableViewCell: UITableViewCell {
    
//    var model: FilmModel?
    var checkFavourite: (() -> Void)?  

    @IBOutlet weak var favouriteButton: UIButton!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func favouriteButton(_ sender: Any) {
        self.checkFavourite?()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func initCell(_ model: FilmModel) {
        self.nameLabel.text = model.name
        self.yearLabel.text = model.year?.description
        
        let systemImage = model.isFavourite ?? false ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        
        self.favouriteButton.setImage(systemImage, for: .normal)
    }
        
}
