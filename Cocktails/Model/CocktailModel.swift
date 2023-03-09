//
//  CocktailModel.swift
//  Cocktails
//
//  Created by Adrián Castilla on 9/3/23.
//

import Foundation

// MARK: - Cocktails
struct Cocktails: Decodable {
    let drinks: [Drink]
}

// MARK: - Drink
struct Drink: Decodable {
    let idDrink, strDrink, strCategory: String
    let strAlcoholic, strGlass, strInstructions: String
    let strDrinkThumb: String
}
