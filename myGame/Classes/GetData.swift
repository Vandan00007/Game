//
//  GetData.swift
//  w10RemoteDatabase
//
//  Created by Vandan  on 11/11/19.
//  Copyright © 2019 Vandan Inc. All rights reserved.
//

import UIKit

class GetData: NSObject {
    var dbData : [NSDictionary]?
    
    let myUrl = "http://pavandan.dev.fast.sheridanc.on.ca/Database1/sqlToJson.php";
    
    
    enum JSONError : String, Error {
        case NoData = "Error: No Data"
        case ConversionFailed = "Error: conversion from JSON failed"
    }
    
    func jsonParser(){
        let endPoint = URL(string: myUrl)
        let request = URLRequest(url: endPoint!)
        
        URLSession.shared.dataTask(with: request){
            (data, response, error) in
            do
            {
                let datastring = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                print(datastring)
                
                guard let data = data else {
                    throw JSONError.NoData
                }
                guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [NSDictionary] else {
                    throw JSONError.ConversionFailed
                }
                print(json)
                self.dbData = json
            }catch let error as JSONError {
                print(error.rawValue)
            }catch let error as NSError {
                print(error.debugDescription)
            }
        }.resume()
    }

}
