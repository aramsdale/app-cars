//
//  detailVC.swift
//  app-cars
//
//  Created by Austin Ramsdale on 9/13/20.
//

import UIKit

class detailVC: UIViewController {

    var car: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lblOne.text = "MSRP: "
        lblOneData.text = car.msrp
        lblTwo.text = "Fuel: "
        lblTwoData.text = car.fuelEconomy
        lblThree.text = "Engine: "
        lblThreeData.text = car.engine
        lblFour.text = "Power: "
        lblFourData.text = car.horsepower
        lblFive.text = "Type: "
        lblFiveData.text = car.transmission
        imgAlt.image = UIImage(named: car.image)
        imgLogo.image = UIImage(named: car.logo)
        lblBrand.text = car.brandName
        lblModel.text = car.modelName
        lblYear.text = car.modelYear
    }
    
    @IBOutlet weak var lblOneData: UILabel!
    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblTwo: UILabel!
    @IBOutlet weak var lblTwoData: UILabel!
    @IBOutlet weak var lblThree: UILabel!
    @IBOutlet weak var lblThreeData: UILabel!
    @IBOutlet weak var lblFour: UILabel!
    @IBOutlet weak var lblFourData: UILabel!
    @IBOutlet weak var lblFive: UILabel!
    @IBOutlet weak var lblFiveData: UILabel!
    @IBOutlet weak var imgAlt: UIImageView!
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblBrand: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblModel: UILabel!
    @IBAction func backToWelcome(_ sender: Any) {
        performSegue(withIdentifier: "welcomeSegue", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
