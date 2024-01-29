//
//  ViewController.swift
//  hw_5_4
//
//  Created by Erma on 25/1/24.
//

import UIKit
import SnapKit


class ViewController: UIViewController{
    
    private lazy var backBtn: UIButton = MakeView.shared.makerButton(buttonImage: UIImage(named: "backButton"),buttonTintColor: UIColor.init(hex: "#212121"),buttonBackgroundColor: UIColor.init(hex: "#FFFFFF"),buttonSelf: self, buttonSelector: #selector(backBtnTapped(sender: )))
    
    private lazy var createNewPasswordLabel: UILabel = MakeView.shared.makerLabel(text: "Create New Password 🔐",textColor: UIColor.init(hex: "#212121"),textSize: 29,textWeight: .bold)
    
    private lazy var descriptionLabel: UILabel = MakeView.shared.makerLabel(text: "Enter your new password. If you forget it, then you have to do forgot password.",textColor: UIColor.init(hex: "#212121"),textSize: 18)
    
    private lazy var passwordLabel: UILabel = MakeView.shared.makerLabel(text: "Password",textColor: UIColor.init(hex: "#212121"),textSize: 16,textWeight: .bold)
    
    private lazy var passwordTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Password",tfTextSize: 20, tfCornerRadius: 10,tfIsSecureTextEntry: true,tfRightViewImage: UIImage(named: "eyeIcon"), tfRightViewTag: 0, tfTextColor: .init(hex: "#212121"),tfTextSelf: self,tfTextSelector: #selector(enableButton),tfRightViewSelf: self,tfRightViewSelector: #selector(hideText))
    
    private lazy var passwordStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#F5484A"))
    
    
    private lazy var confirmPasswordLabel: UILabel = MakeView.shared.makerLabel(text: "Confirm Password",textColor: UIColor.init(hex: "#212121"),textSize: 16,textWeight: .bold)
    
    private lazy var confirmPasswordTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Password Again",tfTextSize: 20, tfCornerRadius: 10,tfIsSecureTextEntry: true,tfRightViewImage: UIImage(named: "eyeIcon"), tfRightViewTag: 1, tfTextColor: .init(hex: "#212121"),tfTextSelf: self,tfTextSelector: #selector(enableButton),tfRightViewSelf: self,tfRightViewSelector: #selector(hideText))
    
    private lazy var confirmPasswordStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#F5484A"))
    
    private lazy var checkBoxImage: UIImageView = MakeView.shared.makerImage(imageName: "checkBox",imageBackgroundColor: UIColor.init(hex: "#FFFFFF"))
    
    
    private lazy var rememberMeLabel: UILabel = MakeView.shared.makerLabel(text: "Remember me",textColor: UIColor.init(hex: "#212121"),textSize: 18,textWeight: .semibold)
    
    private lazy var continueBtn: UIButton = MakeView.shared.makerButton(buttonSetTitle: "Continue",buttonSetTitleColor: UIColor.init(hex: "#FFFFFF"),buttonTitleSize: 16,buttonImage: nil,buttonCornerRadius: 16,buttonBackgroundColor: UIColor.init(hex: "#F5484A"), buttonSelf: self, buttonSelector: #selector(continueBtnTapped),buttonIsEnabled: false)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        view.backgroundColor = .init(hex: "#FFFFFF")
        view.addSubview(backBtn)
        view.addSubview(createNewPasswordLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTF)
        view.addSubview(passwordStripe)
        view.addSubview(confirmPasswordLabel)
        view.addSubview(confirmPasswordTF)
        view.addSubview(confirmPasswordStripe)
        view.addSubview(checkBoxImage)
        view.addSubview(rememberMeLabel)
        view.addSubview(continueBtn)
        
        setupButton()
        setupLabel()
        setupTF()
        setupImage()
        setupView()
    }
    
    private func setupButton(){
         backBtn.snp.makeConstraints { make in
             make.top.equalTo(view.safeAreaLayoutGuide).offset(26)
             make.leading.equalToSuperview().offset(24)
             make.height.width.equalTo(28)
         }
         
         continueBtn.snp.makeConstraints { make in
             make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-36)
             make.horizontalEdges.equalToSuperview().inset(24)
             make.height.equalTo(58)
         }
     }
     
