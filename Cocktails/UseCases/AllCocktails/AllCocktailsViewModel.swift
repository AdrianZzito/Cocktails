//
//  AllCocktailsViewModel.swift
//  Cocktails
//
//  Created by Adrián Castilla on 9/3/23.
//

import Foundation

final class AllCocktailsViewModel: ObservableObject {
    
    @Published var cocktails: [Drink] = []
    
    func getAllCocktails(search: String) {
        
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=\(search)")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let _ = error {
                print("Error")
            }
            
            if let data = data,
               let responseString = String(data: data, encoding: .utf8) {
                let json = responseString.data(using: .utf8)!
                let cocktailData = try! JSONDecoder().decode(Cocktails.self, from: json)
                DispatchQueue.main.async {
                    self.cocktails = cocktailData.drinks
                }
                
            }
            
        }.resume()
        
    }
    
}
