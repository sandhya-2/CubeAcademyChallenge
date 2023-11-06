//
//  NetworkManager.swift
//  Nominations
//
//  Created by Sandhya on 06/11/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import Foundation

class NetworkManager {
    
    // function to load the bearer token from a plist file
    func loadBearerTokenFromPlist() -> String? {
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist"),
           let dict = NSDictionary(contentsOfFile: path) as? [String: Any],
           let token = dict["AuthToken"] as? String {
            return token
        }
        return nil
    }
    
    func GetAllNominees() {
        
        // Load the bearer token from the plist
           guard let authToken = loadBearerTokenFromPlist() else {
               print("Failed to load the bearer token from the plist")
               return
           }
        
        // Create the URL
        guard let url = URL(string: API.BaseURL) else {
            print("Invalid URL")
            return
        }
        
        // Create a URLRequest and set the HTTP method to GET or POST, etc., as needed
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Add the Bearer token to the request header
        request.addValue("Bearer " + authToken, forHTTPHeaderField: "Authorization")
        
        
        // Create a URLSession data task
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                // Handle the error
            } else if let data = data {
                // Handle the response data
                if let httpResponse = response as? HTTPURLResponse {
                    print("Status Code: \(httpResponse.statusCode)")
                    
                    // Parse and process the data here
                    if let responseString = String(data: data, encoding: .utf8) {
                        print("Response Data: \(responseString)")
                        // You can parse the JSON data if it's in JSON format
                        // Example: let jsonObject = try? JSONSerialization.jsonObject(with: data, options: [])
                    }
                }
            }
        }
        
        // Start the data task
        task.resume()
    }
    
    func GetAllNominations() {
        
        // Create the URL
        guard let url = URL(string: API.NominationURL) else {
            print("Invalid URL")
            return
        }
        
        // Create a URLRequest and set the HTTP method to GET or POST, etc., as needed
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Add the Bearer token to the request header
//        request.addValue("Bearer " + API.token, forHTTPHeaderField: "Authorization")
        
        
        // Create a URLSession data task
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                // Handle the error
            } else if let data = data {
                // Handle the response data
                if let httpResponse = response as? HTTPURLResponse {
                    print("Status Code: \(httpResponse.statusCode)")
                    
                    // Parse and process the data here
                    if let responseString = String(data: data, encoding: .utf8) {
                        print("Response Data: \(responseString)")
                        // You can parse the JSON data if it's in JSON format
                        // Example: let jsonObject = try? JSONSerialization.jsonObject(with: data, options: [])
                    }
                }
            }
        }
        
        // Start the data task
        task.resume()
    }
    
    
    
    
}
