import UIKit

class GameView: UIView {
    
    
    private let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true  // 이미지가 뷰 경계 넘지 않도록(true)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true  // 이미지가 뷰 경계 넘지 않도록(true)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let firstDiceImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true  // 이미지가 뷰 경계 넘지 않도록(true)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let secondDiceImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true  // 이미지가 뷰 경계 넘지 않도록(true)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var rollBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.6061861515, green: 0.1090606526, blue: 0.1214486137, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("도박?!", for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let hStackView: UIStackView = {
        let hstack = UIStackView()
        hstack.axis = .horizontal
        hstack.spacing = 50
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
        
        addSubview(backgroundImage)
        addSubview(logoImage)
        addSubview(hStackView)
        addSubview(rollBtn)
//        addSubview(secondDiceImage)
        
        hStackView.addArrangedSubview(firstDiceImage)
        hStackView.addArrangedSubview(secondDiceImage)
        
        if let image = UIImage(named: "GreenBackground") {
                    backgroundImage.image = image
                }
        if let image = UIImage(named: "DiceeLogo") {
                    logoImage.image = image
                }
        if let image = UIImage(named: "DiceOne") {
            firstDiceImage.image = image
                }
        if let image = UIImage(named: "DiceTwo") {
            secondDiceImage.image = image
                }
        
   
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.heightAnchor.constraint(equalToConstant: 900),
            
            logoImage.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            hStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            hStackView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 130),
            
            rollBtn.topAnchor.constraint(equalTo: hStackView.bottomAnchor, constant: 130),
            rollBtn.centerXAnchor.constraint(equalTo: centerXAnchor),
            rollBtn.widthAnchor.constraint(equalToConstant: 80),
            rollBtn.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }
    
}


#Preview {
    GameView()
}
