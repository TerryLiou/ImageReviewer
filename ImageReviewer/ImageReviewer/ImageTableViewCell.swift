//
//  ImageTableViewCell.swift
//  ImageReviewer
//
//  Created by 劉洧熏 on 2017/4/7.
//  Copyright © 2017年 伍智瑋. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    // Property

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var insetDot: UIView!
    @IBOutlet weak var outsiteDot: UIView!
//    var shadowLayer: CAShapeLayer!

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }

    func setUpCell() {

//        if shadowLayer == nil {
//            
//            shadowLayer = CAShapeLayer()
//            shadowLayer?.path = UIBezierPath(roundedRect: userImage.bounds, cornerRadius: 8).cgPath
//            shadowLayer?.fillColor = UIColor.white.cgColor
//            shadowLayer?.shadowColor = UIColor.darkGray.cgColor
//            shadowLayer?.shadowPath = shadowLayer?.path
//            shadowLayer?.shadowRadius = 5.0
//            shadowLayer?.shadowOpacity = 0.8
//            shadowLayer?.shadowOffset = CGSize(width: 5, height: 5)
//            userImage.layer.insertSublayer(shadowLayer!, below: nil)
//            
//        }

        insetDot.layer.cornerRadius = (insetDot.bounds.width)/2
        outsiteDot.layer.cornerRadius = (outsiteDot.bounds.width)/2

    }

}
