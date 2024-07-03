import UIKit

class GameViewController: UIViewController {
    
    private let gameView = GameView()
    
    override func loadView() {
        self.view = gameView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let loginView = LoginView()
//        self.view = loginView
        
//        loginView.delegate = self
        
        configureUI()
        setupActions()
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.loginView.endEditing(true)
//    }
    
//    @objc private func signupBtnTapped() {
//        let signupViewController = SignupViewController()
//        navigationController?.pushViewController(signupViewController, animated: true)
//    }
    
    
    private func configureUI() {
        
        // 추가적인 UI 설정이 필요한 경우 여기에 작성
    }
    
// MARK: - ACT 관련
    private func setupActions() {
//        gameView.signupBtn.addTarget(self, action: #selector(signupBtnTapped), for: .touchUpInside)
    }
}
