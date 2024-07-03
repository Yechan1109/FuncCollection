import UIKit

class LoginView: UIView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = .white
        label.text = "로그인 샘플"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let idLabel: UILabel = {
        let label = UILabel()
        label.text = "아이디 :"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loginID: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.textColor = .black
        tf.font = UIFont.systemFont(ofSize: 18)
        tf.textAlignment = .center
        tf.layer.cornerRadius = 10
        tf.autocapitalizationType = .none  // 첫 문자 대문자 X
        tf.autocorrectionType = .no        // 자동완성 X
        tf.clearsOnBeginEditing = false    // 재사용시 리셋
        tf.keyboardType = .default
        let paragraphStyle = NSMutableParagraphStyle()  // placeholder text_align -> center
        paragraphStyle.alignment = .center
        tf.attributedPlaceholder = NSAttributedString(string: "아이디를 입력하세요", attributes: [.foregroundColor: UIColor.systemGray, .paragraphStyle: paragraphStyle])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private let pwLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호 :"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loginPW: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.textColor = .black
        tf.font = UIFont.systemFont(ofSize: 18)
        tf.textAlignment = .center
        tf.layer.cornerRadius = 10
        tf.autocapitalizationType = .none  // 첫 문자 대문자 X
        tf.autocorrectionType = .no        // 자동완성 X
        tf.clearsOnBeginEditing = false    // 재사용시 리셋
        tf.isSecureTextEntry = true
        tf.keyboardType = .numberPad
        let paragraphStyle = NSMutableParagraphStyle()  // placeholder text_align -> center
        paragraphStyle.alignment = .center
        tf.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력하세요", attributes: [.foregroundColor: UIColor.systemGray, .paragraphStyle: paragraphStyle])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
// MARK: - button
    
    private lazy var loginBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.4079234006, green: 0.2824222703, blue: 0.7568627596, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("로그인", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // 'signupBtn' is inaccessible due to 'private' protection level -> private X
    public let signupBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitleColor(#colorLiteral(red: 0.4079234006, green: 0.2824222703, blue: 0.7568627596, alpha: 1), for: .normal)
        button.setTitle("처음이신가요? 회원가입하기", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var googleLoginBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("Google", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private lazy var kakaoLoginBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("Kakao", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var appleLoginBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("Apple", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()



    
//  MARK: - stackView
    private let vStackView: UIStackView = {
        let vstack = UIStackView()
        vstack.axis = .vertical
        vstack.spacing = 10
        vstack.distribution = .fillEqually
        vstack.translatesAutoresizingMaskIntoConstraints = false
        return vstack
    }()
    
    private let hStackView: UIStackView = {
        let hstack = UIStackView()
        hstack.axis = .horizontal
        hstack.spacing = 5
        hstack.distribution = .fillEqually
        hstack.translatesAutoresizingMaskIntoConstraints = false
        return hstack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = #colorLiteral(red: 1, green: 0.6527370707, blue: 0.5631470251, alpha: 1)
        
        addSubview(titleLabel)
        addSubview(vStackView)
        addSubview(loginBtn)
        addSubview(signupBtn)
        addSubview(hStackView)
        
        vStackView.addArrangedSubview(idLabel)
        vStackView.addArrangedSubview(loginID)
        vStackView.addArrangedSubview(pwLabel)
        vStackView.addArrangedSubview(loginPW)
//        vStackView.addArrangedSubview(loginBtn)
        
        hStackView.addArrangedSubview(googleLoginBtn)
        hStackView.addArrangedSubview(kakaoLoginBtn)
        hStackView.addArrangedSubview(appleLoginBtn)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            
            vStackView.widthAnchor.constraint(equalToConstant: 280),
            vStackView.heightAnchor.constraint(equalToConstant: 150),
            vStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            vStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 150),
            
            loginBtn.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginBtn.topAnchor.constraint(equalTo: vStackView.bottomAnchor, constant: 25),
            loginBtn.widthAnchor.constraint(equalToConstant: 280),
            loginBtn.heightAnchor.constraint(equalToConstant: 50),
            
            signupBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 0),
            signupBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
//            signupBtn.heightAnchor.constraint(equalToConstant: 150),
            
            hStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            hStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -150),
            hStackView.heightAnchor.constraint(equalToConstant: 50),
            hStackView.widthAnchor.constraint(equalToConstant: 220),
            
        ])
    }
}

#Preview {
    LoginView()
}
