
import UIKit

class ViewController: VideoSplashViewController {

    //@IBOutlet weak var homeTable: UITableView!
    
   // var items: [String] = ["one","two","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.homeTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "Strokkur_3", ofType: "mov")!)
        
        self.videoFrame = view.frame
        self.fillMode = .resizeAspectFill
        self.alwaysRepeat = true
        self.sound = true
        self.startTime = 0.0
        self.duration = 9.0
        self.alpha = 0.9
        self.backgroundColor = UIColor.clear
        self.contentURL = url
        
        // Sample UI
        
        var sampleButton = UIButton(frame: CGRect(x: 25.0, y: 550.0, width: 140.0, height: 42.0))
        sampleButton.setImage(UIImage(named: "btnSignin"), for: UIControlState())
        sampleButton.layer.cornerRadius = 20
        sampleButton.layer.masksToBounds = true
        view.addSubview(sampleButton)
        
        sampleButton = UIButton(frame: CGRect(x: 205.0, y: 550.0, width: 140.0, height: 42.0))
        sampleButton.setImage(UIImage(named: "btnRegister"), for: UIControlState())
        sampleButton.layer.cornerRadius = 20
        sampleButton.layer.masksToBounds = true
        view.addSubview(sampleButton)
        
        sampleButton.addTarget(self, action: #selector(Action), for: .touchUpInside)

        
        let text = UILabel(frame: CGRect(x: 50.0, y: 100.0, width: 320.0, height: 100.0))
        text.font = UIFont(name: "Museo500-Regular", size: 30)
        text.textAlignment = NSTextAlignment.center
        text.textColor = UIColor.white
        text.text = "MOXOM"
        view.addSubview(text)
    }
    override var prefersStatusBarHidden : Bool {
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func Action() {
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "KickEmViewController") as! KickEmViewController
        UIApplication.shared.keyWindow?.rootViewController = viewController;
        
    }
}
