//
//  CustomTableViewCell.swift
//  hw_5_4
//
//  Created by Erma on 28/1/24.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    
    private lazy var cellView: UIView = MakeView.shared.makerView(viewBackgroundColor: UIColor.init(hex: "#FFFFFF"))
    
    private lazy var avaImage: UIImageView = MakeView.shared.makerImage(imageName: "janeImage",imageBackgroundColor: UIColor.init(hex: "#FFFFFF"))
    
    private lazy var postText: UILabel = MakeView.shared.makerLabel(text: "Jane Cooper has published a new recipe!",textColor: UIColor.init(hex: "#212121"),textSize: 18,textWeight: .semibold, textNumberOfLines: 0)
    
    private lazy var postTextTime: UILabel = MakeView.shared.makerLabel(text: "Today | 09:24 AM",textColor: UIColor.init(hex: "#616161"),textSize: 14,textWeight: .medium)
    
    private lazy var postImage: UIImageView = MakeView.shared.makerImage(imageName: "janePostImage")
    
    private lazy var kebabImage: UIImageView = MakeView.shared.makerImage(imageName: "kebabImage")
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(cellView)
        cellView.addSubview(avaImage)
        cellView.addSubview(postText)
        cellView.addSubview(postTextTime)
        cellView.addSubview(postImage)
        cellView.addSubview(kebabImage)
        
        
        cellView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(84)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.bottom.equalToSuperview().offset(-24)
        }
        avaImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview().offset(-18)
            make.height.width.equalTo(48)
        }
        postText.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.width.equalTo(198)
            make.leading.equalTo(avaImage.snp.trailing).offset(16)
            make.trailing.equalTo(postImage.snp.leading).offset(-12)
        }
        postTextTime.snp.makeConstraints { make in
            make.top.equalTo(postText.snp.bottom).offset(6)
            make.leading.equalTo(avaImage.snp.trailing).offset(16)
        }
        postImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(6)
            make.height.width.equalTo(72)
            make.bottom.equalToSuperview().offset(-6)
            make.leading.equalTo(postText.snp.trailing).offset(12)
        }
        kebabImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.leading.equalTo(postImage.snp.trailing).offset(12)
            make.bottom.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview()
            make.height.width.equalTo(24)
        }
        
        
    }
        
        func setImageData(_ imageAva:String,_ textPost: String,_ textTimePost: String,_ imagePost: String,_ imageKebab: String) {
            avaImage.image = UIImage(named: imageAva)
            postText.text = textPost
            postTextTime.text = textTimePost
            postImage.image = UIImage(named: imagePost)
            kebabImage.image = UIImage(named: imageKebab)
        }
        
        
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
