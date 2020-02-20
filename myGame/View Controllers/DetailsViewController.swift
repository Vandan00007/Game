//
//  DetailsViewController.swift
//  w10RemoteDatabase
//
//  Created by Vandan  on 11/11/19.
//  Copyright © 2019 Vandan Inc. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var lbName : UILabel!
    @IBOutlet var lbScore : UILabel!
    
    
    func updatePerson(getData : GetData, select : Int)
    {
        let rowData = getData.dbData![select] as NSDictionary
        
        lbName.text = rowData["Name"] as? String
        lbScore.text = rowData["Score"] as? String
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
