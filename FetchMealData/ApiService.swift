//
//  ApiService.swift
//  FetchMealData
//
//  Created by Muhammad Rivan Rayhan on 01/08/22.
//

import Foundation


public class ApiService {
    
    var dataTask:URLSessionDataTask?
    
    
    public init(){}
    
    public func getMealData(completion: @escaping (Result<MealsData, Error >)-> Void
    ) {
        let mealDataURL = "https://themealdb.com/api/json/v1/1/filter.php?c=Seafood"
        
        guard let url = URL(string: mealDataURL) else {return}
        
        dataTask = URLSession.shared.dataTask(with: url) {(data,response,error) in
            //Handle error
            if let error = error {
                completion(.failure(error))
                print("DataTask error: \(error.localizedDescription)")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                //Handle empty response
                print("Empty Response")
                return
            }
            print("Response status code: \(response.statusCode)")
            
            guard let data = data else{
                //Handle Empty Data
                print("Empty data")
                return
            }
            
            do {
                //Parse data
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MealsData.self, from:data)
                
                DispatchQueue.main.async {
                    completion(.success(jsonData))
                }
            } catch let error {
                completion(.failure(error))
            }
        }
        dataTask?.resume()
    }
    
    
    public func getMealDetailData(idMeal:Int,completion: @escaping (Result<MealsData, Error >)-> Void
    ) {
        let mealDataURL = "https://themealdb.com/api/json/v1/1/lookup.php?i=\(idMeal)"
        
        guard let url = URL(string: mealDataURL) else {return}
        
        dataTask = URLSession.shared.dataTask(with: url) {(data,response,error) in
            //Handle error
            if let error = error {
                completion(.failure(error))
                print("DataTask error: \(error.localizedDescription)")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                //Handle empty response
                print("Empty Response")
                return
            }
            print("Response status code: \(response.statusCode)")
            
            guard let data = data else{
                //Handle Empty Data
                print("Empty data")
                return
            }
            
            do {
                //Parse data
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MealsData.self, from:data)
                
                DispatchQueue.main.async {
                    completion(.success(jsonData))
                }
            } catch let error {
                completion(.failure(error))
            }
        }
        dataTask?.resume()
    }
}
