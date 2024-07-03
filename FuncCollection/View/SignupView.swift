import UIKit

class SignupView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "회원가입하기"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let idLabel: UILabel = {
        let label = UILabel()
        label.text = "아이디 :"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var loginID: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.textColor = .black
        tf.font = UIFont.systemFont(ofSize: 18)
        tf.layer.cornerRadius = 10
        tf.textAlignment = .center
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
    
    let pwLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호 :"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var loginPW: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.textColor = .black
        tf.font = UIFont.systemFont(ofSize: 18)
        tf.layer.cornerRadius = 10
        tf.textAlignment = .center
        tf.autocapitalizationType = .none  // 첫 문자 대문자 X
        tf.autocorrectionType = .no        // 자동완성 X
        tf.clearsOnBeginEditing = false    // 재사용시 리셋
        tf.isSecureTextEntry = true
        tf.keyboardType = .default
        let paragraphStyle = NSMutableParagraphStyle()  // placeholder text_align -> center
        paragraphStyle.alignment = .center
        tf.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력하세요", attributes: [.foregroundColor: UIColor.systemGray, .paragraphStyle: paragraphStyle])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "전화번호 :"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var loginPhone: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.textColor = .black
        tf.font = UIFont.systemFont(ofSize: 18)
        tf.layer.cornerRadius = 10
        tf.textAlignment = .center
        tf.autocapitalizationType = .none  // 첫 문자 대문자 X
        tf.autocorrectionType = .no        // 자동완성 X
        tf.clearsOnBeginEditing = false    // 재사용시 리셋
        tf.isSecureTextEntry = true
        tf.keyboardType = .numberPad
        let paragraphStyle = NSMutableParagraphStyle()  // placeholder text_align -> center
        paragraphStyle.alignment = .center
        tf.attributedPlaceholder = NSAttributedString(string: "전화번호를 입력해주세요", attributes: [.foregroundColor: UIColor.systemGray, .paragraphStyle: paragraphStyle])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
// MARK: - button
    
    private lazy var checkBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.4079234006, green: 0.2824222703, blue: 0.7568627596, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("확인", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    




    
//  MARK: - stackView
    private let vStackView: UIStackView = {
        let vstack = UIStackView()
        vstack.axis = .vertical
        vstack.spacing = 5
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
        addSubview(checkBtn)
        
        vStackView.addArrangedSubview(idLabel)
        vStackView.addArrangedSubview(loginID)
        vStackView.addArrangedSubview(pwLabel)
        vStackView.addArrangedSubview(loginPW)
        vStackView.addArrangedSubview(phoneLabel)
        vStackView.addArrangedSubview(loginPhone)
//        vStackView.addArrangedSubview(checkBtn)
        
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            
            vStackView.widthAnchor.constraint(equalToConstant: 280),
            vStackView.heightAnchor.constraint(equalToConstant: 220),
            vStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            vStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 120),
            
            checkBtn.centerXAnchor.constraint(equalTo: centerXAnchor),
            checkBtn.topAnchor.constraint(equalTo: vStackView.bottomAnchor, constant: 30),
            checkBtn.widthAnchor.constraint(equalToConstant: 280),
            checkBtn.heightAnchor.constraint(equalToConstant: 50),
            
            
            
        ])
    }
}

#Preview {
    SignupView()
}


