
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = K.titleName
        var charIndex = 0.1
        for char in title {
            Timer.scheduledTimer(withTimeInterval: 0.2*charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(char)
            }
            charIndex += 1
        }
    }
    

}
