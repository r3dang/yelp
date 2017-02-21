//
//  BusinessCell.swift
//  Yelp
//
//  Created by Rajit Dang on 2/14/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingsImageView: UIImageView!
    @IBOutlet weak var cuisineLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var businessLabel: UILabel!
    
    var business: Business! {
        didSet {
            businessLabel.text = business.name
            reviewsLabel.text = "\(business.reviewCount!) Reviews"
            addressLabel.text = business.address
            cuisineLabel.text = business.categories
            thumbImageView.setImageWith(business.imageURL!)
            distanceLabel.text = business.distance
            ratingsImageView.setImageWith(business.ratingImageURL!)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        businessLabel.preferredMaxLayoutWidth = businessLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        businessLabel.preferredMaxLayoutWidth = businessLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
