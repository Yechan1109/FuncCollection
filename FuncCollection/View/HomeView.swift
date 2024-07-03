import UIKit

class HomeView: UIView {
    
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Choose one.."
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let loginFuncBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.4079234006, green: 0.2824222703, blue: 0.7568627596, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("로그인 기능", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let tabBarFuncBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("TabBar 기능", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let gameFuncBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("게임 기능", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    
    private let vStackView: UIStackView = {
        let vstack = UIStackView()
        vstack.axis = .vertical
        vstack.spacing = 10
        vstack.distribution = .fillEqually
        vstack.translatesAutoresizingMaskIntoConstraints = false
        return vstack
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
        
        vStackView.addArrangedSubview(loginFuncBtn)
        vStackView.addArrangedSubview(tabBarFuncBtn)
        vStackView.addArrangedSubview(gameFuncBtn)
        
        NSLayoutConstraint.activate([
            
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            
            vStackView.widthAnchor.constraint(equalToConstant: 280),
            vStackView.heightAnchor.constraint(equalToConstant: 180),
            vStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            vStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            
        ])
    }
    
}


#Preview {
    HomeView()
}
