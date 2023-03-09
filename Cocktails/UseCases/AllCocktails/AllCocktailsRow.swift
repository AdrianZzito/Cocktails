//
//  AllCocktailsRow.swift
//  Cocktails
//
//  Created by Adrián Castilla on 9/3/23.
//

import SwiftUI
import Kingfisher

struct AllCocktailsRow: View {
    
    var name: String
    var category: String
    var image: String
    
    var body: some View {
        
        HStack {
            
            KFImage(URL(string: image))
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(100)
                .padding(.trailing)
            
            VStack {
                
                Text(name)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text(category)
                    .multilineTextAlignment(.center)
                
            }
            
        }
        
    }
}

struct AllCocktailsRow_Previews: PreviewProvider {
    static var previews: some View {
        AllCocktailsRow(name: "Margarita", category: "Ordinary Drink", image: "https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg")
    }
}
