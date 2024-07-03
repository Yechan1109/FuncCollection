//
//  SignupViewController.swift
//  FuncCollection
//
//  Created by t2023-m0013 on 7/1/24.
//

import UIKit

class SignupViewController: UIViewController {

    private let signupView = SignupView()
    
    override func loadView() {
        self.view = signupView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        setupActions()
    }
    
    
    
    @objc private func signupBtnTapped() {
//        let signupViewController =
    }
    
    
    private func configureUI() {
        
        // 추가적인 UI 설정이 필요한 경우 여기에 작성
    }
    
    private func setupActions() {
        // 추가적인 액션 설정이 필요한 경우 여기에 작성
    }
}
