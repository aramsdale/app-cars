//
//  ViewController.swift
//  app-cars
//
//  Created by Austin Ramsdale on 9/4/20.
//

import UIKit
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
class WelcomeVC: UIViewController {

    var car: Car!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        car = Car()
    }


    @IBAction func onGenesisTapped(_ sender: Any) {
        car.brandName = "Genesis"
        car.modelName = "G70"
        car.modelYear = "2021"
        car.msrp = "$39,990 USD"
        car.fuelEconomy = "Up to 18/28 mpg (city/highway)"
        car.engine = "Turbocharged 2-liter, four-cylinder"
        car.horsepower = "252 hp"
        car.transmission = "6-speed manual transmission"
        car.logo = "genesis-logo"
        car.image = "genesisg70alt"
        performSegue(withIdentifier: "detailVCSegue", sender: self)
    }
    
    @IBAction func onMustangTapped(_ sender: Any) {
        car.brandName = "Ford"
        car.modelName = "Mustang"
        car.modelYear = "2021"
        car.msrp = "$50,000 USD Expected"
        car.fuelEconomy = "TBD"
        car.engine = "5.0L Coyote V8"
        car.horsepower = "480 hp"
        car.transmission = "TREMEC TR-3160 6-speed manual transmission"
        car.logo = "ford-logo-2003"
        car.image = "mustang2"
        performSegue(withIdentifier: "detailVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? detailVC {
            detailVC.car = car
        }
    }

    

}

