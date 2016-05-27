
import UIKit

class ViewController: VideoSplashViewController {

    //@IBOutlet weak var homeTable: UITableView!
    
   // var items: [String] = ["one","two","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.homeTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        let url = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("Strokkur_3", ofType: "mov")!)
        
        self.videoFrame = view.frame
        self.fillMode = .ResizeAspectFill
        self.alwaysRepeat = true
        self.sound = true
        self.startTime = 0.0
        self.duration = 9.0
        self.alpha = 0.9
        self.backgroundColor = UIColor.blackColor()
        self.contentURL = url
        
        // Sample UI
        
        var sampleButton = UIButton(frame: CGRect(x: 25.0, y: 550.0, width: 140.0, height: 42.0))
        sampleButton.setImage(UIImage(named: "btnSignin"), forState: .Normal)
        sampleButton.layer.cornerRadius = 20
        sampleButton.layer.masksToBounds = true
        view.addSubview(sampleButton)
        
        sampleButton = UIButton(frame: CGRect(x: 205.0, y: 550.0, width: 140.0, height: 42.0))
        sampleButton.setImage(UIImage(named: "btnRegister"), forState: .Normal)
        sampleButton.layer.cornerRadius = 20
        sampleButton.layer.masksToBounds = true
        view.addSubview(sampleButton)
        
        let text = UILabel(frame: CGRect(x: 50.0, y: 100.0, width: 320.0, height: 100.0))
        text.font = UIFont(name: "Museo500-Regular", size: 30)
        text.textAlignment = NSTextAlignment.Center
        text.textColor = UIColor.whiteColor()
        text.text = "MOXOM"
        view.addSubview(text)
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
//    {
//        return 500.0;
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.items.count;
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell:UITableViewCell =
//            self.homeTable.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
//        
//        cell.textLabel?.text = self.items[indexPath.row]
//        
//        return cell
//    }
//
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        print("You selected cell #\(indexPath.row)!")
//    }
    
}
