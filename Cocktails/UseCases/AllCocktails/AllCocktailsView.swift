//
//  AllCocktailsView.swift
//  Cocktails
//
//  Created by Adrián Castilla on 9/3/23.
//

import SwiftUI

struct AllCocktailsView: View {
    
    @StateObject var allCocktailsViewModel = AllCocktailsViewModel()
    
    @State var userSearch = ""
    
    var body: some View {
        
        NavigationStack {
            
            TextField("Search a cocktail", text: $userSearch)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 20)
                .onSubmit {
                    allCocktailsViewModel.getAllCocktails(search: userSearch)
                }
            
            List {
                
                ForEach(allCocktailsViewModel.cocktails, id: \.idDrink) { cocktail in
                    
                    NavigationLink {
                        SpecificCocktailView(name: cocktail.strDrink, category: cocktail.strCategory, glass: cocktail.strGlass, instructions: cocktail.strInstructions, image: cocktail.strDrinkThumb)
                    } label: {
                        AllCocktailsRow(name: cocktail.strDrink, category: cocktail.strCategory, image: cocktail.strDrinkThumb)
                    }

                    
                }
                
            }
            
            .navigationTitle("Cocktails")
        }
        
    }
}

struct AllCocktailsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCocktailsView()
    }
}
