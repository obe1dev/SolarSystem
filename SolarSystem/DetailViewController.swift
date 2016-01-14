//
//  DetailViewController.swift
//  SolarSystem
//
//  Created by Brock Oberhansley on 1/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var planetImage: UIImageView!
    
    
    @IBOutlet weak var diameterLabel: UILabel!
    
    @IBOutlet weak var dayLengthLabel: UILabel!
    
    @IBOutlet weak var fromSunLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateWithPlanet(PlanetController.planets[2])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWithPlanet(planet: Planet){
        
        title = planet.name
        planetImage.image = UIImage(named: planet.imageName)
        diameterLabel.text = String(planet.diameter)
        dayLengthLabel.text = String(planet.dayLength)
        fromSunLabel.text = String(planet.millionKMsFromSun)
        
    }
    
}
