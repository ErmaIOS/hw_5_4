//
//  MakeView.swift
//  hw_5_4
//
//  Created by Erma on 28/1/24.
//

import UIKit



class MakeView{
    
    static let shared = MakeView()
    
    func makerLabel(text:String = "",
                    textColor: UIColor = .white,
                    textSize:CGFloat = 20,
                    textWeight:UIFont.Weight = .regular,
                    textNumberOfLines: Int = 0
                    ) -> UILabel {
        let view = UILabel()
        view.text = text
        view.textColor = textColor
        view.font = .systemFont(ofSize: textSize,weight: textWeight)
        view.numberOfLines = textNumberOfLines
        return view
    }
    
    
    func makerView(viewBackgroundColor: UIColor = .white,
                   viewBorderColor: CGColor = UIColor.red.cgColor,
                   viewCornerRadius: CGFloat = 0) -> UIView{
        let view = UIView()
        view.backgroundColor = viewBackgroundColor
        view.layer.borderColor = viewBorderColor
        view.layer.cornerRadius = viewCornerRadius
        return view
    }
    
    
    func makerTF(tfPlaceholder: String = "",
                 tfTextSize: CGFloat = 20,
                 tfBackgroundColor: UIColor = .white,
                 tfBorderColor: CGColor = UIColor.red.cgColor,
                 tfCornerRadius: CGFloat = 12,
                 tfLeftViewMode: UITextField.ViewMode = .always,
                 tfIsSecureTextEntry: Bool  = false,
                 tfRightViewImage: UIImage?,
                 tfRightViewTag: Int ,
                 tfRightViewMode: UITextField.ViewMode = .always,
                 tfTextColor: UIColor = .blue,
                 tfTextSelf: Any?,
                 tfTextSelector: Selector,
                 tfRightViewSelf: Any?,
                 tfRightViewSelector: Selector,
                 tfTextControl: UIControl.Event = .editingChanged,
                 tfRightViewControl: UIControl.Event = .touchUpInside
    ) -> UITextField{
        let view = UITextField()
        view.placeholder = tfPlaceholder
        view.layer.borderColor = tfBorderColor
        view.layer.cornerRadius = tfCornerRadius
        view.backgroundColor = tfBackgroundColor
        view.font = .systemFont(ofSize: tfTextSize)
        view.isSecureTextEntry = tfIsSecureTextEntry
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        view.leftView = leftView
        view.leftViewMode = tfLeftViewMode
        let rightView = UIButton(frame: CGRect(x: 24, y: 0, width: 28, height: 28))
        rightView.setBackgroundImage(tfRightViewImage, for: .normal)
        rightView.isUserInteractionEnabled = true
        rightView.tag = tfRightViewTag
        rightView.addTarget(tfRightViewSelf, action: tfRightViewSelector, for: tfRightViewControl)
        view.addTarget(tfTextSelf, action: tfTextSelector, for: tfTextControl)
        view.rightView = rightView
        view.rightViewMode = tfRightViewMode
        view.textColor = tfTextColor
        return view
    }
    
    func makerImage(imageName: String = "",
                    imageContentMode: UIView.ContentMode = .scaleAspectFill,
                    imageBackgroundColor: UIColor = .white,
                    imageTintColor: UIColor = .white
                    )-> UIImageView{
        let view = UIImageView()
        view.image = UIImage(named: imageName)
        view.contentMode = imageContentMode
        view.backgroundColor = imageBackgroundColor
        view.tintColor = imageTintColor
        return view
    }
    
    func makerButton(buttonSetTitle: String = "",
                     buttonSetTitleFor: UIControl.State = .normal,
                     buttonSetTitleColor: UIColor = .black,
                     buttonTitleSize : CGFloat = 20,
                     buttonImage: UIImage?,
                     buttonTintColor: UIColor? = .white,
                     buttonContentMode: UIView.ContentMode = .scaleAspectFit,
                     buttonCornerRadius: CGFloat = 12,
                     buttonBackgroundColor: UIColor = .black,
                     buttonTitleWeight: UIFont.Weight = .regular,
                     buttonSelf: Any?,
                     buttonSelector: Selector,
                     buttonControl: UIControl.Event = .touchUpInside,
                     buttonIsEnabled: Bool = true
                     )-> UIButton{
        let view = UIButton(type: .system)
        view.setTitle(buttonSetTitle, for: buttonSetTitleFor)
        view.setTitleColor(buttonSetTitleColor, for: buttonSetTitleFor)
        view.titleLabel?.font = UIFont.systemFont(ofSize: buttonTitleSize,weight: buttonTitleWeight)
        view.setImage(buttonImage, for: buttonSetTitleFor)
        view.tintColor = buttonTintColor
        view.contentMode = buttonContentMode
        view.layer.cornerRadius = buttonCornerRadius
        view.backgroundColor = buttonBackgroundColor
        view.addTarget(buttonSelf, action: buttonSelector, for: buttonControl)
        view.isEnabled = buttonIsEnabled
        return view
       
    }
}