     private func setupLabel(){
         createNewPasswordLabel.snp.makeConstraints { make in
             make.top.equalTo(backBtn.snp.bottom).offset(34)
             make.horizontalEdges.equalToSuperview().inset(24)
             make.height.equalTo(51)
         }
         
         descriptionLabel.snp.makeConstraints { make in
             make.top.equalTo(createNewPasswordLabel.snp.bottom).offset(12)
             make.horizontalEdges.equalToSuperview().inset(24)
         }
         
         passwordLabel.snp.makeConstraints { make in
             make.top.equalTo(descriptionLabel.snp.bottom).offset(32)
             make.leading.equalToSuperview().offset(24)
         }
         
         confirmPasswordLabel.snp.makeConstraints { make in
             make.top.equalTo(passwordStripe.snp.bottom).offset(24)
             make.leading.equalToSuperview().offset(24)
         }
         
         rememberMeLabel.snp.makeConstraints { make in
             make.top.equalTo(confirmPasswordStripe.snp.bottom).offset(24)
         }
     }
     
     private func setupTF(){
         passwordTF.snp.makeConstraints { make in
             make.top.equalTo(passwordLabel.snp.bottom).offset(16)
             make.horizontalEdges.equalToSuperview().inset(24)
             make.height.equalTo(32)
         }
         
         confirmPasswordTF.snp.makeConstraints { make in
             make.top.equalTo(confirmPasswordLabel.snp.bottom).offset(16)
             make.horizontalEdges.equalToSuperview().inset(24)
             make.height.equalTo(32)
         }
     }
    
     private func setupView(){
         passwordStripe.snp.makeConstraints { make in
             make.top.equalTo(passwordTF.snp.bottom).offset(8)
             make.horizontalEdges.equalToSuperview().inset(24)
             make.height.equalTo(1)
         }
         
         confirmPasswordStripe.snp.makeConstraints { make in
             make.top.equalTo(confirmPasswordTF.snp.bottom).offset(8)
             make.horizontalEdges.equalToSuperview().inset(24)
             make.height.equalTo(1)
         }
     }
     
     private func setupImage(){
         checkBoxImage.snp.makeConstraints { make in
             make.top.equalTo(confirmPasswordStripe.snp.bottom).offset(24)
             make.leading.equalToSuperview().offset(24)
             make.trailing.equalTo(rememberMeLabel.snp.leading).offset(-16)
             make.height.width.equalTo(20)
         }
     }
    
    
    
    
    @objc func backBtnTapped(sender:UIButton){
        
    }
    
    
    @objc func hideText(_ sender:UIButton){
        switch sender.tag {
        case 0:
            passwordTF.isSecureTextEntry = !passwordTF.isSecureTextEntry
        case 1:
            confirmPasswordTF.isSecureTextEntry = !confirmPasswordTF.isSecureTextEntry
        default:
            break
        }
    }
    
    
    @objc func enableButton(_ sender: UITextField){
        guard let password = passwordTF.text, let confirmPassword = confirmPasswordTF.text else { return }
        
        if password.count >= 4 && confirmPassword.count >= 4 && password == confirmPassword{
            continueBtn.isEnabled = true
            continueBtn.backgroundColor = UIColor.init(hex: "#F5484A")
        }else{
            passwordTF.attributedPlaceholder = .init(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            confirmPasswordTF.attributedPlaceholder = .init(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            continueBtn.isEnabled = false
            continueBtn.backgroundColor = .darkGray
        }
        
    }
    
    
    @objc func continueBtnTapped(_ sender:UIButton){
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}





















extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let hexString: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
}
