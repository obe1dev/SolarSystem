//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by Brock Oberhansley on 1/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit


class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)

        let planetCell = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planetCell.name
        cell.imageView?.image = UIImage(imageLiteral: planetCell.imageName)
        cell.imageView?.contentMode = .ScaleToFill
        
        

        return cell
    }
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        if segue.identifier == "toPlanetDetail" {
            
            if let detailView = segue.destinationViewController as? DetailViewController {
                
                // Following line forces the view from Storyboard to load UI elements to make available for updating
                _ = detailView.view
                
                // this will give you the the selected row out of the rows (ex: 0-7)
                let indexPath = self.tableView.indexPathForSelectedRow
                
                //this will give you the specific number in the row (ex:5)
                let selectedRow = indexPath?.row
                
                //creating the planet for the selected row from the planet array index
                let planet = PlanetController.planets[selectedRow!]
                
                //calling the fucntion in detailViewController to update the view for the selected planet
                detailView.updateWithPlanet(planet)
                    
                
            }

            
            
        }
        
        
    }

    

}
