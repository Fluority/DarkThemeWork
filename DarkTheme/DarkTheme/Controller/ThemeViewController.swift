//
//  ThemeViewController.swift
//  DarkTheme
//
//  Created by liene.krista.neimane on 04/04/2023.
//

import UIKit

class ThemeViewController: UIViewController {

    
    @IBOutlet weak var darkThemeButton: UIButton!
    var mainText: String = "Dark theme on!"
    var darkIsOn: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad from ViewController")
        // Do any additional setup after loading the view.
        darkThemeButton.layer.cornerRadius = 8
    }

    @IBAction func darkThemeButtonTapped(_ sender: Any) {
        darkThemeIsOn(isOn: darkIsOn)
    }
    
    func darkThemeIsOn(isOn: Bool) {
        // mainText = "Dark theme on"
        darkThemeButton.setTitle(mainText, for: .normal)
        darkThemeButton.setTitleColor(UIColor.black, for: .normal)
        
        navigationItem.title = mainText
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        view.backgroundColor = UIColor.black
    }
    
}

