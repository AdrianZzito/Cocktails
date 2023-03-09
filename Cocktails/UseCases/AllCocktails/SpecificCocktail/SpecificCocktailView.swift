//
//  SpecificCocktailView.swift
//  Cocktails
//
//  Created by Adrián Castilla on 9/3/23.
//

import SwiftUI
import Kingfisher

struct SpecificCocktailView: View {
    
    var name: String
    var category: String
    var glass: String
    var instructions: String
    var image: String
    
    var body: some View {
        
        VStack {
            
            KFImage(URL(string: image))
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(150)
                .shadow(radius: 20)
            
            Text(name)
                .font(.title)
                .bold()
                .underline()
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text(category)
                .font(.subheadline)
                .padding(.top, 2)
            
            Form {
                
                Section("About \(name)") {
                    Text("Recommended glass: \(glass)")
                    Text("Instructions: \(instructions)")
                }
                
            }
            .cornerRadius(50)
            .ignoresSafeArea()
            
        }
        
        
    }
}

struct SpecificCocktailView_Previews: PreviewProvider {
    static var previews: some View {
        SpecificCocktailView(name: "Margarita", category: "Ordinary Drink", glass: "Cocktail Glass", instructions: "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.", image: "https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg")
    }
}
