//
//  MessageService.swift
//  Smack
//
//  Created by Kunal Tyagi on 19/12/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService
{
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannels(completion: @escaping CompletionHandler)
    {
        let header = [
            "Authorization": "Bearer \(AuthService.instance.authToken)",
            "Content-Type": "application/json; charset=utf-8"
        ]
        
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: header).responseJSON { (response) in
            if response.result.error == nil
            {
                guard let data = response.data else { return }
                do
                {
                    //self.channels = try JSONDecoder().decode([Channel].self, from: data)
                    if let json = try JSON(data: data).array
                    {
                        for item in json
                        {
                            let id = item["_id"].stringValue
                            let name = item["name"].stringValue
                            let channelDescription = item["description"].stringValue
                            let channel = Channel(channelTitle: name, description: channelDescription, id: id)
                            self.channels.append(channel)
                            completion(true)
                        }
                    }
                }
                catch let error
                {
                    debugPrint(error as Any)
                }
                print(self.channels)
            }
            else
            {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
}
