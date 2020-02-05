//
//  MusicTableViewCell.swift
//  InaijsaBettsMusic
//
//  Created by Adit Kishen on 2/3/20.
//  Copyright © 2020 Adit Kishen. All rights reserved.
//

import Foundation
import UIKit

class MusicTableViewCell : UITableViewCell {
    
    
    var imageViewBackground : UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = false
        return view
    }()
    
    
    var mainImageView : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "image3")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var mainLabel : UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Unreleased Tape"
        return label
    }()
    
    var textView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textColor = UIColor.lightGray
        textView.font = UIFont.systemFont(ofSize: 12)
        textView.text = "COMING OUT SO SOON"
        textView.isEditable = false
        textView.isUserInteractionEnabled = false
        return textView
    }()
    
//    var moreBtn : UIButton = {
//        var button = UIButton()
//        button.setImage(#imageLiteral(resourceName: "more button"), for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.contentMode = .scaleAspectFit
//        return button
//    }()
    
    var spacingConstant: CGFloat = 10
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.imageViewBackground.addSubview(mainImageView)
        self.addSubview(imageViewBackground)
        
        self.addSubview(mainLabel)
        self.addSubview(textView)
       // self.addSubview(moreBtn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        mainImageView.layer.cornerRadius = 5
        
        
        mainImageView.leftAnchor.constraint(equalTo: imageViewBackground.leftAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: imageViewBackground.rightAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: imageViewBackground.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: imageViewBackground.bottomAnchor).isActive = true
        
        imageViewBackground.leftAnchor.constraint(equalTo: self.leftAnchor, constant: spacingConstant).isActive = true
        imageViewBackground.topAnchor.constraint(equalTo: self.topAnchor, constant: spacingConstant).isActive = true
        imageViewBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -spacingConstant).isActive = true
        imageViewBackground.widthAnchor.constraint(equalTo: self.imageViewBackground.heightAnchor).isActive = true
        
        mainLabel.leftAnchor.constraint(equalTo: imageViewBackground.rightAnchor, constant: spacingConstant).isActive = true
        mainLabel.topAnchor.constraint(equalTo: imageViewBackground.topAnchor).isActive = true
        mainLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
       // mainLabel.rightAnchor.constraint(equalTo: imageViewBackground.leftAnchor, constant: -spacingConstant).isActive = true
        
        textView.leftAnchor.constraint(equalTo: imageViewBackground.rightAnchor, constant: spacingConstant).isActive = true
        textView.bottomAnchor.constraint(equalTo: imageViewBackground.bottomAnchor).isActive = true
        textView.topAnchor.constraint(equalTo: mainLabel.topAnchor, constant: 20).isActive = true
        textView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -spacingConstant).isActive = true
        
//        moreBtn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -spacingConstant).isActive = true
//        moreBtn.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        moreBtn.bottomAnchor.constraint(equalTo: self.textView.topAnchor).isActive = true
//        moreBtn.leftAnchor.constraint(equalTo: mainLabel.rightAnchor, constant: spacingConstant)

        
        
    }
    
    
    
    
}
